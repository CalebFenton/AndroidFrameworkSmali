.class public Lorg/apache/http/auth/NTUserPrincipal;
.super Ljava/lang/Object;
.source "NTUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final domain:Ljava/lang/String;

.field private final ntname:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 59
    if-nez p2, :cond_0

    #@6
    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "User name may not be null"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 62
    :cond_0
    iput-object p2, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    #@11
    .line 63
    if-eqz p1, :cond_1

    #@13
    .line 64
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@15
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@1b
    .line 68
    :goto_0
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_2

    #@1f
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@21
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@24
    move-result v1

    #@25
    if-lez v1, :cond_2

    #@27
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    .line 70
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 71
    const/16 v1, 0x2f

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 72
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    #@41
    .line 57
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    #@42
    .line 66
    :cond_1
    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@44
    goto :goto_0

    #@45
    .line 75
    :cond_2
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    #@47
    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    #@49
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 101
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 102
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    return v4

    #@8
    .line 103
    :cond_1
    instance-of v1, p1, Lorg/apache/http/auth/NTUserPrincipal;

    #@a
    if-eqz v1, :cond_2

    #@c
    move-object v0, p1

    #@d
    .line 104
    check-cast v0, Lorg/apache/http/auth/NTUserPrincipal;

    #@f
    .line 105
    .local v0, "that":Lorg/apache/http/auth/NTUserPrincipal;
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    #@11
    iget-object v2, v0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    #@13
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 106
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@1b
    iget-object v2, v0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@1d
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 105
    if-eqz v1, :cond_2

    #@23
    .line 107
    return v4

    #@24
    .line 110
    .end local v0    # "that":Lorg/apache/http/auth/NTUserPrincipal;
    :cond_2
    return v3
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 93
    const/16 v0, 0x11

    #@2
    .line 94
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 95
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    #@a
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 96
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    #@2
    return-object v0
.end method
