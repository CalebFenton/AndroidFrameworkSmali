.class public Ljavax/crypto/spec/IvParameterSpec;
.super Ljava/lang/Object;
.source "IvParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "iv"    # [B

    #@0
    .prologue
    .line 53
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    #@5
    .line 52
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .param p1, "iv"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 76
    if-nez p1, :cond_0

    #@6
    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "IV missing"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 79
    :cond_0
    array-length v0, p1

    #@10
    sub-int/2addr v0, p2

    #@11
    if-ge v0, p3, :cond_1

    #@13
    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    .line 81
    const-string/jumbo v1, "IV buffer too short for given offset/length combination"

    #@18
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 83
    :cond_1
    if-gez p3, :cond_2

    #@1e
    .line 84
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@20
    const-string/jumbo v1, "len is negative"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 86
    :cond_2
    new-array v0, p3, [B

    #@29
    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@2b
    .line 87
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@2d
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@30
    .line 75
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method
