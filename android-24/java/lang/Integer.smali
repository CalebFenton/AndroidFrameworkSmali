.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Integer$IntegerCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final BYTES:I = 0x4

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field public static final SIZE:I = 0x20

.field private static final SMALL_NEG_VALUES:[Ljava/lang/String;

.field private static final SMALL_NONNEG_VALUES:[Ljava/lang/String;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final digits:[C

.field private static final serialVersionUID:J = 0x12e2a0a4f7818738L

.field static final sizeTable:[I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x64

    #@2
    const-class v0, Ljava/lang/Integer;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    sput-boolean v0, Ljava/lang/Integer;->-assertionsDisabled:Z

    #@d
    .line 72
    const-class v0, [I

    #@f
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@15
    .line 77
    const/16 v0, 0x24

    #@17
    new-array v0, v0, [C

    #@19
    fill-array-data v0, :array_0

    #@1c
    sput-object v0, Ljava/lang/Integer;->digits:[C

    #@1e
    .line 273
    new-array v0, v1, [Ljava/lang/String;

    #@20
    sput-object v0, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    #@22
    .line 274
    new-array v0, v1, [Ljava/lang/String;

    #@24
    sput-object v0, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    #@26
    .line 276
    new-array v0, v1, [C

    #@28
    fill-array-data v0, :array_1

    #@2b
    sput-object v0, Ljava/lang/Integer;->DigitTens:[C

    #@2d
    .line 289
    new-array v0, v1, [C

    #@2f
    fill-array-data v0, :array_2

    #@32
    sput-object v0, Ljava/lang/Integer;->DigitOnes:[C

    #@34
    .line 408
    const/16 v0, 0xa

    #@36
    new-array v0, v0, [I

    #@38
    fill-array-data v0, :array_3

    #@3b
    sput-object v0, Ljava/lang/Integer;->sizeTable:[I

    #@3d
    .line 53
    return-void

    #@3e
    :cond_0
    const/4 v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 77
    :array_0
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

    #@68
    .line 276
    :array_1
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

    #@d0
    .line 289
    :array_2
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

    #@138
    .line 408
    :array_3
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 689
    iput p1, p0, Ljava/lang/Integer;->value:I

    #@5
    .line 688
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 706
    const/16 v0, 0xa

    #@5
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Ljava/lang/Integer;->value:I

    #@b
    .line 705
    return-void
.end method

.method public static bitCount(I)I
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    const v2, 0x33333333

    #@3
    .line 1194
    ushr-int/lit8 v0, p0, 0x1

    #@5
    const v1, 0x55555555

    #@8
    and-int/2addr v0, v1

    #@9
    sub-int/2addr p0, v0

    #@a
    .line 1195
    and-int v0, p0, v2

    #@c
    ushr-int/lit8 v1, p0, 0x2

    #@e
    and-int/2addr v1, v2

    #@f
    add-int p0, v0, v1

    #@11
    .line 1196
    ushr-int/lit8 v0, p0, 0x4

    #@13
    add-int/2addr v0, p0

    #@14
    const v1, 0xf0f0f0f

    #@17
    and-int p0, v0, v1

    #@19
    .line 1197
    ushr-int/lit8 v0, p0, 0x8

    #@1b
    add-int/2addr p0, v0

    #@1c
    .line 1198
    ushr-int/lit8 v0, p0, 0x10

    #@1e
    add-int/2addr p0, v0

    #@1f
    .line 1199
    and-int/lit8 v0, p0, 0x3f

    #@21
    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 1063
    if-ge p0, p1, :cond_0

    #@2
    const/4 v0, -0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 985
    const/16 v5, 0xa

    #@3
    .line 986
    .local v5, "radix":I
    const/4 v3, 0x0

    #@4
    .line 987
    .local v3, "index":I
    const/4 v4, 0x0

    #@5
    .line 990
    .local v4, "negative":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v7

    #@9
    if-nez v7, :cond_0

    #@b
    .line 991
    new-instance v7, Ljava/lang/NumberFormatException;

    #@d
    const-string/jumbo v8, "Zero length string"

    #@10
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@13
    throw v7

    #@14
    .line 992
    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    .line 994
    .local v2, "firstChar":C
    const/16 v7, 0x2d

    #@1a
    if-ne v2, v7, :cond_5

    #@1c
    .line 995
    const/4 v4, 0x1

    #@1d
    .line 996
    const/4 v3, 0x1

    #@1e
    .line 1001
    :cond_1
    :goto_0
    const-string/jumbo v7, "0x"

    #@21
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@24
    move-result v7

    #@25
    if-nez v7, :cond_2

    #@27
    const-string/jumbo v7, "0X"

    #@2a
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_6

    #@30
    .line 1002
    :cond_2
    add-int/lit8 v3, v3, 0x2

    #@32
    .line 1003
    const/16 v5, 0x10

    #@34
    .line 1014
    :cond_3
    :goto_1
    const-string/jumbo v7, "-"

    #@37
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@3a
    move-result v7

    #@3b
    if-nez v7, :cond_4

    #@3d
    const-string/jumbo v7, "+"

    #@40
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@43
    move-result v7

    #@44
    if-eqz v7, :cond_8

    #@46
    .line 1015
    :cond_4
    new-instance v7, Ljava/lang/NumberFormatException;

    #@48
    const-string/jumbo v8, "Sign character in wrong position"

    #@4b
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v7

    #@4f
    .line 997
    :cond_5
    const/16 v7, 0x2b

    #@51
    if-ne v2, v7, :cond_1

    #@53
    .line 998
    const/4 v3, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1005
    :cond_6
    const-string/jumbo v7, "#"

    #@58
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@5b
    move-result v7

    #@5c
    if-eqz v7, :cond_7

    #@5e
    .line 1006
    add-int/lit8 v3, v3, 0x1

    #@60
    .line 1007
    const/16 v5, 0x10

    #@62
    goto :goto_1

    #@63
    .line 1009
    :cond_7
    const-string/jumbo v7, "0"

    #@66
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@69
    move-result v7

    #@6a
    if-eqz v7, :cond_3

    #@6c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6f
    move-result v7

    #@70
    add-int/lit8 v8, v3, 0x1

    #@72
    if-le v7, v8, :cond_3

    #@74
    .line 1010
    add-int/lit8 v3, v3, 0x1

    #@76
    .line 1011
    const/16 v5, 0x8

    #@78
    goto :goto_1

    #@79
    .line 1018
    :cond_8
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    invoke-static {v7, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@80
    move-result-object v6

    #@81
    .line 1019
    .local v6, "result":Ljava/lang/Integer;
    if-eqz v4, :cond_9

    #@83
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@86
    move-result v7

    #@87
    neg-int v7, v7

    #@88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b
    move-result-object v6

    #@8c
    .line 1028
    :cond_9
    :goto_2
    return-object v6

    #@8d
    .line 1020
    .end local v6    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    #@8e
    .line 1024
    .local v1, "e":Ljava/lang/NumberFormatException;
    if-eqz v4, :cond_a

    #@90
    new-instance v7, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v8, "-"

    #@98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    .line 1026
    .local v0, "constant":Ljava/lang/String;
    :goto_3
    invoke-static {v0, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@ab
    move-result-object v6

    #@ac
    .restart local v6    # "result":Ljava/lang/Integer;
    goto :goto_2

    #@ad
    .line 1025
    .end local v0    # "constant":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/Integer;
    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    goto :goto_3
.end method

.method static getChars(II[C)V
    .locals 6
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    #@0
    .prologue
    .line 376
    move v0, p1

    #@1
    .line 377
    .local v0, "charPos":I
    const/4 v3, 0x0

    #@2
    .line 379
    .local v3, "sign":C
    if-gez p0, :cond_0

    #@4
    .line 380
    const/16 v3, 0x2d

    #@6
    .line 381
    neg-int p0, p0

    #@7
    .line 385
    :cond_0
    :goto_0
    const/high16 v4, 0x10000

    #@9
    if-lt p0, v4, :cond_1

    #@b
    .line 386
    div-int/lit8 v1, p0, 0x64

    #@d
    .line 388
    .local v1, "q":I
    shl-int/lit8 v4, v1, 0x6

    #@f
    shl-int/lit8 v5, v1, 0x5

    #@11
    add-int/2addr v4, v5

    #@12
    shl-int/lit8 v5, v1, 0x2

    #@14
    add-int/2addr v4, v5

    #@15
    sub-int v2, p0, v4

    #@17
    .line 389
    .local v2, "r":I
    move p0, v1

    #@18
    .line 390
    add-int/lit8 v0, v0, -0x1

    #@1a
    sget-object v4, Ljava/lang/Integer;->DigitOnes:[C

    #@1c
    aget-char v4, v4, v2

    #@1e
    aput-char v4, p2, v0

    #@20
    .line 391
    add-int/lit8 v0, v0, -0x1

    #@22
    sget-object v4, Ljava/lang/Integer;->DigitTens:[C

    #@24
    aget-char v4, v4, v2

    #@26
    aput-char v4, p2, v0

    #@28
    goto :goto_0

    #@29
    .line 397
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_1
    const v4, 0xcccd

    #@2c
    mul-int/2addr v4, p0

    #@2d
    ushr-int/lit8 v1, v4, 0x13

    #@2f
    .line 398
    .restart local v1    # "q":I
    shl-int/lit8 v4, v1, 0x3

    #@31
    shl-int/lit8 v5, v1, 0x1

    #@33
    add-int/2addr v4, v5

    #@34
    sub-int v2, p0, v4

    #@36
    .line 399
    .restart local v2    # "r":I
    add-int/lit8 v0, v0, -0x1

    #@38
    sget-object v4, Ljava/lang/Integer;->digits:[C

    #@3a
    aget-char v4, v4, v2

    #@3c
    aput-char v4, p2, v0

    #@3e
    .line 400
    move p0, v1

    #@3f
    .line 401
    if-nez v1, :cond_1

    #@41
    .line 403
    if-eqz v3, :cond_2

    #@43
    .line 404
    add-int/lit8 v0, v0, -0x1

    #@45
    aput-char v3, p2, v0

    #@47
    .line 374
    :cond_2
    return-void
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "nm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 841
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 2
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 886
    invoke-static {p0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    .line 887
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v0

    #@b
    .end local v0    # "result":Ljava/lang/Integer;
    :cond_0
    return-object v0
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 927
    const/4 v3, 0x0

    #@1
    .line 929
    .local v3, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v3

    #@5
    .line 933
    .end local v3    # "v":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    #@7
    .line 935
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 931
    .restart local v3    # "v":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@d
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    #@e
    .line 930
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@f
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@10
    .line 936
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "v":Ljava/lang/String;
    :catch_2
    move-exception v2

    #@11
    .line 939
    :cond_0
    return-object p1
.end method

.method public static hashCode(I)I
    .locals 0
    .param p0, "value"    # I

    #@0
    .prologue
    .line 792
    return p0
.end method

.method public static highestOneBit(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1100
    shr-int/lit8 v0, p0, 0x1

    #@2
    or-int/2addr p0, v0

    #@3
    .line 1101
    shr-int/lit8 v0, p0, 0x2

    #@5
    or-int/2addr p0, v0

    #@6
    .line 1102
    shr-int/lit8 v0, p0, 0x4

    #@8
    or-int/2addr p0, v0

    #@9
    .line 1103
    shr-int/lit8 v0, p0, 0x8

    #@b
    or-int/2addr p0, v0

    #@c
    .line 1104
    shr-int/lit8 v0, p0, 0x10

    #@e
    or-int/2addr p0, v0

    #@f
    .line 1105
    ushr-int/lit8 v0, p0, 0x1

    #@11
    sub-int v0, p0, v0

    #@13
    return v0
.end method

.method public static lowestOneBit(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1122
    neg-int v0, p0

    #@1
    and-int/2addr v0, p0

    #@2
    return v0
.end method

.method public static max(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 1317
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static min(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 1331
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static numberOfLeadingZeros(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1147
    if-nez p0, :cond_0

    #@2
    .line 1148
    const/16 v1, 0x20

    #@4
    return v1

    #@5
    .line 1149
    :cond_0
    const/4 v0, 0x1

    #@6
    .line 1150
    .local v0, "n":I
    ushr-int/lit8 v1, p0, 0x10

    #@8
    if-nez v1, :cond_1

    #@a
    const/16 v0, 0x11

    #@c
    shl-int/lit8 p0, p0, 0x10

    #@e
    .line 1151
    :cond_1
    ushr-int/lit8 v1, p0, 0x18

    #@10
    if-nez v1, :cond_2

    #@12
    add-int/lit8 v0, v0, 0x8

    #@14
    shl-int/lit8 p0, p0, 0x8

    #@16
    .line 1152
    :cond_2
    ushr-int/lit8 v1, p0, 0x1c

    #@18
    if-nez v1, :cond_3

    #@1a
    add-int/lit8 v0, v0, 0x4

    #@1c
    shl-int/lit8 p0, p0, 0x4

    #@1e
    .line 1153
    :cond_3
    ushr-int/lit8 v1, p0, 0x1e

    #@20
    if-nez v1, :cond_4

    #@22
    add-int/lit8 v0, v0, 0x2

    #@24
    shl-int/lit8 p0, p0, 0x2

    #@26
    .line 1154
    :cond_4
    ushr-int/lit8 v1, p0, 0x1f

    #@28
    sub-int/2addr v0, v1

    #@29
    .line 1155
    return v0
.end method

.method public static numberOfTrailingZeros(I)I
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1174
    if-nez p0, :cond_0

    #@2
    const/16 v2, 0x20

    #@4
    return v2

    #@5
    .line 1175
    :cond_0
    const/16 v0, 0x1f

    #@7
    .line 1176
    .local v0, "n":I
    shl-int/lit8 v1, p0, 0x10

    #@9
    .local v1, "y":I
    if-eqz v1, :cond_1

    #@b
    const/16 v0, 0xf

    #@d
    move p0, v1

    #@e
    .line 1177
    :cond_1
    shl-int/lit8 v1, p0, 0x8

    #@10
    if-eqz v1, :cond_2

    #@12
    add-int/lit8 v0, v0, -0x8

    #@14
    move p0, v1

    #@15
    .line 1178
    :cond_2
    shl-int/lit8 v1, p0, 0x4

    #@17
    if-eqz v1, :cond_3

    #@19
    add-int/lit8 v0, v0, -0x4

    #@1b
    move p0, v1

    #@1c
    .line 1179
    :cond_3
    shl-int/lit8 v1, p0, 0x2

    #@1e
    if-eqz v1, :cond_4

    #@20
    add-int/lit8 v0, v0, -0x2

    #@22
    move p0, v1

    #@23
    .line 1180
    :cond_4
    shl-int/lit8 v2, p0, 0x1

    #@25
    ushr-int/lit8 v2, v2, 0x1f

    #@27
    sub-int v2, v0, v2

    #@29
    return v2
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 556
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 482
    if-nez p0, :cond_0

    #@3
    .line 483
    new-instance v9, Ljava/lang/NumberFormatException;

    #@5
    const-string/jumbo v10, "null"

    #@8
    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@b
    throw v9

    #@c
    .line 486
    :cond_0
    const/4 v9, 0x2

    #@d
    if-ge p1, v9, :cond_1

    #@f
    .line 487
    new-instance v9, Ljava/lang/NumberFormatException;

    #@11
    new-instance v10, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v11, "radix "

    #@19
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v10

    #@21
    .line 488
    const-string/jumbo v11, " less than Character.MIN_RADIX"

    #@24
    .line 487
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v10

    #@28
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v9

    #@30
    .line 491
    :cond_1
    const/16 v9, 0x24

    #@32
    if-le p1, v9, :cond_2

    #@34
    .line 492
    new-instance v9, Ljava/lang/NumberFormatException;

    #@36
    new-instance v10, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v11, "radix "

    #@3e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v10

    #@46
    .line 493
    const-string/jumbo v11, " greater than Character.MAX_RADIX"

    #@49
    .line 492
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v10

    #@4d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v10

    #@51
    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@54
    throw v9

    #@55
    .line 496
    :cond_2
    const/4 v8, 0x0

    #@56
    .line 497
    .local v8, "result":I
    const/4 v7, 0x0

    #@57
    .line 498
    .local v7, "negative":Z
    const/4 v2, 0x0

    #@58
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5b
    move-result v4

    #@5c
    .line 499
    .local v4, "len":I
    const v5, -0x7fffffff

    #@5f
    .line 503
    .local v5, "limit":I
    if-lez v4, :cond_a

    #@61
    .line 504
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@64
    move-result v1

    #@65
    .line 505
    .local v1, "firstChar":C
    const/16 v9, 0x30

    #@67
    if-ge v1, v9, :cond_6

    #@69
    .line 506
    const/16 v9, 0x2d

    #@6b
    if-ne v1, v9, :cond_4

    #@6d
    .line 507
    const/4 v7, 0x1

    #@6e
    .line 508
    const/high16 v5, -0x80000000

    #@70
    .line 512
    :cond_3
    const/4 v9, 0x1

    #@71
    if-ne v4, v9, :cond_5

    #@73
    .line 513
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@76
    move-result-object v9

    #@77
    throw v9

    #@78
    .line 509
    :cond_4
    const/16 v9, 0x2b

    #@7a
    if-eq v1, v9, :cond_3

    #@7c
    .line 510
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@7f
    move-result-object v9

    #@80
    throw v9

    #@81
    .line 514
    :cond_5
    const/4 v2, 0x1

    #@82
    .line 516
    :cond_6
    div-int v6, v5, p1

    #@84
    .local v6, "multmin":I
    move v3, v2

    #@85
    .line 517
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_b

    #@87
    .line 519
    add-int/lit8 v2, v3, 0x1

    #@89
    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@8c
    move-result v9

    #@8d
    invoke-static {v9, p1}, Ljava/lang/Character;->digit(CI)I

    #@90
    move-result v0

    #@91
    .line 520
    .local v0, "digit":I
    if-gez v0, :cond_7

    #@93
    .line 521
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@96
    move-result-object v9

    #@97
    throw v9

    #@98
    .line 523
    :cond_7
    if-ge v8, v6, :cond_8

    #@9a
    .line 524
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@9d
    move-result-object v9

    #@9e
    throw v9

    #@9f
    .line 526
    :cond_8
    mul-int/2addr v8, p1

    #@a0
    .line 527
    add-int v9, v5, v0

    #@a2
    if-ge v8, v9, :cond_9

    #@a4
    .line 528
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@a7
    move-result-object v9

    #@a8
    throw v9

    #@a9
    .line 530
    :cond_9
    sub-int/2addr v8, v0

    #@aa
    move v3, v2

    #@ab
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@ac
    .line 533
    .end local v0    # "digit":I
    .end local v1    # "firstChar":C
    .end local v3    # "i":I
    .end local v6    # "multmin":I
    .restart local v2    # "i":I
    :cond_a
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@af
    move-result-object v9

    #@b0
    throw v9

    #@b1
    .line 535
    .end local v2    # "i":I
    .restart local v1    # "firstChar":C
    .restart local v3    # "i":I
    .restart local v6    # "multmin":I
    :cond_b
    if-eqz v7, :cond_c

    #@b3
    .end local v8    # "result":I
    :goto_1
    return v8

    #@b4
    .restart local v8    # "result":I
    :cond_c
    neg-int v8, v8

    #@b5
    goto :goto_1
.end method

.method public static reverse(I)I
    .locals 6
    .param p0, "i"    # I

    #@0
    .prologue
    const v5, 0x55555555

    #@3
    const v4, 0x33333333

    #@6
    const v3, 0xf0f0f0f

    #@9
    const v2, 0xff00

    #@c
    .line 1257
    and-int v0, p0, v5

    #@e
    shl-int/lit8 v0, v0, 0x1

    #@10
    ushr-int/lit8 v1, p0, 0x1

    #@12
    and-int/2addr v1, v5

    #@13
    or-int p0, v0, v1

    #@15
    .line 1258
    and-int v0, p0, v4

    #@17
    shl-int/lit8 v0, v0, 0x2

    #@19
    ushr-int/lit8 v1, p0, 0x2

    #@1b
    and-int/2addr v1, v4

    #@1c
    or-int p0, v0, v1

    #@1e
    .line 1259
    and-int v0, p0, v3

    #@20
    shl-int/lit8 v0, v0, 0x4

    #@22
    ushr-int/lit8 v1, p0, 0x4

    #@24
    and-int/2addr v1, v3

    #@25
    or-int p0, v0, v1

    #@27
    .line 1260
    shl-int/lit8 v0, p0, 0x18

    #@29
    and-int v1, p0, v2

    #@2b
    shl-int/lit8 v1, v1, 0x8

    #@2d
    or-int/2addr v0, v1

    #@2e
    .line 1261
    ushr-int/lit8 v1, p0, 0x8

    #@30
    and-int/2addr v1, v2

    #@31
    .line 1260
    or-int/2addr v0, v1

    #@32
    .line 1261
    ushr-int/lit8 v1, p0, 0x18

    #@34
    .line 1260
    or-int p0, v0, v1

    #@36
    .line 1262
    return p0
.end method

.method public static reverseBytes(I)I
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1287
    ushr-int/lit8 v0, p0, 0x18

    #@2
    .line 1288
    shr-int/lit8 v1, p0, 0x8

    #@4
    const v2, 0xff00

    #@7
    and-int/2addr v1, v2

    #@8
    .line 1287
    or-int/2addr v0, v1

    #@9
    .line 1289
    shl-int/lit8 v1, p0, 0x8

    #@b
    const/high16 v2, 0xff0000

    #@d
    and-int/2addr v1, v2

    #@e
    .line 1287
    or-int/2addr v0, v1

    #@f
    .line 1290
    shl-int/lit8 v1, p0, 0x18

    #@11
    .line 1287
    or-int/2addr v0, v1

    #@12
    return v0
.end method

.method public static rotateLeft(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "distance"    # I

    #@0
    .prologue
    .line 1221
    shl-int v0, p0, p1

    #@2
    neg-int v1, p1

    #@3
    ushr-int v1, p0, v1

    #@5
    or-int/2addr v0, v1

    #@6
    return v0
.end method

.method public static rotateRight(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "distance"    # I

    #@0
    .prologue
    .line 1243
    ushr-int v0, p0, p1

    #@2
    neg-int v1, p1

    #@3
    shl-int v1, p0, v1

    #@5
    or-int/2addr v0, v1

    #@6
    return v0
.end method

.method public static signum(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1275
    shr-int/lit8 v0, p0, 0x1f

    #@2
    neg-int v1, p0

    #@3
    ushr-int/lit8 v1, v1, 0x1f

    #@5
    or-int/2addr v0, v1

    #@6
    return v0
.end method

.method static stringSize(I)I
    .locals 2
    .param p0, "x"    # I

    #@0
    .prologue
    .line 413
    const/4 v0, 0x0

    #@1
    .line 414
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/lang/Integer;->sizeTable:[I

    #@3
    aget v1, v1, v0

    #@5
    if-gt p0, v1, :cond_0

    #@7
    .line 415
    add-int/lit8 v1, v0, 0x1

    #@9
    return v1

    #@a
    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static sum(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 1303
    add-int v0, p0, p1

    #@2
    return v0
.end method

.method public static toBinaryString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 254
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 197
    const/4 v0, 0x4

    #@1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toOctalString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 229
    const/4 v0, 0x3

    #@1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 11
    .param p0, "i"    # I

    #@0
    .prologue
    const/16 v10, 0x2d

    #@2
    const/16 v8, 0xa

    #@4
    const/4 v9, 0x2

    #@5
    const/4 v6, 0x1

    #@6
    const/4 v7, 0x0

    #@7
    .line 332
    const/high16 v5, -0x80000000

    #@9
    if-ne p0, v5, :cond_0

    #@b
    .line 333
    const-string/jumbo v5, "-2147483648"

    #@e
    return-object v5

    #@f
    .line 336
    :cond_0
    if-gez p0, :cond_2

    #@11
    move v1, v6

    #@12
    .line 337
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_4

    #@14
    const/16 v5, -0x64

    #@16
    if-le p0, v5, :cond_3

    #@18
    :goto_1
    move v3, v6

    #@19
    .line 338
    .local v3, "small":Z
    :goto_2
    if-eqz v3, :cond_9

    #@1b
    .line 339
    if-eqz v1, :cond_5

    #@1d
    sget-object v4, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    #@1f
    .line 341
    .local v4, "smallValues":[Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_7

    #@21
    .line 342
    neg-int p0, p0

    #@22
    .line 343
    aget-object v5, v4, p0

    #@24
    if-nez v5, :cond_1

    #@26
    .line 345
    if-ge p0, v8, :cond_6

    #@28
    new-instance v5, Ljava/lang/String;

    #@2a
    new-array v8, v9, [C

    #@2c
    aput-char v10, v8, v7

    #@2e
    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    #@30
    aget-char v7, v7, p0

    #@32
    aput-char v7, v8, v6

    #@34
    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    #@37
    .line 344
    :goto_4
    aput-object v5, v4, p0

    #@39
    .line 355
    :cond_1
    :goto_5
    aget-object v5, v4, p0

    #@3b
    return-object v5

    #@3c
    .end local v1    # "negative":Z
    .end local v3    # "small":Z
    .end local v4    # "smallValues":[Ljava/lang/String;
    :cond_2
    move v1, v7

    #@3d
    .line 336
    goto :goto_0

    #@3e
    .restart local v1    # "negative":Z
    :cond_3
    move v3, v7

    #@3f
    .line 337
    goto :goto_2

    #@40
    :cond_4
    const/16 v5, 0x64

    #@42
    if-ge p0, v5, :cond_3

    #@44
    goto :goto_1

    #@45
    .line 339
    .restart local v3    # "small":Z
    :cond_5
    sget-object v4, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    #@47
    .restart local v4    # "smallValues":[Ljava/lang/String;
    goto :goto_3

    #@48
    .line 346
    :cond_6
    new-instance v5, Ljava/lang/String;

    #@4a
    const/4 v8, 0x3

    #@4b
    new-array v8, v8, [C

    #@4d
    aput-char v10, v8, v7

    #@4f
    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    #@51
    aget-char v7, v7, p0

    #@53
    aput-char v7, v8, v6

    #@55
    sget-object v6, Ljava/lang/Integer;->DigitOnes:[C

    #@57
    aget-char v6, v6, p0

    #@59
    aput-char v6, v8, v9

    #@5b
    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    #@5e
    goto :goto_4

    #@5f
    .line 349
    :cond_7
    aget-object v5, v4, p0

    #@61
    if-nez v5, :cond_1

    #@63
    .line 351
    if-ge p0, v8, :cond_8

    #@65
    new-instance v5, Ljava/lang/String;

    #@67
    new-array v6, v6, [C

    #@69
    sget-object v8, Ljava/lang/Integer;->DigitOnes:[C

    #@6b
    aget-char v8, v8, p0

    #@6d
    aput-char v8, v6, v7

    #@6f
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    #@72
    .line 350
    :goto_6
    aput-object v5, v4, p0

    #@74
    goto :goto_5

    #@75
    .line 352
    :cond_8
    new-instance v5, Ljava/lang/String;

    #@77
    new-array v8, v9, [C

    #@79
    sget-object v9, Ljava/lang/Integer;->DigitTens:[C

    #@7b
    aget-char v9, v9, p0

    #@7d
    aput-char v9, v8, v7

    #@7f
    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    #@81
    aget-char v7, v7, p0

    #@83
    aput-char v7, v8, v6

    #@85
    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    #@88
    goto :goto_6

    #@89
    .line 358
    .end local v4    # "smallValues":[Ljava/lang/String;
    :cond_9
    if-eqz v1, :cond_a

    #@8b
    neg-int v5, p0

    #@8c
    invoke-static {v5}, Ljava/lang/Integer;->stringSize(I)I

    #@8f
    move-result v5

    #@90
    add-int/lit8 v2, v5, 0x1

    #@92
    .line 359
    .local v2, "size":I
    :goto_7
    new-array v0, v2, [C

    #@94
    .line 360
    .local v0, "buf":[C
    invoke-static {p0, v2, v0}, Ljava/lang/Integer;->getChars(II[C)V

    #@97
    .line 362
    new-instance v5, Ljava/lang/String;

    #@99
    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    #@9c
    return-object v5

    #@9d
    .line 358
    .end local v0    # "buf":[C
    .end local v2    # "size":I
    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->stringSize(I)I

    #@a0
    move-result v2

    #@a1
    goto :goto_7
.end method

.method public static toString(II)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "radix"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 132
    const/4 v5, 0x2

    #@2
    if-lt p1, v5, :cond_0

    #@4
    const/16 v5, 0x24

    #@6
    if-le p1, v5, :cond_1

    #@8
    .line 133
    :cond_0
    const/16 p1, 0xa

    #@a
    .line 136
    :cond_1
    const/16 v5, 0xa

    #@c
    if-ne p1, v5, :cond_2

    #@e
    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    return-object v5

    #@13
    .line 140
    :cond_2
    const/16 v5, 0x21

    #@15
    new-array v0, v5, [C

    #@17
    .line 141
    .local v0, "buf":[C
    if-gez p0, :cond_3

    #@19
    const/4 v3, 0x1

    #@1a
    .line 142
    .local v3, "negative":Z
    :cond_3
    const/16 v1, 0x20

    #@1c
    .line 144
    .local v1, "charPos":I
    if-nez v3, :cond_6

    #@1e
    .line 145
    neg-int p0, p0

    #@1f
    move v2, v1

    #@20
    .line 148
    .end local v1    # "charPos":I
    .local v2, "charPos":I
    :goto_0
    neg-int v5, p1

    #@21
    if-gt p0, v5, :cond_4

    #@23
    .line 149
    div-int v4, p0, p1

    #@25
    .line 150
    .local v4, "q":I
    add-int/lit8 v1, v2, -0x1

    #@27
    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    sget-object v5, Ljava/lang/Integer;->digits:[C

    #@29
    mul-int v6, p1, v4

    #@2b
    sub-int/2addr v6, p0

    #@2c
    aget-char v5, v5, v6

    #@2e
    aput-char v5, v0, v2

    #@30
    .line 151
    move p0, v4

    #@31
    move v2, v1

    #@32
    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    goto :goto_0

    #@33
    .line 153
    .end local v4    # "q":I
    :cond_4
    sget-object v5, Ljava/lang/Integer;->digits:[C

    #@35
    neg-int v6, p0

    #@36
    aget-char v5, v5, v6

    #@38
    aput-char v5, v0, v2

    #@3a
    .line 155
    if-eqz v3, :cond_5

    #@3c
    .line 156
    add-int/lit8 v1, v2, -0x1

    #@3e
    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    const/16 v5, 0x2d

    #@40
    aput-char v5, v0, v1

    #@42
    .line 159
    :goto_1
    new-instance v5, Ljava/lang/String;

    #@44
    rsub-int/lit8 v6, v1, 0x21

    #@46
    invoke-direct {v5, v0, v1, v6}, Ljava/lang/String;-><init>([CII)V

    #@49
    return-object v5

    #@4a
    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    :cond_5
    move v1, v2

    #@4b
    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    goto :goto_1

    #@4c
    :cond_6
    move v2, v1

    #@4d
    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    goto :goto_0
.end method

.method private static toUnsignedString(II)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "shift"    # I

    #@0
    .prologue
    .line 261
    const/16 v4, 0x20

    #@2
    new-array v0, v4, [C

    #@4
    .line 262
    .local v0, "buf":[C
    const/16 v1, 0x20

    #@6
    .line 263
    .local v1, "charPos":I
    const/4 v4, 0x1

    #@7
    shl-int v3, v4, p1

    #@9
    .line 264
    .local v3, "radix":I
    add-int/lit8 v2, v3, -0x1

    #@b
    .line 266
    .local v2, "mask":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@d
    sget-object v4, Ljava/lang/Integer;->digits:[C

    #@f
    and-int v5, p0, v2

    #@11
    aget-char v4, v4, v5

    #@13
    aput-char v4, v0, v1

    #@15
    .line 267
    ushr-int/2addr p0, p1

    #@16
    .line 268
    if-nez p0, :cond_0

    #@18
    .line 270
    new-instance v4, Ljava/lang/String;

    #@1a
    rsub-int/lit8 v5, v1, 0x20

    #@1c
    invoke-direct {v4, v0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    #@1f
    return-object v4
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 668
    sget-boolean v0, Ljava/lang/Integer;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    sget v0, Ljava/lang/Integer$IntegerCache;->high:I

    #@6
    const/16 v1, 0x7f

    #@8
    if-lt v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0

    #@15
    .line 669
    :cond_1
    const/16 v0, -0x80

    #@17
    if-lt p0, v0, :cond_2

    #@19
    sget v0, Ljava/lang/Integer$IntegerCache;->high:I

    #@1b
    if-gt p0, v0, :cond_2

    #@1d
    .line 670
    sget-object v0, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    #@1f
    add-int/lit16 v1, p0, 0x80

    #@21
    aget-object v0, v0, v1

    #@23
    return-object v0

    #@24
    .line 671
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    #@26
    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    #@29
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 611
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 585
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    #@0
    .prologue
    .line 714
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method public compareTo(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "anotherInteger"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 1045
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    iget v1, p1, Ljava/lang/Integer;->value:I

    #@4
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherInteger"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1044
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "anotherInteger":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 754
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    int-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 806
    instance-of v1, p1, Ljava/lang/Integer;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 807
    iget v1, p0, Ljava/lang/Integer;->value:I

    #@7
    check-cast p1, Ljava/lang/Integer;

    #@9
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v2

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0

    #@11
    .line 809
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 746
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    int-to-float v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 779
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 730
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 738
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    #@0
    .prologue
    .line 722
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 768
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
