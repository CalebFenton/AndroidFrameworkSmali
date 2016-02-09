.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field private static final NTZ_TABLE:[B

.field public static final SIZE:I = 0x20

.field private static final SMALL_VALUES:[Ljava/lang/Integer;

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

.field private static final serialVersionUID:J = 0x12e2a0a4f7818738L


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 65
    const/16 v1, 0x40

    #@2
    new-array v1, v1, [B

    #@4
    fill-array-data v1, :array_0

    #@7
    sput-object v1, Ljava/lang/Integer;->NTZ_TABLE:[B

    #@9
    .line 77
    const-class v1, [I

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v1

    #@f
    .line 76
    sput-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@11
    .line 748
    const/16 v1, 0x100

    #@13
    new-array v1, v1, [Ljava/lang/Integer;

    #@15
    sput-object v1, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    #@17
    .line 751
    const/16 v0, -0x80

    #@19
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    #@1b
    if-ge v0, v1, :cond_0

    #@1d
    .line 752
    sget-object v1, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    #@1f
    add-int/lit16 v2, v0, 0x80

    #@21
    new-instance v3, Ljava/lang/Integer;

    #@23
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    #@26
    aput-object v3, v1, v2

    #@28
    .line 751
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 33
    :cond_0
    return-void

    #@2c
    .line 65
    :array_0
    .array-data 1
        0x20t
        0x0t
        0x1t
        0xct
        0x2t
        0x6t
        -0x1t
        0xdt
        0x3t
        -0x1t
        0x7t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xet
        0xat
        0x4t
        -0x1t
        -0x1t
        0x8t
        -0x1t
        -0x1t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x15t
        0x1bt
        0xft
        0x1ft
        0xbt
        0x5t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x9t
        -0x1t
        -0x1t
        0x18t
        -0x1t
        -0x1t
        0x14t
        0x1at
        0x1et
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x17t
        -0x1t
        0x13t
        0x1dt
        -0x1t
        0x16t
        0x12t
        0x1ct
        0x11t
        0x10t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 89
    iput p1, p0, Ljava/lang/Integer;->value:I

    #@5
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    #@7
    .line 101
    return-void
.end method

.method public static bitCount(I)I
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    const v2, 0x33333333

    #@3
    .line 642
    shr-int/lit8 v0, p0, 0x1

    #@5
    const v1, 0x55555555

    #@8
    and-int/2addr v0, v1

    #@9
    sub-int/2addr p0, v0

    #@a
    .line 643
    and-int v0, p0, v2

    #@c
    shr-int/lit8 v1, p0, 0x2

    #@e
    and-int/2addr v1, v2

    #@f
    add-int p0, v0, v1

    #@11
    .line 644
    shr-int/lit8 v0, p0, 0x4

    #@13
    add-int/2addr v0, p0

    #@14
    const v1, 0xf0f0f0f

    #@17
    and-int p0, v0, v1

    #@19
    .line 645
    shr-int/lit8 v0, p0, 0x8

    #@1b
    add-int/2addr p0, v0

    #@1c
    .line 646
    shr-int/lit8 v0, p0, 0x10

    #@1e
    add-int/2addr p0, v0

    #@1f
    .line 647
    and-int/lit8 v0, p0, 0x3f

    #@21
    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    #@0
    .prologue
    .line 134
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
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 157
    .local v3, "length":I
    if-nez v3, :cond_0

    #@7
    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@a
    move-result-object v6

    #@b
    throw v6

    #@c
    .line 160
    :cond_0
    const/4 v2, 0x0

    #@d
    .line 161
    .local v2, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v1

    #@11
    .line 162
    .local v1, "firstDigit":C
    const/16 v6, 0x2d

    #@13
    if-ne v1, v6, :cond_2

    #@15
    const/4 v4, 0x1

    #@16
    .line 163
    .local v4, "negative":Z
    :goto_0
    if-nez v4, :cond_1

    #@18
    const/16 v6, 0x2b

    #@1a
    if-ne v1, v6, :cond_4

    #@1c
    .line 164
    :cond_1
    const/4 v6, 0x1

    #@1d
    if-ne v3, v6, :cond_3

    #@1f
    .line 165
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@22
    move-result-object v6

    #@23
    throw v6

    #@24
    .line 162
    .end local v4    # "negative":Z
    :cond_2
    const/4 v4, 0x0

    #@25
    .restart local v4    # "negative":Z
    goto :goto_0

    #@26
    .line 167
    :cond_3
    const/4 v2, 0x1

    #@27
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v1

    #@2b
    .line 170
    :cond_4
    const/16 v0, 0xa

    #@2d
    .line 171
    .local v0, "base":I
    const/16 v6, 0x30

    #@2f
    if-ne v1, v6, :cond_a

    #@31
    .line 172
    add-int/lit8 v2, v2, 0x1

    #@33
    if-ne v2, v3, :cond_5

    #@35
    .line 173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v6

    #@39
    return-object v6

    #@3a
    .line 175
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3d
    move-result v1

    #@3e
    const/16 v6, 0x78

    #@40
    if-eq v1, v6, :cond_6

    #@42
    const/16 v6, 0x58

    #@44
    if-ne v1, v6, :cond_9

    #@46
    .line 176
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@48
    if-ne v2, v3, :cond_7

    #@4a
    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@4d
    move-result-object v6

    #@4e
    throw v6

    #@4f
    .line 179
    :cond_7
    const/16 v0, 0x10

    #@51
    .line 190
    :cond_8
    :goto_1
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    #@54
    move-result v5

    #@55
    .line 191
    .local v5, "result":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v6

    #@59
    return-object v6

    #@5a
    .line 181
    .end local v5    # "result":I
    :cond_9
    const/16 v0, 0x8

    #@5c
    goto :goto_1

    #@5d
    .line 183
    :cond_a
    const/16 v6, 0x23

    #@5f
    if-ne v1, v6, :cond_8

    #@61
    .line 184
    add-int/lit8 v2, v2, 0x1

    #@63
    if-ne v2, v3, :cond_b

    #@65
    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@68
    move-result-object v6

    #@69
    throw v6

    #@6a
    .line 187
    :cond_b
    const/16 v0, 0x10

    #@6c
    goto :goto_1
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 231
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 232
    :cond_0
    return-object v3

    #@a
    .line 234
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 235
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_2

    #@10
    .line 236
    return-object v3

    #@11
    .line 239
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v2

    #@15
    return-object v2

    #@16
    .line 240
    :catch_0
    move-exception v0

    #@17
    .line 241
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-object v3
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 260
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 261
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 263
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 264
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_2

    #@13
    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 268
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    .line 269
    :catch_0
    move-exception v0

    #@1e
    .line 270
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 289
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 290
    :cond_0
    return-object p1

    #@9
    .line 292
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 293
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_2

    #@f
    .line 294
    return-object p1

    #@10
    .line 297
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 298
    :catch_0
    move-exception v0

    #@16
    .line 299
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-object p1
.end method

.method public static highestOneBit(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 561
    shr-int/lit8 v0, p0, 0x1

    #@2
    or-int/2addr p0, v0

    #@3
    .line 562
    shr-int/lit8 v0, p0, 0x2

    #@5
    or-int/2addr p0, v0

    #@6
    .line 563
    shr-int/lit8 v0, p0, 0x4

    #@8
    or-int/2addr p0, v0

    #@9
    .line 564
    shr-int/lit8 v0, p0, 0x8

    #@b
    or-int/2addr p0, v0

    #@c
    .line 565
    shr-int/lit8 v0, p0, 0x10

    #@e
    or-int/2addr p0, v0

    #@f
    .line 566
    ushr-int/lit8 v0, p0, 0x1

    #@11
    sub-int v0, p0, v0

    #@13
    return v0
.end method

.method private static invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid int: \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "\""

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method public static lowestOneBit(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 581
    neg-int v0, p0

    #@1
    and-int/2addr v0, p0

    #@2
    return v0
.end method

.method public static numberOfLeadingZeros(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 595
    if-gtz p0, :cond_0

    #@2
    .line 596
    not-int v1, p0

    #@3
    shr-int/lit8 v1, v1, 0x1a

    #@5
    and-int/lit8 v1, v1, 0x20

    #@7
    return v1

    #@8
    .line 598
    :cond_0
    const/4 v0, 0x1

    #@9
    .line 599
    .local v0, "n":I
    shr-int/lit8 v1, p0, 0x10

    #@b
    if-nez v1, :cond_1

    #@d
    .line 600
    const/16 v0, 0x11

    #@f
    .line 601
    shl-int/lit8 p0, p0, 0x10

    #@11
    .line 603
    :cond_1
    shr-int/lit8 v1, p0, 0x18

    #@13
    if-nez v1, :cond_2

    #@15
    .line 604
    add-int/lit8 v0, v0, 0x8

    #@17
    .line 605
    shl-int/lit8 p0, p0, 0x8

    #@19
    .line 607
    :cond_2
    shr-int/lit8 v1, p0, 0x1c

    #@1b
    if-nez v1, :cond_3

    #@1d
    .line 608
    add-int/lit8 v0, v0, 0x4

    #@1f
    .line 609
    shl-int/lit8 p0, p0, 0x4

    #@21
    .line 611
    :cond_3
    shr-int/lit8 v1, p0, 0x1e

    #@23
    if-nez v1, :cond_4

    #@25
    .line 612
    add-int/lit8 v0, v0, 0x2

    #@27
    .line 613
    shl-int/lit8 p0, p0, 0x2

    #@29
    .line 615
    :cond_4
    ushr-int/lit8 v1, p0, 0x1f

    #@2b
    sub-int v1, v0, v1

    #@2d
    return v1
.end method

.method public static numberOfTrailingZeros(I)I
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    .line 628
    sget-object v0, Ljava/lang/Integer;->NTZ_TABLE:[B

    #@2
    neg-int v1, p0

    #@3
    and-int/2addr v1, p0

    #@4
    const v2, 0x450fbaf

    #@7
    mul-int/2addr v1, v2

    #@8
    ushr-int/lit8 v1, v1, 0x1a

    #@a
    aget-byte v0, v0, v1

    #@c
    return v0
.end method

.method private static parse(Ljava/lang/String;IIZ)I
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "radix"    # I
    .param p3, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    const/high16 v6, -0x80000000

    #@2
    div-int v2, v6, p2

    #@4
    .line 405
    .local v2, "max":I
    const/4 v5, 0x0

    #@5
    .line 406
    .local v5, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    .local v1, "length":I
    move v4, p1

    #@a
    .line 407
    .end local p1    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, v1, :cond_3

    #@c
    .line 408
    add-int/lit8 p1, v4, 0x1

    #@e
    .end local v4    # "offset":I
    .restart local p1    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v6

    #@12
    invoke-static {v6, p2}, Ljava/lang/Character;->digit(CI)I

    #@15
    move-result v0

    #@16
    .line 409
    .local v0, "digit":I
    const/4 v6, -0x1

    #@17
    if-ne v0, v6, :cond_0

    #@19
    .line 410
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@1c
    move-result-object v6

    #@1d
    throw v6

    #@1e
    .line 412
    :cond_0
    if-le v2, v5, :cond_1

    #@20
    .line 413
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@23
    move-result-object v6

    #@24
    throw v6

    #@25
    .line 415
    :cond_1
    mul-int v6, v5, p2

    #@27
    sub-int v3, v6, v0

    #@29
    .line 416
    .local v3, "next":I
    if-le v3, v5, :cond_2

    #@2b
    .line 417
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@2e
    move-result-object v6

    #@2f
    throw v6

    #@30
    .line 419
    :cond_2
    move v5, v3

    #@31
    move v4, p1

    #@32
    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    #@33
    .line 421
    .end local v0    # "digit":I
    .end local v3    # "next":I
    :cond_3
    if-nez p3, :cond_4

    #@35
    .line 422
    neg-int v5, v5

    #@36
    .line 423
    if-gez v5, :cond_4

    #@38
    .line 424
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@3b
    move-result-object v6

    #@3c
    throw v6

    #@3d
    .line 427
    :cond_4
    return v5
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x2d

    #@2
    const/4 v2, 0x0

    #@3
    .line 354
    const/4 v3, 0x2

    #@4
    if-lt p1, v3, :cond_0

    #@6
    const/16 v3, 0x24

    #@8
    if-le p1, v3, :cond_1

    #@a
    .line 355
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Invalid radix: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 357
    :cond_1
    if-eqz p0, :cond_2

    #@26
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_3

    #@2c
    .line 358
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@2f
    move-result-object v2

    #@30
    throw v2

    #@31
    .line 361
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v0

    #@35
    .line 362
    .local v0, "firstChar":C
    if-eq v0, v4, :cond_4

    #@37
    const/16 v3, 0x2b

    #@39
    if-ne v0, v3, :cond_5

    #@3b
    :cond_4
    const/4 v1, 0x1

    #@3c
    .line 363
    .local v1, "firstDigitIndex":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3f
    move-result v3

    #@40
    if-ne v1, v3, :cond_6

    #@42
    .line 364
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@45
    move-result-object v2

    #@46
    throw v2

    #@47
    .line 362
    .end local v1    # "firstDigitIndex":I
    :cond_5
    const/4 v1, 0x0

    #@48
    .restart local v1    # "firstDigitIndex":I
    goto :goto_0

    #@49
    .line 367
    :cond_6
    if-ne v0, v4, :cond_7

    #@4b
    const/4 v2, 0x1

    #@4c
    :cond_7
    invoke-static {p0, v1, p1, v2}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    #@4f
    move-result v2

    #@50
    return v2
.end method

.method public static parsePositiveInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 378
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static parsePositiveInt(Ljava/lang/String;I)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 394
    const/4 v0, 0x2

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x24

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 395
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid radix: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 397
    :cond_1
    if-eqz p0, :cond_2

    #@24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_3

    #@2a
    .line 398
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@2d
    move-result-object v0

    #@2e
    throw v0

    #@2f
    .line 400
    :cond_3
    invoke-static {p0, v1, p1, v1}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    #@32
    move-result v0

    #@33
    return v0
.end method

.method public static reverse(I)I
    .locals 5
    .param p0, "i"    # I

    #@0
    .prologue
    const v1, 0x55555555

    #@3
    const v4, 0x33333333

    #@6
    const v3, 0xf0f0f0f

    #@9
    const v2, 0xff00ff

    #@c
    .line 708
    ushr-int/lit8 v0, p0, 0x1

    #@e
    and-int/2addr v0, v1

    #@f
    and-int/2addr v1, p0

    #@10
    shl-int/lit8 v1, v1, 0x1

    #@12
    or-int p0, v0, v1

    #@14
    .line 709
    ushr-int/lit8 v0, p0, 0x2

    #@16
    and-int/2addr v0, v4

    #@17
    and-int v1, p0, v4

    #@19
    shl-int/lit8 v1, v1, 0x2

    #@1b
    or-int p0, v0, v1

    #@1d
    .line 710
    ushr-int/lit8 v0, p0, 0x4

    #@1f
    and-int/2addr v0, v3

    #@20
    and-int v1, p0, v3

    #@22
    shl-int/lit8 v1, v1, 0x4

    #@24
    or-int p0, v0, v1

    #@26
    .line 711
    ushr-int/lit8 v0, p0, 0x8

    #@28
    and-int/2addr v0, v2

    #@29
    and-int v1, p0, v2

    #@2b
    shl-int/lit8 v1, v1, 0x8

    #@2d
    or-int p0, v0, v1

    #@2f
    .line 712
    ushr-int/lit8 v0, p0, 0x10

    #@31
    shl-int/lit8 v1, p0, 0x10

    #@33
    or-int/2addr v0, v1

    #@34
    return v0
.end method

.method public static reverseBytes(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    const v1, 0xff00ff

    #@3
    .line 693
    ushr-int/lit8 v0, p0, 0x8

    #@5
    and-int/2addr v0, v1

    #@6
    and-int/2addr v1, p0

    #@7
    shl-int/lit8 v1, v1, 0x8

    #@9
    or-int p0, v0, v1

    #@b
    .line 694
    ushr-int/lit8 v0, p0, 0x10

    #@d
    shl-int/lit8 v1, p0, 0x10

    #@f
    or-int/2addr v0, v1

    #@10
    return v0
.end method

.method public static rotateLeft(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "distance"    # I

    #@0
    .prologue
    .line 663
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
    .line 679
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
    .line 726
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

.method public static toBinaryString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 444
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToBinaryString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 457
    invoke-static {p0, v0, v0}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

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
    .line 469
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToOctalString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 487
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toString(II)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 510
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->intToString(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 742
    const/16 v0, 0x80

    #@2
    if-ge p0, v0, :cond_0

    #@4
    const/16 v0, -0x80

    #@6
    if-ge p0, v0, :cond_1

    #@8
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    #@a
    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    #@d
    :goto_0
    return-object v0

    #@e
    :cond_1
    sget-object v0, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    #@10
    add-int/lit16 v1, p0, 0x80

    #@12
    aget-object v0, v0, v1

    #@14
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 525
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 545
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
    .line 107
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method public compareTo(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 124
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
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 123
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
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
    .line 196
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    int-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 211
    instance-of v1, p1, Ljava/lang/Integer;

    #@3
    if-eqz v1, :cond_0

    #@5
    check-cast p1, Ljava/lang/Integer;

    #@7
    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Ljava/lang/Integer;->value:I

    #@9
    iget v2, p0, Ljava/lang/Integer;->value:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 216
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
    .line 305
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 315
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 320
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
    .line 432
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
    .line 474
    iget v0, p0, Ljava/lang/Integer;->value:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
