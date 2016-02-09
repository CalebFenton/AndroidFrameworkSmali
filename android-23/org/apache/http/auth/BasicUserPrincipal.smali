.class public final Lorg/apache/http/auth/BasicUserPrincipal;
.super Ljava/lang/Object;
.source "BasicUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    if-nez p1, :cond_0

    #@5
    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "User name may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 58
    :cond_0
    iput-object p1, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    #@10
    .line 53
    return-void
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
    .line 74
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 75
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    return v4

    #@8
    .line 76
    :cond_1
    instance-of v1, p1, Lorg/apache/http/auth/BasicUserPrincipal;

    #@a
    if-eqz v1, :cond_2

    #@c
    move-object v0, p1

    #@d
    .line 77
    check-cast v0, Lorg/apache/http/auth/BasicUserPrincipal;

    #@f
    .line 78
    .local v0, "that":Lorg/apache/http/auth/BasicUserPrincipal;
    iget-object v1, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    #@11
    iget-object v2, v0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    #@13
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 79
    return v4

    #@1a
    .line 82
    .end local v0    # "that":Lorg/apache/http/auth/BasicUserPrincipal;
    :cond_2
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 67
    const/16 v0, 0x11

    #@2
    .line 68
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 69
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 88
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[principal: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 89
    iget-object v1, p0, Lorg/apache/http/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 90
    const-string/jumbo v1, "]"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method
