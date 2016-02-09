.class public Ljavax/crypto/spec/DESedeKeySpec;
.super Ljava/lang/Object;
.source "DESedeKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_EDE_KEY_LEN:I = 0x18


# instance fields
.field private final key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v1, 0x18

    #@3
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 47
    if-nez p1, :cond_0

    #@8
    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "key == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 50
    :cond_0
    array-length v0, p1

    #@12
    if-ge v0, v1, :cond_1

    #@14
    .line 51
    new-instance v0, Ljava/security/InvalidKeyException;

    #@16
    invoke-direct {v0}, Ljava/security/InvalidKeyException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 53
    :cond_1
    new-array v0, v1, [B

    #@1c
    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    #@1e
    .line 54
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    #@20
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@23
    .line 46
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x18

    #@2
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 73
    if-nez p1, :cond_0

    #@7
    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v1, "key == null"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 76
    :cond_0
    array-length v0, p1

    #@11
    sub-int/2addr v0, p2

    #@12
    if-ge v0, v2, :cond_1

    #@14
    .line 77
    new-instance v0, Ljava/security/InvalidKeyException;

    #@16
    invoke-direct {v0}, Ljava/security/InvalidKeyException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 79
    :cond_1
    new-array v0, v2, [B

    #@1c
    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    #@1e
    .line 80
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    #@20
    const/4 v1, 0x0

    #@21
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@24
    .line 72
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .locals 4
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x18

    #@2
    .line 109
    array-length v2, p0

    #@3
    sub-int/2addr v2, p1

    #@4
    if-ge v2, v3, :cond_0

    #@6
    .line 110
    new-instance v2, Ljava/security/InvalidKeyException;

    #@8
    invoke-direct {v2}, Ljava/security/InvalidKeyException;-><init>()V

    #@b
    throw v2

    #@c
    .line 112
    :cond_0
    move v1, p1

    #@d
    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p1, 0x18

    #@f
    if-ge v1, v2, :cond_2

    #@11
    .line 113
    aget-byte v0, p0, v1

    #@13
    .line 114
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x1

    #@15
    and-int/lit8 v3, v0, 0x2

    #@17
    shr-int/lit8 v3, v3, 0x1

    #@19
    add-int/2addr v2, v3

    #@1a
    and-int/lit8 v3, v0, 0x4

    #@1c
    shr-int/lit8 v3, v3, 0x2

    #@1e
    add-int/2addr v2, v3

    #@1f
    .line 115
    and-int/lit8 v3, v0, 0x8

    #@21
    shr-int/lit8 v3, v3, 0x3

    #@23
    .line 114
    add-int/2addr v2, v3

    #@24
    .line 115
    and-int/lit8 v3, v0, 0x10

    #@26
    shr-int/lit8 v3, v3, 0x4

    #@28
    .line 114
    add-int/2addr v2, v3

    #@29
    .line 115
    and-int/lit8 v3, v0, 0x20

    #@2b
    shr-int/lit8 v3, v3, 0x5

    #@2d
    .line 114
    add-int/2addr v2, v3

    #@2e
    .line 116
    and-int/lit8 v3, v0, 0x40

    #@30
    shr-int/lit8 v3, v3, 0x6

    #@32
    .line 114
    add-int/2addr v2, v3

    #@33
    and-int/lit8 v2, v2, 0x1

    #@35
    .line 116
    and-int/lit16 v3, v0, 0x80

    #@37
    shr-int/lit8 v3, v3, 0x7

    #@39
    .line 114
    if-ne v2, v3, :cond_1

    #@3b
    .line 117
    const/4 v2, 0x0

    #@3c
    return v2

    #@3d
    .line 112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 120
    .end local v0    # "b":I
    :cond_2
    const/4 v2, 0x1

    #@41
    return v2
.end method


# virtual methods
.method public getKey()[B
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x18

    #@2
    const/4 v2, 0x0

    #@3
    .line 89
    new-array v0, v3, [B

    #@5
    .line 90
    .local v0, "result":[B
    iget-object v1, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    #@7
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@a
    .line 91
    return-object v0
.end method
