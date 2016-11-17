.class public Ljavax/crypto/spec/GCMParameterSpec;
.super Ljava/lang/Object;
.source "GCMParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B

.field private tLen:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "tLen"    # I
    .param p2, "src"    # [B

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    if-nez p2, :cond_0

    #@5
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "src array is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 88
    :cond_0
    array-length v0, p2

    #@f
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, p1, p2, v1, v0}, Ljavax/crypto/spec/GCMParameterSpec;->init(I[BII)V

    #@13
    .line 83
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0
    .param p1, "tLen"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/GCMParameterSpec;->init(I[BII)V

    #@6
    .line 107
    return-void
.end method

.method private init(I[BII)V
    .locals 3
    .param p1, "tLen"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    if-gez p1, :cond_0

    #@3
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 117
    const-string/jumbo v1, "Length argument is negative"

    #@8
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 119
    :cond_0
    iput p1, p0, Ljavax/crypto/spec/GCMParameterSpec;->tLen:I

    #@e
    .line 122
    if-eqz p2, :cond_1

    #@10
    if-gez p4, :cond_2

    #@12
    .line 124
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Invalid buffer arguments"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 122
    :cond_2
    if-ltz p3, :cond_1

    #@1d
    .line 123
    add-int v0, p4, p3

    #@1f
    array-length v1, p2

    #@20
    if-gt v0, v1, :cond_1

    #@22
    .line 127
    new-array v0, p4, [B

    #@24
    iput-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    #@26
    .line 128
    iget-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    #@28
    invoke-static {p2, p3, v0, v2, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2b
    .line 114
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public getTLen()I
    .locals 1

    #@0
    .prologue
    .line 137
    iget v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->tLen:I

    #@2
    return v0
.end method
