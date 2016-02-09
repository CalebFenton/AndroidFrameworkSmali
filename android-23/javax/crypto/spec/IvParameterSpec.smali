.class public Ljavax/crypto/spec/IvParameterSpec;
.super Ljava/lang/Object;
.source "IvParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "iv"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    if-nez p1, :cond_0

    #@6
    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "iv == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 47
    :cond_0
    array-length v0, p1

    #@10
    new-array v0, v0, [B

    #@12
    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@14
    .line 48
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@16
    array-length v1, p1

    #@17
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 43
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "iv"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    if-eqz p1, :cond_0

    #@5
    array-length v0, p1

    #@6
    sub-int/2addr v0, p2

    #@7
    if-ge v0, p3, :cond_1

    #@9
    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v0

    #@f
    .line 67
    :cond_1
    array-length v0, p1

    #@10
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@13
    .line 68
    new-array v0, p3, [B

    #@15
    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@17
    .line 69
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 63
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 78
    iget-object v1, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 79
    .local v0, "res":[B
    iget-object v1, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@8
    iget-object v2, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 80
    return-object v0
.end method
