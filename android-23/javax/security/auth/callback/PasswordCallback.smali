.class public Ljavax/security/auth/callback/PasswordCallback;
.super Ljava/lang/Object;
.source "PasswordCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f7780e27139c5e6L


# instance fields
.field echoOn:Z

.field private inputPassword:[C

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "echoOn"    # Z

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    invoke-direct {p0, p1}, Ljavax/security/auth/callback/PasswordCallback;->setPrompt(Ljava/lang/String;)V

    #@6
    .line 54
    iput-boolean p2, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    #@8
    .line 52
    return-void
.end method

.method private setPrompt(Ljava/lang/String;)V
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid prompt"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 41
    :cond_1
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    #@13
    .line 37
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 2

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 118
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@a
    .line 116
    :cond_0
    return-void
.end method

.method public getPassword()[C
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 105
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 106
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@8
    array-length v1, v1

    #@9
    new-array v0, v1, [C

    #@b
    .line 107
    .local v0, "tmp":[C
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@d
    array-length v2, v0

    #@e
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@11
    .line 108
    return-object v0

    #@12
    .line 110
    .end local v0    # "tmp":[C
    :cond_0
    return-object v2
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isEchoOn()Z
    .locals 1

    #@0
    .prologue
    .line 74
    iget-boolean v0, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    #@2
    return v0
.end method

.method public setPassword([C)V
    .locals 3
    .param p1, "password"    # [C

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 87
    if-nez p1, :cond_0

    #@3
    .line 88
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@5
    .line 86
    :goto_0
    return-void

    #@6
    .line 90
    :cond_0
    array-length v0, p1

    #@7
    new-array v0, v0, [C

    #@9
    iput-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@b
    .line 91
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@d
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@f
    array-length v1, v1

    #@10
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@13
    goto :goto_0
.end method
