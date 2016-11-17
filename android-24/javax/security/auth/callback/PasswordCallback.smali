.class public Ljavax/security/auth/callback/PasswordCallback;
.super Ljava/lang/Object;
.source "PasswordCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f7780e27139c5e6L


# instance fields
.field private echoOn:Z

.field private inputPassword:[C

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "echoOn"    # Z

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v0

    #@11
    .line 74
    :cond_1
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    #@13
    .line 75
    iput-boolean p2, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    #@15
    .line 70
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 3

    #@0
    .prologue
    .line 137
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 138
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 139
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@c
    const/16 v2, 0x20

    #@e
    aput-char v2, v1, v0

    #@10
    .line 138
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 136
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getPassword()[C
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [C

    #@e
    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isEchoOn()Z
    .locals 1

    #@0
    .prologue
    .line 99
    iget-boolean v0, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    #@2
    return v0
.end method

.method public setPassword([C)V
    .locals 1
    .param p1, "password"    # [C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 115
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    #@5
    .line 114
    return-void

    #@6
    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [C

    #@c
    goto :goto_0
.end method
