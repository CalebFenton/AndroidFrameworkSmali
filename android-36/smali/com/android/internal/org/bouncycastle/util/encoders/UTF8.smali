.class public Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;
.super Ljava/lang/Object;
.source "UTF8.java"


# static fields
.field private static final blacklist C_CR1:B = 0x1t

.field private static final blacklist C_CR2:B = 0x2t

.field private static final blacklist C_CR3:B = 0x3t

.field private static final blacklist C_ILL:B = 0x0t

.field private static final blacklist C_L2A:B = 0x4t

.field private static final blacklist C_L3A:B = 0x5t

.field private static final blacklist C_L3B:B = 0x6t

.field private static final blacklist C_L3C:B = 0x7t

.field private static final blacklist C_L4A:B = 0x8t

.field private static final blacklist C_L4B:B = 0x9t

.field private static final blacklist C_L4C:B = 0xat

.field private static final blacklist S_CS1:B = 0x0t

.field private static final blacklist S_CS2:B = 0x10t

.field private static final blacklist S_CS3:B = 0x20t

.field private static final blacklist S_END:B = -0x1t

.field private static final blacklist S_ERR:B = -0x2t

.field private static final blacklist S_P3A:B = 0x30t

.field private static final blacklist S_P3B:B = 0x40t

.field private static final blacklist S_P4A:B = 0x50t

.field private static final blacklist S_P4B:B = 0x60t

