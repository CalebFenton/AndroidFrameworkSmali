.class public final Ljava/lang/IntegralToString;
.super Ljava/lang/Object;
.source "IntegralToString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/IntegralToString$1;
    }
.end annotation


# static fields
.field private static final BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final DIGITS:[C

.field private static final MOD_10_TABLE:[C

.field private static final ONES:[C

.field private static final SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

.field private static final SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

.field private static final TENS:[C

.field private static final UPPER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x24

    #@2
    const/16 v1, 0x64

    #@4
    .line 46
    new-instance v0, Ljava/lang/IntegralToString$1;

    #@6
    invoke-direct {v0}, Ljava/lang/IntegralToString$1;-><init>()V

    #@9
    sput-object v0, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    #@b
    .line 61
    new-array v0, v1, [Ljava/lang/String;

    #@d
    sput-object v0, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    #@f
    .line 62
    new-array v0, v1, [Ljava/lang/String;

    #@11
    sput-object v0, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    #@13
    .line 65
    new-array v0, v1, [C

    #@15
    fill-array-data v0, :array_0

    #@18
    sput-object v0, Ljava/lang/IntegralToString;->TENS:[C

    #@1a
    .line 79
    new-array v0, v1, [C

    #@1c
    fill-array-data v0, :array_1

    #@1f
    sput-object v0, Ljava/lang/IntegralToString;->ONES:[C

    #@21
    .line 97
    const/16 v0, 0x10

    #@23
    new-array v0, v0, [C

    #@25
    fill-array-data v0, :array_2

    #@28
    sput-object v0, Ljava/lang/IntegralToString;->MOD_10_TABLE:[C

    #@2a
    .line 104
    new-array v0, v2, [C

    #@2c
    fill-array-data v0, :array_3

    #@2f
    sput-object v0, Ljava/lang/IntegralToString;->DIGITS:[C

    #@31
    .line 111
    new-array v0, v2, [C

    #@33
    fill-array-data v0, :array_4

    #@36
    sput-object v0, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    #@38
    .line 37
    return-void

    #@39
    .line 65
    nop

    #@3a
    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    #@a2
    .line 79
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    #@10a
    .line 97
    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x4s
        0x5s
        0x5s
        0x6s
        0x7s
        0x7s
        0x8s
        0x8s
        0x9s
        0x0s
    .end array-data

    #@11e
    .line 104
    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    #@146
    .line 111
    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static appendByteAsHex(Ljava/lang/StringBuilder;BZ)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B
    .param p2, "upperCase"    # Z

    #@0
    .prologue
    .line 458
    if-eqz p2, :cond_0

    #@2
    sget-object v0, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    #@4
    .line 459
    .local v0, "digits":[C
    :goto_0
    shr-int/lit8 v1, p1, 0x4

    #@6
    and-int/lit8 v1, v1, 0xf

    #@8
    aget-char v1, v0, v1

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    .line 460
    and-int/lit8 v1, p1, 0xf

    #@f
    aget-char v1, v0, v1

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 461
    return-object p0

    #@15
    .line 458
    .end local v0    # "digits":[C
    :cond_0
    sget-object v0, Ljava/lang/IntegralToString;->DIGITS:[C

    #@17
    .restart local v0    # "digits":[C
    goto :goto_0
.end method

.method public static appendInt(Ljava/lang/AbstractStringBuilder;I)V
    .locals 0
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "i"    # I

    #@0
    .prologue
    .line 173
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    #@3
    .line 172
    return-void
.end method

.method public static appendLong(Ljava/lang/AbstractStringBuilder;J)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "l"    # J

    #@0
    .prologue
    .line 307
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;

    #@3
    .line 306
    return-void
.end method

.method public static byteToHexString(BZ)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # B
    .param p1, "upperCase"    # Z

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    .line 465
    if-eqz p1, :cond_0

    #@4
    sget-object v1, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    #@6
    .line 466
    .local v1, "digits":[C
    :goto_0
    new-array v0, v5, [C

    #@8
    .line 467
    .local v0, "buf":[C
    shr-int/lit8 v2, p0, 0x4

    #@a
    and-int/lit8 v2, v2, 0xf

    #@c
    aget-char v2, v1, v2

    #@e
    aput-char v2, v0, v4

    #@10
    .line 468
    and-int/lit8 v2, p0, 0xf

    #@12
    aget-char v2, v1, v2

    #@14
    const/4 v3, 0x1

    #@15
    aput-char v2, v0, v3

    #@17
    .line 469
    new-instance v2, Ljava/lang/String;

    #@19
    invoke-direct {v2, v4, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    #@1c
    return-object v2

    #@1d
    .line 465
    .end local v0    # "buf":[C
    .end local v1    # "digits":[C
    :cond_0
    sget-object v1, Ljava/lang/IntegralToString;->DIGITS:[C

    #@1f
    .restart local v1    # "digits":[C
    goto :goto_0
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "upperCase"    # Z

    #@0
    .prologue
    .line 473
    if-eqz p1, :cond_0

    #@2
    sget-object v4, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    #@4
    .line 474
    .local v4, "digits":[C
    :goto_0
    array-length v5, p0

    #@5
    mul-int/lit8 v5, v5, 0x2

    #@7
    new-array v1, v5, [C

    #@9
    .line 475
    .local v1, "buf":[C
    const/4 v2, 0x0

    #@a
    .line 476
    .local v2, "c":I
    const/4 v5, 0x0

    #@b
    array-length v6, p0

    #@c
    move v3, v2

    #@d
    .end local v2    # "c":I
    .local v3, "c":I
    :goto_1
    if-ge v5, v6, :cond_1

    #@f
    aget-byte v0, p0, v5

    #@11
    .line 477
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    #@13
    .end local v3    # "c":I
    .restart local v2    # "c":I
    shr-int/lit8 v7, v0, 0x4

    #@15
    and-int/lit8 v7, v7, 0xf

    #@17
    aget-char v7, v4, v7

    #@19
    aput-char v7, v1, v3

    #@1b
    .line 478
    add-int/lit8 v3, v2, 0x1

    #@1d
    .end local v2    # "c":I
    .restart local v3    # "c":I
    and-int/lit8 v7, v0, 0xf

    #@1f
    aget-char v7, v4, v7

    #@21
    aput-char v7, v1, v2

    #@23
    .line 476
    add-int/lit8 v5, v5, 0x1

    #@25
    goto :goto_1

    #@26
    .line 473
    .end local v0    # "b":B
    .end local v1    # "buf":[C
    .end local v3    # "c":I
    .end local v4    # "digits":[C
    :cond_0
    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    #@28
    .restart local v4    # "digits":[C
    goto :goto_0

    #@29
    .line 480
    .restart local v1    # "buf":[C
    .restart local v3    # "c":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    #@2b
    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    #@2e
    return-object v5
.end method

.method private static convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;
    .locals 14
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "i"    # I

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v13, 0x2

    #@3
    const/4 v11, 0x1

    #@4
    const/4 v10, 0x0

    #@5
    const/4 v12, 0x0

    #@6
    .line 181
    const/4 v3, 0x0

    #@7
    .line 182
    .local v3, "negative":Z
    const/4 v5, 0x0

    #@8
    .line 183
    .local v5, "quickResult":Ljava/lang/String;
    if-gez p1, :cond_3

    #@a
    .line 184
    const/4 v3, 0x1

    #@b
    .line 185
    neg-int p1, p1

    #@c
    .line 186
    const/16 v7, 0x64

    #@e
    if-ge p1, v7, :cond_0

    #@10
    .line 187
    if-gez p1, :cond_1

    #@12
    .line 189
    const-string/jumbo v5, "-2147483648"

    #@15
    .line 207
    .end local v5    # "quickResult":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v5, :cond_6

    #@17
    .line 208
    if-eqz p0, :cond_5

    #@19
    .line 209
    invoke-virtual {p0, v5}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    #@1c
    .line 210
    return-object v12

    #@1d
    .line 191
    .restart local v5    # "quickResult":Ljava/lang/String;
    :cond_1
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    #@1f
    aget-object v5, v7, p1

    #@21
    .line 192
    .local v5, "quickResult":Ljava/lang/String;
    if-nez v5, :cond_0

    #@23
    .line 193
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NEGATIVE_VALUES:[Ljava/lang/String;

    #@25
    .line 194
    if-ge p1, v8, :cond_2

    #@27
    new-array v8, v13, [C

    #@29
    const/16 v9, 0x2d

    #@2b
    aput-char v9, v8, v10

    #@2d
    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    #@2f
    aget-char v9, v9, p1

    #@31
    aput-char v9, v8, v11

    #@33
    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 193
    :goto_1
    aput-object v5, v7, p1

    #@39
    goto :goto_0

    #@3a
    .line 194
    :cond_2
    const/4 v8, 0x3

    #@3b
    new-array v8, v8, [C

    #@3d
    const/16 v9, 0x2d

    #@3f
    aput-char v9, v8, v10

    #@41
    sget-object v9, Ljava/lang/IntegralToString;->TENS:[C

    #@43
    aget-char v9, v9, p1

    #@45
    aput-char v9, v8, v11

    #@47
    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    #@49
    aget-char v9, v9, p1

    #@4b
    aput-char v9, v8, v13

    #@4d
    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    goto :goto_1

    #@52
    .line 199
    .local v5, "quickResult":Ljava/lang/String;
    :cond_3
    const/16 v7, 0x64

    #@54
    if-ge p1, v7, :cond_0

    #@56
    .line 200
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    #@58
    aget-object v5, v7, p1

    #@5a
    .line 201
    .local v5, "quickResult":Ljava/lang/String;
    if-nez v5, :cond_0

    #@5c
    .line 202
    sget-object v7, Ljava/lang/IntegralToString;->SMALL_NONNEGATIVE_VALUES:[Ljava/lang/String;

    #@5e
    .line 203
    if-ge p1, v8, :cond_4

    #@60
    new-array v8, v11, [C

    #@62
    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    #@64
    aget-char v9, v9, p1

    #@66
    aput-char v9, v8, v10

    #@68
    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    .line 202
    :goto_2
    aput-object v5, v7, p1

    #@6e
    goto :goto_0

    #@6f
    .line 203
    :cond_4
    new-array v8, v13, [C

    #@71
    sget-object v9, Ljava/lang/IntegralToString;->TENS:[C

    #@73
    aget-char v9, v9, p1

    #@75
    aput-char v9, v8, v10

    #@77
    sget-object v9, Ljava/lang/IntegralToString;->ONES:[C

    #@79
    aget-char v9, v9, p1

    #@7b
    aput-char v9, v8, v11

    #@7d
    invoke-static {v8}, Ljava/lang/IntegralToString;->stringOf([C)Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    goto :goto_2

    #@82
    .line 212
    .end local v5    # "quickResult":Ljava/lang/String;
    :cond_5
    return-object v5

    #@83
    .line 215
    :cond_6
    const/16 v1, 0xb

    #@85
    .line 216
    .local v1, "bufLen":I
    if-eqz p0, :cond_7

    #@87
    sget-object v7, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    #@89
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@8c
    move-result-object v0

    #@8d
    check-cast v0, [C

    #@8f
    .line 215
    .local v0, "buf":[C
    :goto_3
    const/16 v2, 0xb

    #@91
    .line 220
    .local v2, "cursor":I
    :goto_4
    const/high16 v7, 0x10000

    #@93
    if-lt p1, v7, :cond_8

    #@95
    .line 222
    int-to-long v8, p1

    #@96
    const-wide/32 v10, 0x51eb851f

    #@99
    mul-long/2addr v8, v10

    #@9a
    const/16 v7, 0x25

    #@9c
    ushr-long/2addr v8, v7

    #@9d
    long-to-int v4, v8

    #@9e
    .line 223
    .local v4, "q":I
    mul-int/lit8 v7, v4, 0x64

    #@a0
    sub-int v6, p1, v7

    #@a2
    .line 224
    .local v6, "r":I
    add-int/lit8 v2, v2, -0x1

    #@a4
    sget-object v7, Ljava/lang/IntegralToString;->ONES:[C

    #@a6
    aget-char v7, v7, v6

    #@a8
    aput-char v7, v0, v2

    #@aa
    .line 225
    add-int/lit8 v2, v2, -0x1

    #@ac
    sget-object v7, Ljava/lang/IntegralToString;->TENS:[C

    #@ae
    aget-char v7, v7, v6

    #@b0
    aput-char v7, v0, v2

    #@b2
    .line 226
    move p1, v4

    #@b3
    goto :goto_4

    #@b4
    .line 216
    .end local v0    # "buf":[C
    .end local v2    # "cursor":I
    .end local v4    # "q":I
    .end local v6    # "r":I
    :cond_7
    new-array v0, v1, [C

    #@b6
    .restart local v0    # "buf":[C
    goto :goto_3

    #@b7
    .line 230
    .restart local v2    # "cursor":I
    :cond_8
    :goto_5
    if-eqz p1, :cond_9

    #@b9
    .line 232
    const v7, 0xcccd

    #@bc
    mul-int/2addr v7, p1

    #@bd
    ushr-int/lit8 v4, v7, 0x13

    #@bf
    .line 233
    .restart local v4    # "q":I
    mul-int/lit8 v7, v4, 0xa

    #@c1
    sub-int v6, p1, v7

    #@c3
    .line 234
    .restart local v6    # "r":I
    add-int/lit8 v2, v2, -0x1

    #@c5
    sget-object v7, Ljava/lang/IntegralToString;->DIGITS:[C

    #@c7
    aget-char v7, v7, v6

    #@c9
    aput-char v7, v0, v2

    #@cb
    .line 235
    move p1, v4

    #@cc
    goto :goto_5

    #@cd
    .line 238
    .end local v4    # "q":I
    .end local v6    # "r":I
    :cond_9
    if-eqz v3, :cond_a

    #@cf
    .line 239
    add-int/lit8 v2, v2, -0x1

    #@d1
    const/16 v7, 0x2d

    #@d3
    aput-char v7, v0, v2

    #@d5
    .line 242
    :cond_a
    if-eqz p0, :cond_b

    #@d7
    .line 243
    rsub-int/lit8 v7, v2, 0xb

    #@d9
    invoke-virtual {p0, v0, v2, v7}, Ljava/lang/AbstractStringBuilder;->append0([CII)V

    #@dc
    .line 244
    return-object v12

    #@dd
    .line 246
    :cond_b
    new-instance v7, Ljava/lang/String;

    #@df
    rsub-int/lit8 v8, v2, 0xb

    #@e1
    invoke-direct {v7, v2, v8, v0}, Ljava/lang/String;-><init>(II[C)V

    #@e4
    return-object v7
.end method

.method private static convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;
    .locals 19
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "n"    # J

    #@0
    .prologue
    .line 315
    move-wide/from16 v0, p1

    #@2
    long-to-int v6, v0

    #@3
    .line 316
    .local v6, "i":I
    int-to-long v14, v6

    #@4
    cmp-long v13, v14, p1

    #@6
    if-nez v13, :cond_0

    #@8
    .line 317
    move-object/from16 v0, p0

    #@a
    invoke-static {v0, v6}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    #@d
    move-result-object v13

    #@e
    return-object v13

    #@f
    .line 320
    :cond_0
    const-wide/16 v14, 0x0

    #@11
    cmp-long v13, p1, v14

    #@13
    if-gez v13, :cond_1

    #@15
    const/4 v10, 0x1

    #@16
    .line 321
    .local v10, "negative":Z
    :goto_0
    if-eqz v10, :cond_3

    #@18
    .line 322
    move-wide/from16 v0, p1

    #@1a
    neg-long v0, v0

    #@1b
    move-wide/from16 p1, v0

    #@1d
    .line 323
    const-wide/16 v14, 0x0

    #@1f
    cmp-long v13, p1, v14

    #@21
    if-gez v13, :cond_3

    #@23
    .line 325
    const-string/jumbo v11, "-9223372036854775808"

    #@26
    .line 326
    .local v11, "quickResult":Ljava/lang/String;
    if-eqz p0, :cond_2

    #@28
    .line 327
    move-object/from16 v0, p0

    #@2a
    invoke-virtual {v0, v11}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    #@2d
    .line 328
    const/4 v13, 0x0

    #@2e
    return-object v13

    #@2f
    .line 320
    .end local v10    # "negative":Z
    .end local v11    # "quickResult":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    #@30
    .restart local v10    # "negative":Z
    goto :goto_0

    #@31
    .line 330
    .restart local v11    # "quickResult":Ljava/lang/String;
    :cond_2
    return-object v11

    #@32
    .line 334
    .end local v11    # "quickResult":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x14

    #@34
    .line 335
    .local v3, "bufLen":I
    if-eqz p0, :cond_4

    #@36
    sget-object v13, Ljava/lang/IntegralToString;->BUFFER:Ljava/lang/ThreadLocal;

    #@38
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, [C

    #@3e
    .line 337
    .local v2, "buf":[C
    :goto_1
    const-wide/32 v14, 0x3b9aca00

    #@41
    rem-long v14, p1, v14

    #@43
    long-to-int v8, v14

    #@44
    .line 338
    .local v8, "low":I
    invoke-static {v2, v3, v8}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    #@47
    move-result v4

    #@48
    .line 341
    .local v4, "cursor":I
    :goto_2
    const/16 v13, 0xb

    #@4a
    if-eq v4, v13, :cond_5

    #@4c
    .line 342
    add-int/lit8 v4, v4, -0x1

    #@4e
    const/16 v13, 0x30

    #@50
    aput-char v13, v2, v4

    #@52
    goto :goto_2

    #@53
    .line 335
    .end local v2    # "buf":[C
    .end local v4    # "cursor":I
    .end local v8    # "low":I
    :cond_4
    new-array v2, v3, [C

    #@55
    .restart local v2    # "buf":[C
    goto :goto_1

    #@56
    .line 350
    .restart local v4    # "cursor":I
    .restart local v8    # "low":I
    :cond_5
    int-to-long v14, v8

    #@57
    sub-long v14, p1, v14

    #@59
    const/16 v13, 0x9

    #@5b
    ushr-long/2addr v14, v13

    #@5c
    const-wide v16, -0x71b831bdc5d16393L    # -7.140265903029408E-240

    #@61
    mul-long p1, v14, v16

    #@63
    .line 358
    const-wide v14, -0x100000000L

    #@68
    and-long v14, v14, p1

    #@6a
    const-wide/16 v16, 0x0

    #@6c
    cmp-long v13, v14, v16

    #@6e
    if-nez v13, :cond_7

    #@70
    .line 359
    move-wide/from16 v0, p1

    #@72
    long-to-int v13, v0

    #@73
    invoke-static {v2, v4, v13}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    #@76
    move-result v4

    #@77
    .line 382
    :goto_3
    if-eqz v10, :cond_6

    #@79
    .line 383
    add-int/lit8 v4, v4, -0x1

    #@7b
    const/16 v13, 0x2d

    #@7d
    aput-char v13, v2, v4

    #@7f
    .line 385
    :cond_6
    if-eqz p0, :cond_9

    #@81
    .line 386
    rsub-int/lit8 v13, v4, 0x14

    #@83
    move-object/from16 v0, p0

    #@85
    invoke-virtual {v0, v2, v4, v13}, Ljava/lang/AbstractStringBuilder;->append0([CII)V

    #@88
    .line 387
    const/4 v13, 0x0

    #@89
    return-object v13

    #@8a
    .line 364
    :cond_7
    move-wide/from16 v0, p1

    #@8c
    long-to-int v7, v0

    #@8d
    .line 365
    .local v7, "lo32":I
    const/16 v13, 0x20

    #@8f
    ushr-long v14, p1, v13

    #@91
    long-to-int v5, v14

    #@92
    .line 368
    .local v5, "hi32":I
    sget-object v13, Ljava/lang/IntegralToString;->MOD_10_TABLE:[C

    #@94
    const v14, 0x19999999

    #@97
    mul-int/2addr v14, v7

    #@98
    ushr-int/lit8 v15, v7, 0x1

    #@9a
    add-int/2addr v14, v15

    #@9b
    ushr-int/lit8 v15, v7, 0x3

    #@9d
    add-int/2addr v14, v15

    #@9e
    ushr-int/lit8 v14, v14, 0x1c

    #@a0
    aget-char v9, v13, v14

    #@a2
    .line 371
    .local v9, "midDigit":I
    shl-int/lit8 v13, v5, 0x2

    #@a4
    sub-int/2addr v9, v13

    #@a5
    .line 372
    if-gez v9, :cond_8

    #@a7
    .line 373
    add-int/lit8 v9, v9, 0xa

    #@a9
    .line 375
    :cond_8
    add-int/lit8 v4, v4, -0x1

    #@ab
    sget-object v13, Ljava/lang/IntegralToString;->DIGITS:[C

    #@ad
    aget-char v13, v13, v9

    #@af
    aput-char v13, v2, v4

    #@b1
    .line 378
    int-to-long v14, v9

    #@b2
    sub-long v14, p1, v14

    #@b4
    const/4 v13, 0x1

    #@b5
    ushr-long/2addr v14, v13

    #@b6
    long-to-int v13, v14

    #@b7
    const v14, -0x33333333

    #@ba
    mul-int v12, v13, v14

    #@bc
    .line 379
    .local v12, "rest":I
    invoke-static {v2, v4, v12}, Ljava/lang/IntegralToString;->intIntoCharArray([CII)I

    #@bf
    move-result v4

    #@c0
    goto :goto_3

    #@c1
    .line 389
    .end local v5    # "hi32":I
    .end local v7    # "lo32":I
    .end local v9    # "midDigit":I
    .end local v12    # "rest":I
    :cond_9
    new-instance v13, Ljava/lang/String;

    #@c3
    rsub-int/lit8 v14, v4, 0x14

    #@c5
    invoke-direct {v13, v4, v14, v2}, Ljava/lang/String;-><init>(II[C)V

    #@c8
    return-object v13
.end method

.method private static intIntoCharArray([CII)I
    .locals 6
    .param p0, "buf"    # [C
    .param p1, "cursor"    # I
    .param p2, "n"    # I

    #@0
    .prologue
    .line 402
    :goto_0
    const/high16 v2, -0x10000

    #@2
    and-int/2addr v2, p2

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 410
    ushr-int/lit8 v2, p2, 0x2

    #@7
    int-to-long v2, v2

    #@8
    const-wide/32 v4, 0x51eb851f

    #@b
    mul-long/2addr v2, v4

    #@c
    const/16 v4, 0x23

    #@e
    ushr-long/2addr v2, v4

    #@f
    long-to-int v0, v2

    #@10
    .line 411
    .local v0, "q":I
    mul-int/lit8 v2, v0, 0x64

    #@12
    sub-int v1, p2, v2

    #@14
    .line 412
    .local v1, "r":I
    add-int/lit8 p1, p1, -0x1

    #@16
    sget-object v2, Ljava/lang/IntegralToString;->ONES:[C

    #@18
    aget-char v2, v2, v1

    #@1a
    aput-char v2, p0, p1

    #@1c
    .line 413
    add-int/lit8 p1, p1, -0x1

    #@1e
    sget-object v2, Ljava/lang/IntegralToString;->TENS:[C

    #@20
    aget-char v2, v2, v1

    #@22
    aput-char v2, p0, p1

    #@24
    .line 414
    move p2, v0

    #@25
    goto :goto_0

    #@26
    .line 418
    .end local v0    # "q":I
    .end local v1    # "r":I
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    #@28
    .line 420
    const v2, 0xcccd

    #@2b
    mul-int/2addr v2, p2

    #@2c
    ushr-int/lit8 v0, v2, 0x13

    #@2e
    .line 421
    .restart local v0    # "q":I
    mul-int/lit8 v2, v0, 0xa

    #@30
    sub-int v1, p2, v2

    #@32
    .line 422
    .restart local v1    # "r":I
    add-int/lit8 p1, p1, -0x1

    #@34
    sget-object v2, Ljava/lang/IntegralToString;->DIGITS:[C

    #@36
    aget-char v2, v2, v1

    #@38
    aput-char v2, p0, p1

    #@3a
    .line 423
    move p2, v0

    #@3b
    goto :goto_1

    #@3c
    .line 425
    .end local v0    # "q":I
    .end local v1    # "r":I
    :cond_1
    return p1
.end method

.method public static intToBinaryString(I)Ljava/lang/String;
    .locals 5
    .param p0, "i"    # I

    #@0
    .prologue
    .line 429
    const/16 v1, 0x20

    #@2
    .line 430
    .local v1, "bufLen":I
    new-array v0, v1, [C

    #@4
    .line 429
    .local v0, "buf":[C
    const/16 v2, 0x20

    #@6
    .line 434
    .local v2, "cursor":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@8
    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    #@a
    and-int/lit8 v4, p0, 0x1

    #@c
    aget-char v3, v3, v4

    #@e
    aput-char v3, v0, v2

    #@10
    .line 435
    ushr-int/lit8 p0, p0, 0x1

    #@12
    if-nez p0, :cond_0

    #@14
    .line 437
    new-instance v3, Ljava/lang/String;

    #@16
    rsub-int/lit8 v4, v2, 0x20

    #@18
    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    #@1b
    return-object v3
.end method

.method public static intToHexString(IZI)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "upperCase"    # Z
    .param p2, "minWidth"    # I

    #@0
    .prologue
    .line 484
    const/16 v1, 0x8

    #@2
    .line 485
    .local v1, "bufLen":I
    new-array v0, v1, [C

    #@4
    .line 484
    .local v0, "buf":[C
    const/16 v2, 0x8

    #@6
    .line 488
    .local v2, "cursor":I
    if-eqz p1, :cond_1

    #@8
    sget-object v3, Ljava/lang/IntegralToString;->UPPER_CASE_DIGITS:[C

    #@a
    .line 490
    .local v3, "digits":[C
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    #@c
    and-int/lit8 v4, p0, 0xf

    #@e
    aget-char v4, v3, v4

    #@10
    aput-char v4, v0, v2

    #@12
    .line 491
    ushr-int/lit8 p0, p0, 0x4

    #@14
    if-nez p0, :cond_0

    #@16
    rsub-int/lit8 v4, v2, 0x8

    #@18
    if-lt v4, p2, :cond_0

    #@1a
    .line 493
    new-instance v4, Ljava/lang/String;

    #@1c
    rsub-int/lit8 v5, v2, 0x8

    #@1e
    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    #@21
    return-object v4

    #@22
    .line 488
    .end local v3    # "digits":[C
    :cond_1
    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    #@24
    .restart local v3    # "digits":[C
    goto :goto_0
.end method

.method public static intToOctalString(I)Ljava/lang/String;
    .locals 5
    .param p0, "i"    # I

    #@0
    .prologue
    .line 514
    const/16 v1, 0xb

    #@2
    .line 515
    .local v1, "bufLen":I
    new-array v0, v1, [C

    #@4
    .line 514
    .local v0, "buf":[C
    const/16 v2, 0xb

    #@6
    .line 519
    .local v2, "cursor":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@8
    sget-object v3, Ljava/lang/IntegralToString;->DIGITS:[C

    #@a
    and-int/lit8 v4, p0, 0x7

    #@c
    aget-char v3, v3, v4

    #@e
    aput-char v3, v0, v2

    #@10
    .line 520
    ushr-int/lit8 p0, p0, 0x3

    #@12
    if-nez p0, :cond_0

    #@14
    .line 522
    new-instance v3, Ljava/lang/String;

    #@16
    rsub-int/lit8 v4, v2, 0xb

    #@18
    invoke-direct {v3, v2, v4, v0}, Ljava/lang/String;-><init>(II[C)V

    #@1b
    return-object v3
.end method

.method public static intToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 166
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Ljava/lang/IntegralToString;->convertInt(Ljava/lang/AbstractStringBuilder;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 125
    const/4 v5, 0x2

    #@1
    if-lt p1, v5, :cond_0

    #@3
    const/16 v5, 0x24

    #@5
    if-le p1, v5, :cond_1

    #@7
    .line 126
    :cond_0
    const/16 p1, 0xa

    #@9
    .line 128
    :cond_1
    const/16 v5, 0xa

    #@b
    if-ne p1, v5, :cond_2

    #@d
    .line 129
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToString(I)Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    return-object v5

    #@12
    .line 138
    :cond_2
    const/4 v3, 0x0

    #@13
    .line 139
    .local v3, "negative":Z
    if-gez p0, :cond_5

    #@15
    .line 140
    const/4 v3, 0x1

    #@16
    .line 145
    :goto_0
    const/16 v5, 0x8

    #@18
    if-ge p1, v5, :cond_6

    #@1a
    const/16 v1, 0x21

    #@1c
    .line 146
    .local v1, "bufLen":I
    :goto_1
    new-array v0, v1, [C

    #@1e
    .line 147
    .local v0, "buf":[C
    move v2, v1

    #@1f
    .line 150
    .local v2, "cursor":I
    :cond_3
    div-int v4, p0, p1

    #@21
    .line 151
    .local v4, "q":I
    add-int/lit8 v2, v2, -0x1

    #@23
    sget-object v5, Ljava/lang/IntegralToString;->DIGITS:[C

    #@25
    mul-int v6, p1, v4

    #@27
    sub-int/2addr v6, p0

    #@28
    aget-char v5, v5, v6

    #@2a
    aput-char v5, v0, v2

    #@2c
    .line 152
    move p0, v4

    #@2d
    .line 153
    if-nez p0, :cond_3

    #@2f
    .line 155
    if-eqz v3, :cond_4

    #@31
    .line 156
    add-int/lit8 v2, v2, -0x1

    #@33
    const/16 v5, 0x2d

    #@35
    aput-char v5, v0, v2

    #@37
    .line 159
    :cond_4
    new-instance v5, Ljava/lang/String;

    #@39
    sub-int v6, v1, v2

    #@3b
    invoke-direct {v5, v2, v6, v0}, Ljava/lang/String;-><init>(II[C)V

    #@3e
    return-object v5

    #@3f
    .line 142
    .end local v0    # "buf":[C
    .end local v1    # "bufLen":I
    .end local v2    # "cursor":I
    .end local v4    # "q":I
    :cond_5
    neg-int p0, p0

    #@40
    goto :goto_0

    #@41
    .line 145
    :cond_6
    const/16 v1, 0xc

    #@43
    .restart local v1    # "bufLen":I
    goto :goto_1
.end method

.method public static longToBinaryString(J)Ljava/lang/String;
    .locals 8
    .param p0, "v"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 441
    long-to-int v3, p0

    #@3
    .line 442
    .local v3, "i":I
    cmp-long v4, p0, v6

    #@5
    if-ltz v4, :cond_0

    #@7
    int-to-long v4, v3

    #@8
    cmp-long v4, v4, p0

    #@a
    if-nez v4, :cond_0

    #@c
    .line 443
    invoke-static {v3}, Ljava/lang/IntegralToString;->intToBinaryString(I)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    return-object v4

    #@11
    .line 446
    :cond_0
    const/16 v1, 0x40

    #@13
    .line 447
    .local v1, "bufLen":I
    new-array v0, v1, [C

    #@15
    .line 446
    .local v0, "buf":[C
    const/16 v2, 0x40

    #@17
    .line 451
    .local v2, "cursor":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@19
    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    #@1b
    long-to-int v5, p0

    #@1c
    and-int/lit8 v5, v5, 0x1

    #@1e
    aget-char v4, v4, v5

    #@20
    aput-char v4, v0, v2

    #@22
    .line 452
    const/4 v4, 0x1

    #@23
    ushr-long/2addr p0, v4

    #@24
    cmp-long v4, p0, v6

    #@26
    if-nez v4, :cond_1

    #@28
    .line 454
    new-instance v4, Ljava/lang/String;

    #@2a
    rsub-int/lit8 v5, v2, 0x40

    #@2c
    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    #@2f
    return-object v4
.end method

.method public static longToHexString(J)Ljava/lang/String;
    .locals 10
    .param p0, "v"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 497
    long-to-int v3, p0

    #@4
    .line 498
    .local v3, "i":I
    cmp-long v4, p0, v8

    #@6
    if-ltz v4, :cond_0

    #@8
    int-to-long v4, v3

    #@9
    cmp-long v4, v4, p0

    #@b
    if-nez v4, :cond_0

    #@d
    .line 499
    invoke-static {v3, v6, v6}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    return-object v4

    #@12
    .line 502
    :cond_0
    const/16 v1, 0x10

    #@14
    .line 503
    .local v1, "bufLen":I
    new-array v0, v1, [C

    #@16
    .line 502
    .local v0, "buf":[C
    const/16 v2, 0x10

    #@18
    .line 507
    .local v2, "cursor":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@1a
    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    #@1c
    long-to-int v5, p0

    #@1d
    and-int/lit8 v5, v5, 0xf

    #@1f
    aget-char v4, v4, v5

    #@21
    aput-char v4, v0, v2

    #@23
    .line 508
    const/4 v4, 0x4

    #@24
    ushr-long/2addr p0, v4

    #@25
    cmp-long v4, p0, v8

    #@27
    if-nez v4, :cond_1

    #@29
    .line 510
    new-instance v4, Ljava/lang/String;

    #@2b
    rsub-int/lit8 v5, v2, 0x10

    #@2d
    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    #@30
    return-object v4
.end method

.method public static longToOctalString(J)Ljava/lang/String;
    .locals 8
    .param p0, "v"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 526
    long-to-int v3, p0

    #@3
    .line 527
    .local v3, "i":I
    cmp-long v4, p0, v6

    #@5
    if-ltz v4, :cond_0

    #@7
    int-to-long v4, v3

    #@8
    cmp-long v4, v4, p0

    #@a
    if-nez v4, :cond_0

    #@c
    .line 528
    invoke-static {v3}, Ljava/lang/IntegralToString;->intToOctalString(I)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    return-object v4

    #@11
    .line 530
    :cond_0
    const/16 v1, 0x16

    #@13
    .line 531
    .local v1, "bufLen":I
    new-array v0, v1, [C

    #@15
    .line 530
    .local v0, "buf":[C
    const/16 v2, 0x16

    #@17
    .line 535
    .local v2, "cursor":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@19
    sget-object v4, Ljava/lang/IntegralToString;->DIGITS:[C

    #@1b
    long-to-int v5, p0

    #@1c
    and-int/lit8 v5, v5, 0x7

    #@1e
    aget-char v4, v4, v5

    #@20
    aput-char v4, v0, v2

    #@22
    .line 536
    const/4 v4, 0x3

    #@23
    ushr-long/2addr p0, v4

    #@24
    cmp-long v4, p0, v6

    #@26
    if-nez v4, :cond_1

    #@28
    .line 538
    new-instance v4, Ljava/lang/String;

    #@2a
    rsub-int/lit8 v5, v2, 0x16

    #@2c
    invoke-direct {v4, v2, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    #@2f
    return-object v4
.end method

.method public static longToString(J)Ljava/lang/String;
    .locals 2
    .param p0, "l"    # J

    #@0
    .prologue
    .line 300
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Ljava/lang/IntegralToString;->convertLong(Ljava/lang/AbstractStringBuilder;J)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static longToString(JI)Ljava/lang/String;
    .locals 12
    .param p0, "v"    # J
    .param p2, "radix"    # I

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 254
    long-to-int v3, p0

    #@3
    .line 255
    .local v3, "i":I
    int-to-long v8, v3

    #@4
    cmp-long v5, v8, p0

    #@6
    if-nez v5, :cond_0

    #@8
    .line 256
    invoke-static {v3, p2}, Ljava/lang/IntegralToString;->intToString(II)Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    return-object v5

    #@d
    .line 259
    :cond_0
    const/4 v5, 0x2

    #@e
    if-lt p2, v5, :cond_1

    #@10
    const/16 v5, 0x24

    #@12
    if-le p2, v5, :cond_2

    #@14
    .line 260
    :cond_1
    const/16 p2, 0xa

    #@16
    .line 262
    :cond_2
    const/16 v5, 0xa

    #@18
    if-ne p2, v5, :cond_3

    #@1a
    .line 263
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    return-object v5

    #@1f
    .line 272
    :cond_3
    const/4 v4, 0x0

    #@20
    .line 273
    .local v4, "negative":Z
    cmp-long v5, p0, v10

    #@22
    if-gez v5, :cond_6

    #@24
    .line 274
    const/4 v4, 0x1

    #@25
    .line 279
    :goto_0
    const/16 v5, 0x8

    #@27
    if-ge p2, v5, :cond_7

    #@29
    const/16 v1, 0x41

    #@2b
    .line 280
    .local v1, "bufLen":I
    :goto_1
    new-array v0, v1, [C

    #@2d
    .line 281
    .local v0, "buf":[C
    move v2, v1

    #@2e
    .line 284
    .local v2, "cursor":I
    :cond_4
    int-to-long v8, p2

    #@2f
    div-long v6, p0, v8

    #@31
    .line 285
    .local v6, "q":J
    add-int/lit8 v2, v2, -0x1

    #@33
    sget-object v5, Ljava/lang/IntegralToString;->DIGITS:[C

    #@35
    int-to-long v8, p2

    #@36
    mul-long/2addr v8, v6

    #@37
    sub-long/2addr v8, p0

    #@38
    long-to-int v8, v8

    #@39
    aget-char v5, v5, v8

    #@3b
    aput-char v5, v0, v2

    #@3d
    .line 286
    move-wide p0, v6

    #@3e
    .line 287
    cmp-long v5, p0, v10

    #@40
    if-nez v5, :cond_4

    #@42
    .line 289
    if-eqz v4, :cond_5

    #@44
    .line 290
    add-int/lit8 v2, v2, -0x1

    #@46
    const/16 v5, 0x2d

    #@48
    aput-char v5, v0, v2

    #@4a
    .line 293
    :cond_5
    new-instance v5, Ljava/lang/String;

    #@4c
    sub-int v8, v1, v2

    #@4e
    invoke-direct {v5, v2, v8, v0}, Ljava/lang/String;-><init>(II[C)V

    #@51
    return-object v5

    #@52
    .line 276
    .end local v0    # "buf":[C
    .end local v1    # "bufLen":I
    .end local v2    # "cursor":I
    .end local v6    # "q":J
    :cond_6
    neg-long p0, p0

    #@53
    goto :goto_0

    #@54
    .line 279
    :cond_7
    const/16 v1, 0x17

    #@56
    .restart local v1    # "bufLen":I
    goto :goto_1
.end method

.method private static varargs stringOf([C)Ljava/lang/String;
    .locals 3
    .param p0, "args"    # [C

    #@0
    .prologue
    .line 548
    new-instance v0, Ljava/lang/String;

    #@2
    array-length v1, p0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v2, v1, p0}, Ljava/lang/String;-><init>(II[C)V

    #@7
    return-object v0
.end method
