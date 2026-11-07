.class public abstract Lcom/android/org/bouncycastle/util/encoders/UTF8;
.super Ljava/lang/Object;
.source "UTF8.java"


# static fields
.field private static final blacklist firstUnitTable:[S

.field private static final blacklist transitionTable:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    const/16 v0, 0x80

    .line 39
    new-array v1, v0, [S

    sput-object v1, Lcom/android/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    const/16 v1, 0x70

    .line 40
    new-array v2, v1, [B

    sput-object v2, Lcom/android/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    .line 52
    new-array v3, v0, [B

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x1

    .line 53
    invoke-static {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x1f

    const/4 v7, 0x2

    const/16 v8, 0x10

    .line 54
    invoke-static {v3, v8, v5, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x3f

    const/4 v7, 0x3

    const/16 v9, 0x20

    .line 55
    invoke-static {v3, v9, v5, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x40

    const/16 v7, 0x41

    .line 56
    invoke-static {v3, v5, v7, v4}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x5f

    const/4 v7, 0x4

    const/16 v9, 0x42

    .line 57
    invoke-static {v3, v9, v5, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x60

    const/4 v7, 0x5

    .line 58
    invoke-static {v3, v5, v5, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x61

    const/16 v7, 0x6c

    const/4 v9, 0x6

    .line 59
    invoke-static {v3, v5, v7, v9}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x6d

    const/4 v7, 0x7

    .line 60
    invoke-static {v3, v5, v5, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x6e

    const/16 v7, 0x6f

    .line 61
    invoke-static {v3, v5, v7, v9}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v5, 0x8

    .line 62
    invoke-static {v3, v1, v1, v5}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x73

    const/16 v7, 0x9

    const/16 v9, 0x71

    .line 63
    invoke-static {v3, v9, v1, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x74

    const/16 v7, 0xa

    .line 64
    invoke-static {v3, v1, v1, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0x75

    const/16 v7, 0x7f

    .line 65
    invoke-static {v3, v1, v7, v4}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 67
    array-length v1, v2

    sub-int/2addr v1, v6

    const/4 v7, -0x2

    invoke-static {v2, v4, v1, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v1, 0xb

    const/4 v7, -0x1

    .line 68
    invoke-static {v2, v5, v1, v7}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x18

    const/16 v9, 0x1b

    .line 69
    invoke-static {v2, v7, v9, v4}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x28

    const/16 v9, 0x2b

    .line 70
    invoke-static {v2, v7, v9, v8}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x3a

    const/16 v9, 0x3b

    .line 71
    invoke-static {v2, v7, v9, v4}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x48

    const/16 v9, 0x49

    .line 72
    invoke-static {v2, v7, v9, v4}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x59

    const/16 v9, 0x5b

    .line 73
    invoke-static {v2, v7, v9, v8}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v7, 0x68

    .line 74
    invoke-static {v2, v7, v7, v8}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 76
    new-array v2, v1, [B

    fill-array-data v2, :array_bc

    .line 77
    new-array v1, v1, [B

    fill-array-data v1, :array_c6

    :goto_a9
    if-ge v4, v0, :cond_bb

    .line 81
    aget-byte v7, v3, v4

    .line 83
    aget-byte v8, v2, v7

    and-int/2addr v8, v4

    .line 84
    aget-byte v7, v1, v7

    .line 86
    sget-object v9, Lcom/android/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    shl-int/2addr v8, v5

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v9, v4

    add-int/2addr v4, v6

    goto :goto_a9

    :cond_bb
    return-void

    :array_bc
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0xft
        0xft
        0xft
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_c6
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x0t
        0x30t
        0x10t
        0x40t
        0x50t
        0x20t
        0x60t
    .end array-data
.end method

.method private static blacklist fill([BIIB)V
    .registers 4

    :goto_0
    if-gt p1, p2, :cond_7

    .line 46
    aput-byte p3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static blacklist transcodeToUTF16([BII[C)I
    .registers 10

    add-int/2addr p2, p1

    const/4 v0, 0x0

    :goto_2
    if-ge p1, p2, :cond_6b

    add-int/lit8 v1, p1, 0x1

    .line 138
    aget-byte p1, p0, p1

    const/4 v2, -0x1

    if-ltz p1, :cond_17

    .line 141
    array-length v3, p3

    if-lt v0, v3, :cond_f

    return v2

    :cond_f
    add-int/lit8 v2, v0, 0x1

    int-to-char p1, p1

    .line 146
    aput-char p1, p3, v0

    move p1, v1

    move v0, v2

    goto :goto_2

    .line 150
    :cond_17
    sget-object v3, Lcom/android/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    and-int/lit8 p1, p1, 0x7f

    aget-short p1, v3, p1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte p1, p1

    :goto_20
    if-ltz p1, :cond_39

    if-lt v1, p2, :cond_25

    return v2

    :cond_25
    add-int/lit8 v4, v1, 0x1

    .line 161
    aget-byte v1, p0, v1

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v5, v1, 0x3f

    or-int/2addr v3, v5

    .line 163
    sget-object v5, Lcom/android/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    aget-byte p1, v5, p1

    move v1, v4

    goto :goto_20

    :cond_39
    const/4 v4, -0x2

    if-ne p1, v4, :cond_3d

    return v2

    :cond_3d
    const p1, 0xffff

    if-gt v3, p1, :cond_4d

    .line 173
    array-length p1, p3

    if-lt v0, p1, :cond_46

    return v2

    :cond_46
    add-int/lit8 p1, v0, 0x1

    int-to-char v2, v3

    .line 179
    aput-char v2, p3, v0

    move v0, p1

    goto :goto_69

    .line 183
    :cond_4d
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    if-lt v0, p1, :cond_53

    return v2

    :cond_53
    add-int/lit8 p1, v0, 0x1

    ushr-int/lit8 v2, v3, 0xa

    const v4, 0xd7c0

    add-int/2addr v2, v4

    int-to-char v2, v2

    .line 189
    aput-char v2, p3, v0

    add-int/lit8 v0, v0, 0x2

    and-int/lit16 v2, v3, 0x3ff

    const v3, 0xdc00

    or-int/2addr v2, v3

    int-to-char v2, v2

    .line 190
    aput-char v2, p3, p1

    :goto_69
    move p1, v1

    goto :goto_2

    :cond_6b
    return v0
.end method

.method public static blacklist transcodeToUTF16([B[C)I
    .registers 4

    .line 109
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([BII[C)I

    move-result p0

    return p0
.end method
