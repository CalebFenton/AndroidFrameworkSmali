.class public Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 10
    .param p1, "H"    # [B

    #@0
    .prologue
    const/16 v9, 0x20

    #@2
    const/16 v8, 0x10

    #@4
    const/16 v6, 0x8

    #@6
    const/4 v5, 0x0

    #@7
    const/4 v7, 0x1

    #@8
    .line 13
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@a
    if-nez v3, :cond_1

    #@c
    .line 15
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@e
    const/4 v4, 0x4

    #@f
    filled-new-array {v9, v8, v4}, [I

    #@12
    move-result-object v4

    #@13
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    check-cast v3, [[[I

    #@19
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@1b
    .line 22
    :cond_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    #@21
    .line 26
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@23
    aget-object v3, v3, v7

    #@25
    aget-object v3, v3, v6

    #@27
    invoke-static {p1, v3}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asInts([B[I)V

    #@2a
    .line 28
    const/4 v1, 0x4

    #@2b
    .local v1, "j":I
    :goto_0
    if-lt v1, v7, :cond_2

    #@2d
    .line 30
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@2f
    aget-object v3, v3, v7

    #@31
    add-int v4, v1, v1

    #@33
    aget-object v3, v3, v4

    #@35
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@37
    aget-object v4, v4, v7

    #@39
    aget-object v4, v4, v1

    #@3b
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    #@3e
    .line 28
    shr-int/lit8 v1, v1, 0x1

    #@40
    goto :goto_0

    #@41
    .line 17
    .end local v1    # "j":I
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    #@43
    invoke-static {v3, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_0

    #@49
    .line 19
    return-void

    #@4a
    .line 33
    .restart local v1    # "j":I
    :cond_2
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@4c
    aget-object v3, v3, v7

    #@4e
    aget-object v3, v3, v7

    #@50
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@52
    aget-object v4, v4, v5

    #@54
    aget-object v4, v4, v6

    #@56
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    #@59
    .line 35
    const/4 v1, 0x4

    #@5a
    :goto_1
    if-lt v1, v7, :cond_3

    #@5c
    .line 37
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@5e
    aget-object v3, v3, v5

    #@60
    add-int v4, v1, v1

    #@62
    aget-object v3, v3, v4

    #@64
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@66
    aget-object v4, v4, v5

    #@68
    aget-object v4, v4, v1

    #@6a
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    #@6d
    .line 35
    shr-int/lit8 v1, v1, 0x1

    #@6f
    goto :goto_1

    #@70
    .line 40
    :cond_3
    const/4 v0, 0x0

    #@71
    .line 43
    .local v0, "i":I
    :cond_4
    const/4 v1, 0x2

    #@72
    :goto_2
    if-ge v1, v8, :cond_6

    #@74
    .line 45
    const/4 v2, 0x1

    #@75
    .local v2, "k":I
    :goto_3
    if-ge v2, v1, :cond_5

    #@77
    .line 47
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@79
    aget-object v3, v3, v0

    #@7b
    aget-object v3, v3, v1

    #@7d
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@7f
    aget-object v4, v4, v0

    #@81
    aget-object v4, v4, v2

    #@83
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@85
    aget-object v5, v5, v0

    #@87
    add-int v6, v1, v2

    #@89
    aget-object v5, v5, v6

    #@8b
    invoke-static {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([I[I[I)V

    #@8e
    .line 45
    add-int/lit8 v2, v2, 0x1

    #@90
    goto :goto_3

    #@91
    .line 43
    :cond_5
    add-int/2addr v1, v1

    #@92
    goto :goto_2

    #@93
    .line 51
    .end local v2    # "k":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@95
    if-ne v0, v9, :cond_7

    #@97
    .line 53
    return-void

    #@98
    .line 56
    :cond_7
    if-le v0, v7, :cond_4

    #@9a
    .line 59
    const/16 v1, 0x8

    #@9c
    :goto_4
    if-lez v1, :cond_4

    #@9e
    .line 61
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@a0
    add-int/lit8 v4, v0, -0x2

    #@a2
    aget-object v3, v3, v4

    #@a4
    aget-object v3, v3, v1

    #@a6
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@a8
    aget-object v4, v4, v0

    #@aa
    aget-object v4, v4, v1

    #@ac
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I[I)V

    #@af
    .line 59
    shr-int/lit8 v1, v1, 0x1

    #@b1
    goto :goto_4
.end method

.method public multiplyH([B)V
    .locals 9
    .param p1, "x"    # [B

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 71
    const/4 v3, 0x4

    #@5
    new-array v2, v3, [I

    #@7
    .line 72
    .local v2, "z":[I
    const/16 v0, 0xf

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 75
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@d
    add-int v4, v0, v0

    #@f
    aget-object v3, v3, v4

    #@11
    aget-byte v4, p1, v0

    #@13
    and-int/lit8 v4, v4, 0xf

    #@15
    aget-object v1, v3, v4

    #@17
    .line 76
    .local v1, "m":[I
    aget v3, v2, v5

    #@19
    aget v4, v1, v5

    #@1b
    xor-int/2addr v3, v4

    #@1c
    aput v3, v2, v5

    #@1e
    .line 77
    aget v3, v2, v6

    #@20
    aget v4, v1, v6

    #@22
    xor-int/2addr v3, v4

    #@23
    aput v3, v2, v6

    #@25
    .line 78
    aget v3, v2, v7

    #@27
    aget v4, v1, v7

    #@29
    xor-int/2addr v3, v4

    #@2a
    aput v3, v2, v7

    #@2c
    .line 79
    aget v3, v2, v8

    #@2e
    aget v4, v1, v8

    #@30
    xor-int/2addr v3, v4

    #@31
    aput v3, v2, v8

    #@33
    .line 81
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    #@35
    add-int v4, v0, v0

    #@37
    add-int/lit8 v4, v4, 0x1

    #@39
    aget-object v3, v3, v4

    #@3b
    aget-byte v4, p1, v0

    #@3d
    and-int/lit16 v4, v4, 0xf0

    #@3f
    ushr-int/lit8 v4, v4, 0x4

    #@41
    aget-object v1, v3, v4

    #@43
    .line 82
    aget v3, v2, v5

    #@45
    aget v4, v1, v5

    #@47
    xor-int/2addr v3, v4

    #@48
    aput v3, v2, v5

    #@4a
    .line 83
    aget v3, v2, v6

    #@4c
    aget v4, v1, v6

    #@4e
    xor-int/2addr v3, v4

    #@4f
    aput v3, v2, v6

    #@51
    .line 84
    aget v3, v2, v7

    #@53
    aget v4, v1, v7

    #@55
    xor-int/2addr v3, v4

    #@56
    aput v3, v2, v7

    #@58
    .line 85
    aget v3, v2, v8

    #@5a
    aget v4, v1, v8

    #@5c
    xor-int/2addr v3, v4

    #@5d
    aput v3, v2, v8

    #@5f
    .line 72
    add-int/lit8 v0, v0, -0x1

    #@61
    goto :goto_0

    #@62
    .line 88
    .end local v1    # "m":[I
    :cond_0
    invoke-static {v2, p1, v5}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian([I[BI)V

    #@65
    .line 67
    return-void
.end method