.field private static final blacklist firstUnitTable:[S

.field private static final blacklist transitionTable:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 39
    const/16 v0, 0x80

    new-array v1, v0, [S

    sput-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    .line 40
    const/16 v1, 0x70

    new-array v2, v1, [B

    sput-object v2, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    .line 52
    new-array v2, v0, [B

    .line 53
    .local v2, "categories":[B
    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 54
    const/16 v4, 0x1f

    const/4 v6, 0x2

    const/16 v7, 0x10

    invoke-static {v2, v7, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 55
    const/16 v4, 0x3f

    const/4 v6, 0x3

    const/16 v8, 0x20

    invoke-static {v2, v8, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 56
    const/16 v4, 0x40

    const/16 v6, 0x41

    invoke-static {v2, v4, v6, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 57
    const/16 v4, 0x5f

    const/4 v6, 0x4

    const/16 v8, 0x42

    invoke-static {v2, v8, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 58
    const/16 v4, 0x60

    const/4 v6, 0x5

    invoke-static {v2, v4, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 59
    const/16 v4, 0x61

    const/16 v6, 0x6c

    const/4 v8, 0x6

    invoke-static {v2, v4, v6, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 60
    const/16 v4, 0x6d

    const/4 v6, 0x7

    invoke-static {v2, v4, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 61
    const/16 v4, 0x6e

    const/16 v6, 0x6f

    invoke-static {v2, v4, v6, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 62
    const/16 v4, 0x8

    invoke-static {v2, v1, v1, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 63
    const/16 v1, 0x73

    const/16 v6, 0x9

    const/16 v8, 0x71

    invoke-static {v2, v8, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 64
    const/16 v1, 0x74

    const/16 v6, 0xa

    invoke-static {v2, v1, v1, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 65
    const/16 v1, 0x75

    const/16 v6, 0x7f

    invoke-static {v2, v1, v6, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 67
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    sget-object v6, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    array-length v6, v6

    sub-int/2addr v6, v5

    const/4 v5, -0x2

    invoke-static {v1, v3, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 68
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/4 v5, -0x1

    const/16 v6, 0xb

    invoke-static {v1, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 69
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v4, 0x18

    const/16 v5, 0x1b

    invoke-static {v1, v4, v5, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 70
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v4, 0x28

    const/16 v5, 0x2b

    invoke-static {v1, v4, v5, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 71
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v4, 0x3a

    const/16 v5, 0x3b

    invoke-static {v1, v4, v5, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 72
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v4, 0x48

    const/16 v5, 0x49

    invoke-static {v1, v4, v5, v3}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 73
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x59

    const/16 v4, 0x5b

    invoke-static {v1, v3, v4, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 74
    sget-object v1, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x68

    invoke-static {v1, v3, v3, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    .line 76
    new-array v1, v6, [B

    fill-array-data v1, :array_d2

    .line 77
    .local v1, "firstUnitMasks":[B
    new-array v3, v6, [B

    fill-array-data v3, :array_dc

    .line 79
    .local v3, "firstUnitTransitions":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_bc
    if-ge v4, v0, :cond_d0

    .line 81
    aget-byte v5, v2, v4

    .line 83
    .local v5, "category":B
    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    .line 84
    .local v6, "codePoint":I
    aget-byte v7, v3, v5

    .line 86
    .local v7, "state":B
    sget-object v8, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    shl-int/lit8 v9, v6, 0x8

    or-int/2addr v9, v7

    int-to-short v9, v9

    aput-short v9, v8, v4

    .line 79
    .end local v5    # "category":B
    .end local v6    # "codePoint":I
    .end local v7    # "state":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 88
    .end local v1    # "firstUnitMasks":[B
    .end local v2    # "categories":[B
    .end local v3    # "firstUnitTransitions":[B
    .end local v4    # "i":I
    :cond_d0
    return-void

    nop

    :array_d2
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

    :array_dc
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

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fill([BIIB)V
    .registers 5
    .param p0, "table"    # [B
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "b"    # B

    .line 44
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_8

    .line 46
    aput-byte p3, p0, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "i":I
    :cond_8
    return-void
.end method

.method public static blacklist transcodeToUTF16([BII[C)I
    .registers 15
    .param p0, "utf8"    # [B
    .param p1, "utf8Off"    # I
    .param p2, "utf8Length"    # I
    .param p3, "utf16"    # [C

    .line 133
    move v0, p1

    .local v0, "i":I
    const/4 v1, 0x0

    .line 134
    .local v1, "j":I
    add-int v2, p1, p2

    .line 136
    .local v2, "maxI":I
    :goto_4
    if-ge v0, v2, :cond_70

    .line 138
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-byte v0, p0, v0

    .line 139
    .local v0, "codeUnit":B
    const/4 v4, -0x1

    if-ltz v0, :cond_19

    .line 141
    array-length v5, p3

    if-lt v1, v5, :cond_11

    .line 143
    return v4

    .line 146
    :cond_11
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .local v4, "j":I
    int-to-char v5, v0

    aput-char v5, p3, v1

    .line 147
    move v0, v3

    move v1, v4

    goto :goto_4

    .line 150
    .end local v4    # "j":I
    .restart local v1    # "j":I
    :cond_19
    sget-object v5, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    and-int/lit8 v6, v0, 0x7f

    aget-short v5, v5, v6

    .line 151
    .local v5, "first":S
    ushr-int/lit8 v6, v5, 0x8

    .line 152
    .local v6, "codePoint":I
    int-to-byte v7, v5

    move v10, v3

    move v3, v0

    move v0, v10

    .line 154
    .local v0, "i":I
    .local v3, "codeUnit":B
    .local v7, "state":B
    :goto_25
    if-ltz v7, :cond_3f

    .line 156
    if-lt v0, v2, :cond_2a

    .line 158
    return v4

    .line 161
    :cond_2a
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "i":I
    .local v8, "i":I
    aget-byte v3, p0, v0

    .line 162
    shl-int/lit8 v0, v6, 0x6

    and-int/lit8 v9, v3, 0x3f

    or-int v6, v0, v9

    .line 163
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    and-int/lit16 v9, v3, 0xff

    ushr-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v7

    aget-byte v7, v0, v9

    move v0, v8

    goto :goto_25

    .line 166
    .end local v8    # "i":I
    .restart local v0    # "i":I
    :cond_3f
    const/4 v8, -0x2

    if-ne v7, v8, :cond_43

    .line 168
    return v4

    .line 171
    :cond_43
    const v8, 0xffff

    if-gt v6, v8, :cond_53

    .line 173
    array-length v8, p3

    if-lt v1, v8, :cond_4c

    .line 175
    return v4

    .line 179
    :cond_4c
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .restart local v4    # "j":I
    int-to-char v8, v6

    aput-char v8, p3, v1

    move v1, v4

    goto :goto_6f

    .line 183
    .end local v4    # "j":I
    .restart local v1    # "j":I
    :cond_53
    array-length v8, p3

    add-int/lit8 v8, v8, -0x1

    if-lt v1, v8, :cond_59

    .line 185
    return v4

    .line 189
    :cond_59
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v8, v6, 0xa

    const v9, 0xd7c0

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p3, v1

    .line 190
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "j":I
    .restart local v1    # "j":I
    and-int/lit16 v8, v6, 0x3ff

    const v9, 0xdc00

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p3, v4

    .line 192
    .end local v3    # "codeUnit":B
    .end local v5    # "first":S
    .end local v6    # "codePoint":I
    .end local v7    # "state":B
    :goto_6f
    goto :goto_4

    .line 194
    :cond_70
    return v1
.end method

.method public static blacklist transcodeToUTF16([B[C)I
    .registers 4
    .param p0, "utf8"    # [B
    .param p1, "utf16"    # [C

    .line 109
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([BII[C)I

    move-result v0

    return v0
.end method
