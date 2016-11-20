.class public Lorg/apache/harmony/security/PrivateKeyImpl;
.super Ljava/lang/Object;
.source "PrivateKeyImpl.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x6bebab423b256247L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private encoding:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iput-object p1, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->algorithm:Ljava/lang/String;

    #@5
    .line 37
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 51
    iget-object v1, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 52
    .local v0, "toReturn":[B
    iget-object v1, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    #@8
    iget-object v2, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 54
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "PKCS#8"

    #@3
    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->algorithm:Ljava/lang/String;

    #@2
    .line 57
    return-void
.end method

.method public setEncoding([B)V
    .locals 3
    .param p1, "encoding"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 62
    array-length v0, p1

    #@2
    new-array v0, v0, [B

    #@4
    iput-object v0, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    #@6
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/PrivateKeyImpl;->encoding:[B

    #@8
    array-length v1, p1

    #@9
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 61
    return-void
.end method
