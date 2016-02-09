.class public Ljavax/crypto/spec/PBEParameterSpec;
.super Ljava/lang/Object;
.source "PBEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 3
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 47
    if-nez p1, :cond_0

    #@6
    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "salt == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 50
    :cond_0
    array-length v0, p1

    #@10
    new-array v0, v0, [B

    #@12
    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    #@14
    .line 51
    iget-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    #@16
    array-length v1, p1

    #@17
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1a
    .line 52
    iput p2, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    #@1c
    .line 46
    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    #@2
    return v0
.end method

.method public getSalt()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 61
    iget-object v1, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    #@3
    array-length v1, v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 62
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    #@8
    iget-object v2, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    #@a
    array-length v2, v2

    #@b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e
    .line 63
    return-object v0
.end method
