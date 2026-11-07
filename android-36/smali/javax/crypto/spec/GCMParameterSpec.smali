.class public Ljavax/crypto/spec/GCMParameterSpec;
.super Ljava/lang/Object;
.source "GCMParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private greylist-max-o iv:[B

.field private greylist-max-o tLen:I


# direct methods
.method public constructor whitelist test-api <init>(I[B)V
    .registers 5
    .param p1, "tLen"    # I
    .param p2, "src"    # [B

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p2, :cond_b

    .line 88
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Ljavax/crypto/spec/GCMParameterSpec;->init(I[BII)V

    .line 89
    return-void

    .line 85
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src array is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(I[BII)V
    .registers 5
    .param p1, "tLen"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/GCMParameterSpec;->init(I[BII)V

    .line 109
    return-void
.end method

.method private greylist-max-o init(I[BII)V
    .registers 7
    .param p1, "tLen"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 115
    if-ltz p1, :cond_21

    .line 119
    iput p1, p0, Ljavax/crypto/spec/GCMParameterSpec;->tLen:I

    .line 122
    if-eqz p2, :cond_19

    if-ltz p4, :cond_19

    if-ltz p3, :cond_19

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_19

    .line 127
    new-array v0, p4, [B

    iput-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    .line 128
    iget-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-void

    .line 124
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid buffer arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length argument is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getIV()[B
    .registers 2

    .line 147
    iget-object v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist test-api getTLen()I
    .registers 2

    .line 137
    iget v0, p0, Ljavax/crypto/spec/GCMParameterSpec;->tLen:I

    return v0
.end method
