.class public Ljavax/crypto/spec/IvParameterSpec;
.super Ljava/lang/Object;
.source "IvParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private greylist-max-o iv:[B


# direct methods
.method public constructor whitelist test-api <init>([B)V
    .registers 4
    .param p1, "iv"    # [B

    .line 53
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 54
    return-void
.end method

.method public constructor whitelist test-api <init>([BII)V
    .registers 6
    .param p1, "iv"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_30

    .line 79
    if-ltz p2, :cond_28

    .line 82
    if-ltz p3, :cond_20

    .line 85
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_18

    .line 89
    new-array v0, p3, [B

    iput-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    .line 90
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    return-void

    .line 86
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV buffer too short for given offset/length combination"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_20
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_28
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "offset is negative"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getIV()[B
    .registers 2

    .line 100
    iget-object v0, p0, Ljavax/crypto/spec/IvParameterSpec;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
