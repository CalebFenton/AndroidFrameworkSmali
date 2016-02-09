.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field private static final SMALL_VALUES:[Ljava/lang/Long;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 57
    const-class v1, [J

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 56
    sput-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@8
    .line 768
    const/16 v1, 0x100

    #@a
    new-array v1, v1, [Ljava/lang/Long;

    #@c
    sput-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    #@e
    .line 771
    const/16 v0, -0x80

    #@10
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 772
    sget-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    #@16
    add-int/lit16 v2, v0, 0x80

    #@18
    new-instance v3, Ljava/lang/Long;

    #@1a
    int-to-long v4, v0

    #@1b
    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@1e
    aput-object v3, v1, v2

    #@20
    .line 771
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 33
    :cond_0
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 76
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    #@5
    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    #@7
    .line 88
    return-void
.end method

.method public static bitCount(J)I
    .locals 10
    .param p0, "v"    # J

    #@0
    .prologue
    const-wide v8, 0x3333333333333333L    # 4.667261458395856E-62

    #@5
    const v6, 0xf0f0f0f

    #@8
    .line 642
    const/4 v1, 0x1

    #@9
    ushr-long v2, p0, v1

    #@b
    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    #@10
    and-long/2addr v2, v4

    #@11
    sub-long/2addr p0, v2

    #@12
    .line 643
    and-long v2, p0, v8

    #@14
    const/4 v1, 0x2

    #@15
    ushr-long v4, p0, v1

    #@17
    and-long/2addr v4, v8

    #@18
    add-long p0, v2, v4

    #@1a
    .line 644
    const/16 v1, 0x20

    #@1c
    ushr-long v2, p0, v1

    #@1e
    long-to-int v1, v2

    #@1f
    long-to-int v2, p0

    #@20
    add-int v0, v1, v2

    #@22
    .line 645
    .local v0, "i":I
    and-int v1, v0, v6

    #@24
    ushr-int/lit8 v2, v0, 0x4

    #@26
    and-int/2addr v2, v6

    #@27
    add-int v0, v1, v2

    #@29
    .line 646
    ushr-int/lit8 v1, v0, 0x8

    #@2b
    add-int/2addr v0, v1

    #@2c
    .line 647
    ushr-int/lit8 v1, v0, 0x10

    #@2e
    add-int/2addr v0, v1

    #@2f
    .line 648
    and-int/lit8 v1, v0, 0x7f

    #@31
    return v1
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "lhs"    # J
    .param p2, "rhs"    # J

    #@0
    .prologue
    .line 120
    cmp-long v0, p0, p2

    #@2
    if-gez v0, :cond_0

    #@4
    const/4 v0, -0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    cmp-long v0, p0, p2

    #@8
    if-nez v0, :cond_1

    #@a
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    :cond_1
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    .line 141
    .local v3, "length":I
    if-nez v3, :cond_0

    #@6
    .line 142
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@9
    move-result-object v5

    #@a
    throw v5

    #@b
    .line 145
    :cond_0
    const/4 v2, 0x0

    #@c
    .line 146
    .local v2, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v1

    #@10
    .line 147
    .local v1, "firstDigit":C
    const/16 v5, 0x2d

    #@12
    if-ne v1, v5, :cond_2

    #@14
    const/4 v4, 0x1

    #@15
    .line 148
    .local v4, "negative":Z
    :goto_0
    if-nez v4, :cond_1

    #@17
    const/16 v5, 0x2b

    #@19
    if-ne v1, v5, :cond_4

    #@1b
    .line 149
    :cond_1
    const/4 v5, 0x1

    #@1c
    if-ne v3, v5, :cond_3

    #@1e
    .line 150
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@21
    move-result-object v5

    #@22
    throw v5

    #@23
    .line 147
    .end local v4    # "negative":Z
    :cond_2
    const/4 v4, 0x0

    #@24
    .restart local v4    # "negative":Z
    goto :goto_0

    #@25
    .line 152
    :cond_3
    const/4 v2, 0x1

    #@26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v1

    #@2a
    .line 155
    :cond_4
    const/16 v0, 0xa

    #@2c
    .line 156
    .local v0, "base":I
    const/16 v5, 0x30

    #@2e
    if-ne v1, v5, :cond_a

    #@30
    .line 157
    add-int/lit8 v2, v2, 0x1

    #@32
    if-ne v2, v3, :cond_5

    #@34
    .line 158
    const-wide/16 v8, 0x0

    #@36
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@39
    move-result-object v5

    #@3a
    return-object v5

    #@3b
    .line 160
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v1

    #@3f
    const/16 v5, 0x78

    #@41
    if-eq v1, v5, :cond_6

    #@43
    const/16 v5, 0x58

    #@45
    if-ne v1, v5, :cond_9

    #@47
    .line 161
    :cond_6
    if-ne v2, v3, :cond_7

    #@49
    .line 162
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@4c
    move-result-object v5

    #@4d
    throw v5

    #@4e
    .line 164
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@50
    .line 165
    const/16 v0, 0x10

    #@52
    .line 177
    :cond_8
    :goto_1
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    #@55
    move-result-wide v6

    #@56
    .line 178
    .local v6, "result":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@59
    move-result-object v5

    #@5a
    return-object v5

    #@5b
    .line 167
    .end local v6    # "result":J
    :cond_9
    const/16 v0, 0x8

    #@5d
    goto :goto_1

    #@5e
    .line 169
    :cond_a
    const/16 v5, 0x23

    #@60
    if-ne v1, v5, :cond_8

    #@62
    .line 170
    if-ne v2, v3, :cond_b

    #@64
    .line 171
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@67
    move-result-object v5

    #@68
    throw v5

    #@69
    .line 173
    :cond_b
    add-int/lit8 v2, v2, 0x1

    #@6b
    .line 174
    const/16 v0, 0x10

    #@6d
    goto :goto_1
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 217
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 218
    :cond_0
    return-object v3

    #@a
    .line 220
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 221
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_2

    #@10
    .line 222
    return-object v3

    #@11
    .line 225
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v2

    #@15
    return-object v2

    #@16
    .line 226
    :catch_0
    move-exception v0

    #@17
    .line 227
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-object v3
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    #@0
    .prologue
    .line 246
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 247
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 249
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 250
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_2

    #@13
    .line 251
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 254
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    .line 255
    :catch_0
    move-exception v0

    #@1e
    .line 256
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v2

    #@22
    return-object v2
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 275
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 276
    :cond_0
    return-object p1

    #@9
    .line 278
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 279
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_2

    #@f
    .line 280
    return-object p1

    #@10
    .line 283
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 284
    :catch_0
    move-exception v0

    #@16
    .line 285
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return-object p1
.end method

.method public static highestOneBit(J)J
    .locals 4
    .param p0, "v"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 547
    shr-long v0, p0, v2

    #@3
    or-long/2addr p0, v0

    #@4
    .line 548
    const/4 v0, 0x2

    #@5
    shr-long v0, p0, v0

    #@7
    or-long/2addr p0, v0

    #@8
    .line 549
    const/4 v0, 0x4

    #@9
    shr-long v0, p0, v0

    #@b
    or-long/2addr p0, v0

    #@c
    .line 550
    const/16 v0, 0x8

    #@e
    shr-long v0, p0, v0

    #@10
    or-long/2addr p0, v0

    #@11
    .line 551
    const/16 v0, 0x10

    #@13
    shr-long v0, p0, v0

    #@15
    or-long/2addr p0, v0

    #@16
    .line 552
    const/16 v0, 0x20

    #@18
    shr-long v0, p0, v0

    #@1a
    or-long/2addr p0, v0

    #@1b
    .line 553
    ushr-long v0, p0, v2

    #@1d
    sub-long v0, p0, v0

    #@1f
    return-wide v0
.end method

.method private static invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid long: \""

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

.method public static lowestOneBit(J)J
    .locals 2
    .param p0, "v"    # J

    #@0
    .prologue
    .line 568
    neg-long v0, p0

    #@1
    and-long/2addr v0, p0

    #@2
    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .locals 6
    .param p0, "v"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 582
    cmp-long v2, p0, v4

    #@5
    if-gez v2, :cond_0

    #@7
    .line 583
    return v3

    #@8
    .line 585
    :cond_0
    cmp-long v2, p0, v4

    #@a
    if-nez v2, :cond_1

    #@c
    .line 586
    const/16 v2, 0x40

    #@e
    return v2

    #@f
    .line 591
    :cond_1
    const/4 v1, 0x1

    #@10
    .line 592
    .local v1, "n":I
    const/16 v2, 0x20

    #@12
    ushr-long v2, p0, v2

    #@14
    long-to-int v0, v2

    #@15
    .line 593
    .local v0, "i":I
    if-nez v0, :cond_2

    #@17
    .line 594
    const/16 v1, 0x21

    #@19
    .line 595
    long-to-int v0, p0

    #@1a
    .line 597
    :cond_2
    ushr-int/lit8 v2, v0, 0x10

    #@1c
    if-nez v2, :cond_3

    #@1e
    .line 598
    add-int/lit8 v1, v1, 0x10

    #@20
    .line 599
    shl-int/lit8 v0, v0, 0x10

    #@22
    .line 601
    :cond_3
    ushr-int/lit8 v2, v0, 0x18

    #@24
    if-nez v2, :cond_4

    #@26
    .line 602
    add-int/lit8 v1, v1, 0x8

    #@28
    .line 603
    shl-int/lit8 v0, v0, 0x8

    #@2a
    .line 605
    :cond_4
    ushr-int/lit8 v2, v0, 0x1c

    #@2c
    if-nez v2, :cond_5

    #@2e
    .line 606
    add-int/lit8 v1, v1, 0x4

    #@30
    .line 607
    shl-int/lit8 v0, v0, 0x4

    #@32
    .line 609
    :cond_5
    ushr-int/lit8 v2, v0, 0x1e

    #@34
    if-nez v2, :cond_6

    #@36
    .line 610
    add-int/lit8 v1, v1, 0x2

    #@38
    .line 611
    shl-int/lit8 v0, v0, 0x2

    #@3a
    .line 613
    :cond_6
    ushr-int/lit8 v2, v0, 0x1f

    #@3c
    sub-int v2, v1, v2

    #@3e
    return v2
.end method

.method public static numberOfTrailingZeros(J)I
    .locals 4
    .param p0, "v"    # J

    #@0
    .prologue
    const/16 v1, 0x20

    #@2
    .line 626
    long-to-int v0, p0

    #@3
    .line 627
    .local v0, "low":I
    if-eqz v0, :cond_0

    #@5
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@8
    move-result v1

    #@9
    :goto_0
    return v1

    #@a
    .line 628
    :cond_0
    ushr-long v2, p0, v1

    #@c
    long-to-int v1, v2

    #@d
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@10
    move-result v1

    #@11
    add-int/lit8 v1, v1, 0x20

    #@13
    goto :goto_0
.end method

.method private static parse(Ljava/lang/String;IIZ)J
    .locals 16
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "radix"    # I
    .param p3, "negative"    # Z

    #@0
    .prologue
    .line 357
    move/from16 v0, p2

    #@2
    int-to-long v12, v0

    #@3
    const-wide/high16 v14, -0x8000000000000000L

    #@5
    div-long v4, v14, v12

    #@7
    .line 358
    .local v4, "max":J
    const-wide/16 v10, 0x0

    #@9
    .line 359
    .local v10, "result":J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    .local v3, "length":I
    move/from16 v8, p1

    #@f
    .line 360
    .end local p1    # "offset":I
    .local v8, "offset":I
    :goto_0
    if-ge v8, v3, :cond_3

    #@11
    .line 361
    add-int/lit8 p1, v8, 0x1

    #@13
    .end local v8    # "offset":I
    .restart local p1    # "offset":I
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v9

    #@19
    move/from16 v0, p2

    #@1b
    invoke-static {v9, v0}, Ljava/lang/Character;->digit(CI)I

    #@1e
    move-result v2

    #@1f
    .line 362
    .local v2, "digit":I
    const/4 v9, -0x1

    #@20
    if-ne v2, v9, :cond_0

    #@22
    .line 363
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@25
    move-result-object v9

    #@26
    throw v9

    #@27
    .line 365
    :cond_0
    cmp-long v9, v4, v10

    #@29
    if-lez v9, :cond_1

    #@2b
    .line 366
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@2e
    move-result-object v9

    #@2f
    throw v9

    #@30
    .line 368
    :cond_1
    move/from16 v0, p2

    #@32
    int-to-long v12, v0

    #@33
    mul-long/2addr v12, v10

    #@34
    int-to-long v14, v2

    #@35
    sub-long v6, v12, v14

    #@37
    .line 369
    .local v6, "next":J
    cmp-long v9, v6, v10

    #@39
    if-lez v9, :cond_2

    #@3b
    .line 370
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@3e
    move-result-object v9

    #@3f
    throw v9

    #@40
    .line 372
    :cond_2
    move-wide v10, v6

    #@41
    move/from16 v8, p1

    #@43
    .end local p1    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_0

    #@44
    .line 374
    .end local v2    # "digit":I
    .end local v6    # "next":J
    :cond_3
    if-nez p3, :cond_4

    #@46
    .line 375
    neg-long v10, v10

    #@47
    .line 376
    const-wide/16 v12, 0x0

    #@49
    cmp-long v9, v10, v12

    #@4b
    if-gez v9, :cond_4

    #@4d
    .line 377
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@50
    move-result-object v9

    #@51
    throw v9

    #@52
    .line 380
    :cond_4
    return-wide v10
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
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
    .line 341
    const/4 v3, 0x2

    #@4
    if-lt p1, v3, :cond_0

    #@6
    const/16 v3, 0x24

    #@8
    if-le p1, v3, :cond_1

    #@a
    .line 342
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
    .line 344
    :cond_1
    if-eqz p0, :cond_2

    #@26
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_3

    #@2c
    .line 345
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@2f
    move-result-object v2

    #@30
    throw v2

    #@31
    .line 347
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v0

    #@35
    .line 348
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
    .line 349
    .local v1, "firstDigitIndex":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3f
    move-result v3

    #@40
    if-ne v1, v3, :cond_6

    #@42
    .line 350
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@45
    move-result-object v2

    #@46
    throw v2

    #@47
    .line 348
    .end local v1    # "firstDigitIndex":I
    :cond_5
    const/4 v1, 0x0

    #@48
    .restart local v1    # "firstDigitIndex":I
    goto :goto_0

    #@49
    .line 353
    :cond_6
    if-ne v0, v4, :cond_7

    #@4b
    const/4 v2, 0x1

    #@4c
    :cond_7
    invoke-static {p0, v1, p1, v2}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    #@4f
    move-result-wide v2

    #@50
    return-wide v2
.end method

.method public static parsePositiveLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 391
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static parsePositiveLong(Ljava/lang/String;I)J
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
    .line 407
    const/4 v0, 0x2

    #@2
    if-lt p1, v0, :cond_0

    #@4
    const/16 v0, 0x24

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 408
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
    .line 410
    :cond_1
    if-eqz p0, :cond_2

    #@24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_3

    #@2a
    .line 411
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@2d
    move-result-object v0

    #@2e
    throw v0

    #@2f
    .line 413
    :cond_3
    invoke-static {p0, v1, p1, v1}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    #@32
    move-result-wide v0

    #@33
    return-wide v0
.end method

.method public static reverse(J)J
    .locals 10
    .param p0, "v"    # J

    #@0
    .prologue
    const/16 v8, 0x10

    #@2
    const/16 v7, 0x8

    #@4
    const/4 v6, 0x4

    #@5
    const/4 v5, 0x2

    #@6
    const/4 v4, 0x1

    #@7
    .line 727
    ushr-long v0, p0, v4

    #@9
    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    #@e
    and-long/2addr v0, v2

    #@f
    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    #@14
    and-long/2addr v2, p0

    #@15
    shl-long/2addr v2, v4

    #@16
    or-long p0, v0, v2

    #@18
    .line 728
    ushr-long v0, p0, v5

    #@1a
    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    #@1f
    and-long/2addr v0, v2

    #@20
    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    #@25
    and-long/2addr v2, p0

    #@26
    shl-long/2addr v2, v5

    #@27
    or-long p0, v0, v2

    #@29
    .line 729
    ushr-long v0, p0, v6

    #@2b
    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    #@30
    and-long/2addr v0, v2

    #@31
    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    #@36
    and-long/2addr v2, p0

    #@37
    shl-long/2addr v2, v6

    #@38
    or-long p0, v0, v2

    #@3a
    .line 730
    ushr-long v0, p0, v7

    #@3c
    const-wide v2, 0xff00ff00ff00ffL

    #@41
    and-long/2addr v0, v2

    #@42
    const-wide v2, 0xff00ff00ff00ffL

    #@47
    and-long/2addr v2, p0

    #@48
    shl-long/2addr v2, v7

    #@49
    or-long p0, v0, v2

    #@4b
    .line 731
    ushr-long v0, p0, v8

    #@4d
    const-wide v2, 0xffff0000ffffL

    #@52
    and-long/2addr v0, v2

    #@53
    const-wide v2, 0xffff0000ffffL

    #@58
    and-long/2addr v2, p0

    #@59
    shl-long/2addr v2, v8

    #@5a
    or-long p0, v0, v2

    #@5c
    .line 732
    const/16 v0, 0x20

    #@5e
    ushr-long v0, p0, v0

    #@60
    const/16 v2, 0x20

    #@62
    shl-long v2, p0, v2

    #@64
    or-long/2addr v0, v2

    #@65
    return-wide v0
.end method

.method public static reverseBytes(J)J
    .locals 10
    .param p0, "v"    # J

    #@0
    .prologue
    const-wide v2, 0xff00ff00ff00ffL

    #@5
    const-wide v8, 0xffff0000ffffL

    #@a
    const/16 v6, 0x20

    #@c
    const/16 v5, 0x10

    #@e
    const/16 v4, 0x8

    #@10
    .line 711
    ushr-long v0, p0, v4

    #@12
    and-long/2addr v0, v2

    #@13
    and-long/2addr v2, p0

    #@14
    shl-long/2addr v2, v4

    #@15
    or-long p0, v0, v2

    #@17
    .line 712
    ushr-long v0, p0, v5

    #@19
    and-long/2addr v0, v8

    #@1a
    and-long v2, p0, v8

    #@1c
    shl-long/2addr v2, v5

    #@1d
    or-long p0, v0, v2

    #@1f
    .line 713
    ushr-long v0, p0, v6

    #@21
    shl-long v2, p0, v6

    #@23
    or-long/2addr v0, v2

    #@24
    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .locals 4
    .param p0, "v"    # J
    .param p2, "distance"    # I

    #@0
    .prologue
    .line 681
    shl-long v0, p0, p2

    #@2
    neg-int v2, p2

    #@3
    ushr-long v2, p0, v2

    #@5
    or-long/2addr v0, v2

    #@6
    return-wide v0
.end method

.method public static rotateRight(JI)J
    .locals 4
    .param p0, "v"    # J
    .param p2, "distance"    # I

    #@0
    .prologue
    .line 697
    ushr-long v0, p0, p2

    #@2
    neg-int v2, p2

    #@3
    shl-long v2, p0, v2

    #@5
    or-long/2addr v0, v2

    #@6
    return-wide v0
.end method

.method public static signum(J)I
    .locals 4
    .param p0, "v"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 746
    cmp-long v0, p0, v2

    #@4
    if-gez v0, :cond_0

    #@6
    const/4 v0, -0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    cmp-long v0, p0, v2

    #@a
    if-nez v0, :cond_1

    #@c
    const/4 v0, 0x0

    #@d
    goto :goto_0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J

    #@0
    .prologue
    .line 430
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToBinaryString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J

    #@0
    .prologue
    .line 443
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToHexString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J

    #@0
    .prologue
    .line 455
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToOctalString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # J

    #@0
    .prologue
    .line 473
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J
    .param p2, "radix"    # I

    #@0
    .prologue
    .line 496
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->longToString(JI)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .locals 2
    .param p0, "v"    # J

    #@0
    .prologue
    .line 762
    const-wide/16 v0, 0x80

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    const-wide/16 v0, -0x80

    #@8
    cmp-long v0, p0, v0

    #@a
    if-gez v0, :cond_1

    #@c
    :cond_0
    new-instance v0, Ljava/lang/Long;

    #@e
    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    #@11
    :goto_0
    return-object v0

    #@12
    :cond_1
    sget-object v0, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    #@14
    long-to-int v1, p0

    #@15
    add-int/lit16 v1, v1, 0x80

    #@17
    aget-object v0, v0, v1

    #@19
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 531
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    long-to-int v0, v0

    #@3
    int-to-byte v0, v0

    #@4
    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 111
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    iget-wide v2, p1, Ljava/lang/Long;->value:J

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

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
    .line 110
    check-cast p1, Ljava/lang/Long;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 183
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    long-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 198
    instance-of v1, p1, Ljava/lang/Long;

    #@3
    if-eqz v1, :cond_0

    #@5
    check-cast p1, Ljava/lang/Long;

    #@7
    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p1, Ljava/lang/Long;->value:J

    #@9
    iget-wide v4, p0, Ljava/lang/Long;->value:J

    #@b
    cmp-long v1, v2, v4

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 203
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    long-to-float v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 291
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    iget-wide v2, p0, Ljava/lang/Long;->value:J

    #@4
    const/16 v4, 0x20

    #@6
    ushr-long/2addr v2, v4

    #@7
    xor-long/2addr v0, v2

    #@8
    long-to-int v0, v0

    #@9
    return v0
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 296
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 306
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    #@0
    .prologue
    .line 418
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    long-to-int v0, v0

    #@3
    int-to-short v0, v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 460
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
