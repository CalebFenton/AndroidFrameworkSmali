.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Long$LongCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

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
    .locals 1

    #@0
    .prologue
    .line 70
    const-class v0, [J

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@8
    .line 51
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 687
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    #@5
    .line 686
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 704
    const/16 v0, 0xa

    #@5
    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p0, Ljava/lang/Long;->value:J

    #@b
    .line 703
    return-void
.end method

.method public static bitCount(J)I
    .locals 6
    .param p0, "i"    # J

    #@0
    .prologue
    const-wide v4, 0x3333333333333333L    # 4.667261458395856E-62

    #@5
    .line 1119
    const/4 v0, 0x1

    #@6
    ushr-long v0, p0, v0

    #@8
    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    #@d
    and-long/2addr v0, v2

    #@e
    sub-long/2addr p0, v0

    #@f
    .line 1120
    and-long v0, p0, v4

    #@11
    const/4 v2, 0x2

    #@12
    ushr-long v2, p0, v2

    #@14
    and-long/2addr v2, v4

    #@15
    add-long p0, v0, v2

    #@17
    .line 1121
    const/4 v0, 0x4

    #@18
    ushr-long v0, p0, v0

    #@1a
    add-long/2addr v0, p0

    #@1b
    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    #@20
    and-long p0, v0, v2

    #@22
    .line 1122
    const/16 v0, 0x8

    #@24
    ushr-long v0, p0, v0

    #@26
    add-long/2addr p0, v0

    #@27
    .line 1123
    const/16 v0, 0x10

    #@29
    ushr-long v0, p0, v0

    #@2b
    add-long/2addr p0, v0

    #@2c
    .line 1124
    const/16 v0, 0x20

    #@2e
    ushr-long v0, p0, v0

    #@30
    add-long/2addr p0, v0

    #@31
    .line 1125
    long-to-int v0, p0

    #@32
    and-int/lit8 v0, v0, 0x7f

    #@34
    return v0
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 985
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
    .line 626
    const/16 v5, 0xa

    #@3
    .line 627
    .local v5, "radix":I
    const/4 v3, 0x0

    #@4
    .line 628
    .local v3, "index":I
    const/4 v4, 0x0

    #@5
    .line 631
    .local v4, "negative":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v7

    #@9
    if-nez v7, :cond_0

    #@b
    .line 632
    new-instance v7, Ljava/lang/NumberFormatException;

    #@d
    const-string/jumbo v8, "Zero length string"

    #@10
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@13
    throw v7

    #@14
    .line 633
    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    .line 635
    .local v2, "firstChar":C
    const/16 v7, 0x2d

    #@1a
    if-ne v2, v7, :cond_5

    #@1c
    .line 636
    const/4 v4, 0x1

    #@1d
    .line 637
    const/4 v3, 0x1

    #@1e
    .line 642
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
    .line 643
    :cond_2
    add-int/lit8 v3, v3, 0x2

    #@32
    .line 644
    const/16 v5, 0x10

    #@34
    .line 655
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
    .line 656
    :cond_4
    new-instance v7, Ljava/lang/NumberFormatException;

    #@48
    const-string/jumbo v8, "Sign character in wrong position"

    #@4b
    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v7

    #@4f
    .line 638
    :cond_5
    const/16 v7, 0x2b

    #@51
    if-ne v2, v7, :cond_1

    #@53
    .line 639
    const/4 v3, 0x1

    #@54
    goto :goto_0

    #@55
    .line 646
    :cond_6
    const-string/jumbo v7, "#"

    #@58
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@5b
    move-result v7

    #@5c
    if-eqz v7, :cond_7

    #@5e
    .line 647
    add-int/lit8 v3, v3, 0x1

    #@60
    .line 648
    const/16 v5, 0x10

    #@62
    goto :goto_1

    #@63
    .line 650
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
    .line 651
    add-int/lit8 v3, v3, 0x1

    #@76
    .line 652
    const/16 v5, 0x8

    #@78
    goto :goto_1

    #@79
    .line 659
    :cond_8
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    invoke-static {v7, v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    #@80
    move-result-object v6

    #@81
    .line 660
    .local v6, "result":Ljava/lang/Long;
    if-eqz v4, :cond_9

    #@83
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@86
    move-result-wide v8

    #@87
    neg-long v8, v8

    #@88
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@8b
    move-result-object v6

    #@8c
    .line 669
    :cond_9
    :goto_2
    return-object v6

    #@8d
    .line 661
    .end local v6    # "result":Ljava/lang/Long;
    :catch_0
    move-exception v1

    #@8e
    .line 665
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
    .line 667
    .local v0, "constant":Ljava/lang/String;
    :goto_3
    invoke-static {v0, v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    #@ab
    move-result-object v6

    #@ac
    .restart local v6    # "result":Ljava/lang/Long;
    goto :goto_2

    #@ad
    .line 666
    .end local v0    # "constant":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/Long;
    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    goto :goto_3
.end method

.method static getChars(JI[C)V
    .locals 12
    .param p0, "i"    # J
    .param p2, "index"    # I
    .param p3, "buf"    # [C

    #@0
    .prologue
    .line 286
    move v0, p2

    #@1
    .line 287
    .local v0, "charPos":I
    const/4 v6, 0x0

    #@2
    .line 289
    .local v6, "sign":C
    const-wide/16 v8, 0x0

    #@4
    cmp-long v7, p0, v8

    #@6
    if-gez v7, :cond_0

    #@8
    .line 290
    const/16 v6, 0x2d

    #@a
    .line 291
    neg-long p0, p0

    #@b
    .line 295
    :cond_0
    :goto_0
    const-wide/32 v8, 0x7fffffff

    #@e
    cmp-long v7, p0, v8

    #@10
    if-lez v7, :cond_1

    #@12
    .line 296
    const-wide/16 v8, 0x64

    #@14
    div-long v2, p0, v8

    #@16
    .line 298
    .local v2, "q":J
    const/4 v7, 0x6

    #@17
    shl-long v8, v2, v7

    #@19
    const/4 v7, 0x5

    #@1a
    shl-long v10, v2, v7

    #@1c
    add-long/2addr v8, v10

    #@1d
    const/4 v7, 0x2

    #@1e
    shl-long v10, v2, v7

    #@20
    add-long/2addr v8, v10

    #@21
    sub-long v8, p0, v8

    #@23
    long-to-int v5, v8

    #@24
    .line 299
    .local v5, "r":I
    move-wide p0, v2

    #@25
    .line 300
    add-int/lit8 v0, v0, -0x1

    #@27
    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    #@29
    aget-char v7, v7, v5

    #@2b
    aput-char v7, p3, v0

    #@2d
    .line 301
    add-int/lit8 v0, v0, -0x1

    #@2f
    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    #@31
    aget-char v7, v7, v5

    #@33
    aput-char v7, p3, v0

    #@35
    goto :goto_0

    #@36
    .line 306
    .end local v2    # "q":J
    .end local v5    # "r":I
    :cond_1
    long-to-int v1, p0

    #@37
    .line 307
    .local v1, "i2":I
    :goto_1
    const/high16 v7, 0x10000

    #@39
    if-lt v1, v7, :cond_2

    #@3b
    .line 308
    div-int/lit8 v4, v1, 0x64

    #@3d
    .line 310
    .local v4, "q2":I
    shl-int/lit8 v7, v4, 0x6

    #@3f
    shl-int/lit8 v8, v4, 0x5

    #@41
    add-int/2addr v7, v8

    #@42
    shl-int/lit8 v8, v4, 0x2

    #@44
    add-int/2addr v7, v8

    #@45
    sub-int v5, v1, v7

    #@47
    .line 311
    .restart local v5    # "r":I
    move v1, v4

    #@48
    .line 312
    add-int/lit8 v0, v0, -0x1

    #@4a
    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    #@4c
    aget-char v7, v7, v5

    #@4e
    aput-char v7, p3, v0

    #@50
    .line 313
    add-int/lit8 v0, v0, -0x1

    #@52
    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    #@54
    aget-char v7, v7, v5

    #@56
    aput-char v7, p3, v0

    #@58
    goto :goto_1

    #@59
    .line 319
    .end local v4    # "q2":I
    .end local v5    # "r":I
    :cond_2
    const v7, 0xcccd

    #@5c
    mul-int/2addr v7, v1

    #@5d
    ushr-int/lit8 v4, v7, 0x13

    #@5f
    .line 320
    .restart local v4    # "q2":I
    shl-int/lit8 v7, v4, 0x3

    #@61
    shl-int/lit8 v8, v4, 0x1

    #@63
    add-int/2addr v7, v8

    #@64
    sub-int v5, v1, v7

    #@66
    .line 321
    .restart local v5    # "r":I
    add-int/lit8 v0, v0, -0x1

    #@68
    sget-object v7, Ljava/lang/Integer;->digits:[C

    #@6a
    aget-char v7, v7, v5

    #@6c
    aput-char v7, p3, v0

    #@6e
    .line 322
    move v1, v4

    #@6f
    .line 323
    if-nez v4, :cond_2

    #@71
    .line 325
    if-eqz v6, :cond_3

    #@73
    .line 326
    add-int/lit8 v0, v0, -0x1

    #@75
    aput-char v6, p3, v0

    #@77
    .line 283
    :cond_3
    return-void
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "nm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 845
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 3
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 890
    invoke-static {p0, v1}, Ljava/lang/Long;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    #@4
    move-result-object v0

    #@5
    .line 891
    .local v0, "result":Ljava/lang/Long;
    if-nez v0, :cond_0

    #@7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a
    move-result-object v0

    #@b
    .end local v0    # "result":Ljava/lang/Long;
    :cond_0
    return-object v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 938
    const/4 v3, 0x0

    #@1
    .line 940
    .local v3, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-object v3

    #@5
    .line 944
    .end local v3    # "v":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    #@7
    .line 946
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 942
    .restart local v3    # "v":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@d
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    #@e
    .line 941
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    #@f
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@10
    .line 947
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "v":Ljava/lang/String;
    :catch_2
    move-exception v2

    #@11
    .line 950
    :cond_0
    return-object p1
.end method

.method public static hashCode(J)I
    .locals 2
    .param p0, "value"    # J

    #@0
    .prologue
    .line 794
    const/16 v0, 0x20

    #@2
    ushr-long v0, p0, v0

    #@4
    xor-long/2addr v0, p0

    #@5
    long-to-int v0, v0

    #@6
    return v0
.end method

.method public static highestOneBit(J)J
    .locals 4
    .param p0, "i"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1021
    shr-long v0, p0, v2

    #@3
    or-long/2addr p0, v0

    #@4
    .line 1022
    const/4 v0, 0x2

    #@5
    shr-long v0, p0, v0

    #@7
    or-long/2addr p0, v0

    #@8
    .line 1023
    const/4 v0, 0x4

    #@9
    shr-long v0, p0, v0

    #@b
    or-long/2addr p0, v0

    #@c
    .line 1024
    const/16 v0, 0x8

    #@e
    shr-long v0, p0, v0

    #@10
    or-long/2addr p0, v0

    #@11
    .line 1025
    const/16 v0, 0x10

    #@13
    shr-long v0, p0, v0

    #@15
    or-long/2addr p0, v0

    #@16
    .line 1026
    const/16 v0, 0x20

    #@18
    shr-long v0, p0, v0

    #@1a
    or-long/2addr p0, v0

    #@1b
    .line 1027
    ushr-long v0, p0, v2

    #@1d
    sub-long v0, p0, v0

    #@1f
    return-wide v0
.end method

.method public static lowestOneBit(J)J
    .locals 2
    .param p0, "i"    # J

    #@0
    .prologue
    .line 1044
    neg-long v0, p0

    #@1
    and-long/2addr v0, p0

    #@2
    return-wide v0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    #@0
    .prologue
    .line 1243
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    #@0
    .prologue
    .line 1257
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .locals 4
    .param p0, "i"    # J

    #@0
    .prologue
    .line 1069
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p0, v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1070
    const/16 v2, 0x40

    #@8
    return v2

    #@9
    .line 1071
    :cond_0
    const/4 v0, 0x1

    #@a
    .line 1072
    .local v0, "n":I
    const/16 v2, 0x20

    #@c
    ushr-long v2, p0, v2

    #@e
    long-to-int v1, v2

    #@f
    .line 1073
    .local v1, "x":I
    if-nez v1, :cond_1

    #@11
    const/16 v0, 0x21

    #@13
    long-to-int v1, p0

    #@14
    .line 1074
    :cond_1
    ushr-int/lit8 v2, v1, 0x10

    #@16
    if-nez v2, :cond_2

    #@18
    add-int/lit8 v0, v0, 0x10

    #@1a
    shl-int/lit8 v1, v1, 0x10

    #@1c
    .line 1075
    :cond_2
    ushr-int/lit8 v2, v1, 0x18

    #@1e
    if-nez v2, :cond_3

    #@20
    add-int/lit8 v0, v0, 0x8

    #@22
    shl-int/lit8 v1, v1, 0x8

    #@24
    .line 1076
    :cond_3
    ushr-int/lit8 v2, v1, 0x1c

    #@26
    if-nez v2, :cond_4

    #@28
    add-int/lit8 v0, v0, 0x4

    #@2a
    shl-int/lit8 v1, v1, 0x4

    #@2c
    .line 1077
    :cond_4
    ushr-int/lit8 v2, v1, 0x1e

    #@2e
    if-nez v2, :cond_5

    #@30
    add-int/lit8 v0, v0, 0x2

    #@32
    shl-int/lit8 v1, v1, 0x2

    #@34
    .line 1078
    :cond_5
    ushr-int/lit8 v2, v1, 0x1f

    #@36
    sub-int/2addr v0, v2

    #@37
    .line 1079
    return v0
.end method

.method public static numberOfTrailingZeros(J)I
    .locals 6
    .param p0, "i"    # J

    #@0
    .prologue
    .line 1098
    const-wide/16 v4, 0x0

    #@2
    cmp-long v3, p0, v4

    #@4
    if-nez v3, :cond_0

    #@6
    const/16 v3, 0x40

    #@8
    return v3

    #@9
    .line 1099
    :cond_0
    const/16 v0, 0x3f

    #@b
    .line 1100
    .local v0, "n":I
    long-to-int v2, p0

    #@c
    .local v2, "y":I
    if-eqz v2, :cond_5

    #@e
    const/16 v0, 0x1f

    #@10
    move v1, v2

    #@11
    .line 1101
    .local v1, "x":I
    :goto_0
    shl-int/lit8 v2, v1, 0x10

    #@13
    if-eqz v2, :cond_1

    #@15
    add-int/lit8 v0, v0, -0x10

    #@17
    move v1, v2

    #@18
    .line 1102
    :cond_1
    shl-int/lit8 v2, v1, 0x8

    #@1a
    if-eqz v2, :cond_2

    #@1c
    add-int/lit8 v0, v0, -0x8

    #@1e
    move v1, v2

    #@1f
    .line 1103
    :cond_2
    shl-int/lit8 v2, v1, 0x4

    #@21
    if-eqz v2, :cond_3

    #@23
    add-int/lit8 v0, v0, -0x4

    #@25
    move v1, v2

    #@26
    .line 1104
    :cond_3
    shl-int/lit8 v2, v1, 0x2

    #@28
    if-eqz v2, :cond_4

    #@2a
    add-int/lit8 v0, v0, -0x2

    #@2c
    move v1, v2

    #@2d
    .line 1105
    :cond_4
    shl-int/lit8 v3, v1, 0x1

    #@2f
    ushr-int/lit8 v3, v3, 0x1f

    #@31
    sub-int v3, v0, v3

    #@33
    return v3

    #@34
    .line 1100
    .end local v1    # "x":I
    :cond_5
    const/16 v3, 0x20

    #@36
    ushr-long v4, p0, v3

    #@38
    long-to-int v1, v4

    #@39
    .restart local v1    # "x":I
    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 485
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .locals 17
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    if-nez p0, :cond_0

    #@2
    .line 406
    new-instance v14, Ljava/lang/NumberFormatException;

    #@4
    const-string/jumbo v15, "null"

    #@7
    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@a
    throw v14

    #@b
    .line 409
    :cond_0
    const/4 v14, 0x2

    #@c
    move/from16 v0, p1

    #@e
    if-ge v0, v14, :cond_1

    #@10
    .line 410
    new-instance v14, Ljava/lang/NumberFormatException;

    #@12
    new-instance v15, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v16, "radix "

    #@1a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v15

    #@1e
    move/from16 v0, p1

    #@20
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v15

    #@24
    .line 411
    const-string/jumbo v16, " less than Character.MIN_RADIX"

    #@27
    .line 410
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v15

    #@2b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v15

    #@2f
    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@32
    throw v14

    #@33
    .line 413
    :cond_1
    const/16 v14, 0x24

    #@35
    move/from16 v0, p1

    #@37
    if-le v0, v14, :cond_2

    #@39
    .line 414
    new-instance v14, Ljava/lang/NumberFormatException;

    #@3b
    new-instance v15, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v16, "radix "

    #@43
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v15

    #@47
    move/from16 v0, p1

    #@49
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v15

    #@4d
    .line 415
    const-string/jumbo v16, " greater than Character.MAX_RADIX"

    #@50
    .line 414
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v15

    #@54
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v15

    #@58
    invoke-direct {v14, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v14

    #@5c
    .line 418
    :cond_2
    const-wide/16 v12, 0x0

    #@5e
    .line 419
    .local v12, "result":J
    const/4 v7, 0x0

    #@5f
    .line 420
    .local v7, "negative":Z
    const/4 v4, 0x0

    #@60
    .local v4, "i":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@63
    move-result v6

    #@64
    .line 421
    .local v6, "len":I
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    #@69
    .line 425
    .local v8, "limit":J
    if-lez v6, :cond_a

    #@6b
    .line 426
    const/4 v14, 0x0

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    #@71
    move-result v3

    #@72
    .line 427
    .local v3, "firstChar":C
    const/16 v14, 0x30

    #@74
    if-ge v3, v14, :cond_6

    #@76
    .line 428
    const/16 v14, 0x2d

    #@78
    if-ne v3, v14, :cond_4

    #@7a
    .line 429
    const/4 v7, 0x1

    #@7b
    .line 430
    const-wide/high16 v8, -0x8000000000000000L

    #@7d
    .line 434
    :cond_3
    const/4 v14, 0x1

    #@7e
    if-ne v6, v14, :cond_5

    #@80
    .line 435
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@83
    move-result-object v14

    #@84
    throw v14

    #@85
    .line 431
    :cond_4
    const/16 v14, 0x2b

    #@87
    if-eq v3, v14, :cond_3

    #@89
    .line 432
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@8c
    move-result-object v14

    #@8d
    throw v14

    #@8e
    .line 436
    :cond_5
    const/4 v4, 0x1

    #@8f
    .line 438
    :cond_6
    move/from16 v0, p1

    #@91
    int-to-long v14, v0

    #@92
    div-long v10, v8, v14

    #@94
    .local v10, "multmin":J
    move v5, v4

    #@95
    .line 439
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_b

    #@97
    .line 441
    add-int/lit8 v4, v5, 0x1

    #@99
    .end local v5    # "i":I
    .restart local v4    # "i":I
    move-object/from16 v0, p0

    #@9b
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@9e
    move-result v14

    #@9f
    move/from16 v0, p1

    #@a1
    invoke-static {v14, v0}, Ljava/lang/Character;->digit(CI)I

    #@a4
    move-result v2

    #@a5
    .line 442
    .local v2, "digit":I
    if-gez v2, :cond_7

    #@a7
    .line 443
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@aa
    move-result-object v14

    #@ab
    throw v14

    #@ac
    .line 445
    :cond_7
    cmp-long v14, v12, v10

    #@ae
    if-gez v14, :cond_8

    #@b0
    .line 446
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@b3
    move-result-object v14

    #@b4
    throw v14

    #@b5
    .line 448
    :cond_8
    move/from16 v0, p1

    #@b7
    int-to-long v14, v0

    #@b8
    mul-long/2addr v12, v14

    #@b9
    .line 449
    int-to-long v14, v2

    #@ba
    add-long/2addr v14, v8

    #@bb
    cmp-long v14, v12, v14

    #@bd
    if-gez v14, :cond_9

    #@bf
    .line 450
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@c2
    move-result-object v14

    #@c3
    throw v14

    #@c4
    .line 452
    :cond_9
    int-to-long v14, v2

    #@c5
    sub-long/2addr v12, v14

    #@c6
    move v5, v4

    #@c7
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    #@c8
    .line 455
    .end local v2    # "digit":I
    .end local v3    # "firstChar":C
    .end local v5    # "i":I
    .end local v10    # "multmin":J
    .restart local v4    # "i":I
    :cond_a
    invoke-static/range {p0 .. p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@cb
    move-result-object v14

    #@cc
    throw v14

    #@cd
    .line 457
    .end local v4    # "i":I
    .restart local v3    # "firstChar":C
    .restart local v5    # "i":I
    .restart local v10    # "multmin":J
    :cond_b
    if-eqz v7, :cond_c

    #@cf
    .end local v12    # "result":J
    :goto_1
    return-wide v12

    #@d0
    .restart local v12    # "result":J
    :cond_c
    neg-long v12, v12

    #@d1
    goto :goto_1
.end method

.method public static reverse(J)J
    .locals 10
    .param p0, "i"    # J

    #@0
    .prologue
    const/16 v9, 0x10

    #@2
    const/16 v8, 0x8

    #@4
    const/4 v7, 0x4

    #@5
    const/4 v6, 0x2

    #@6
    const/4 v2, 0x1

    #@7
    .line 1183
    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    #@c
    and-long/2addr v0, p0

    #@d
    shl-long/2addr v0, v2

    #@e
    ushr-long v2, p0, v2

    #@10
    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    #@15
    and-long/2addr v2, v4

    #@16
    or-long p0, v0, v2

    #@18
    .line 1184
    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    #@1d
    and-long/2addr v0, p0

    #@1e
    shl-long/2addr v0, v6

    #@1f
    ushr-long v2, p0, v6

    #@21
    const-wide v4, 0x3333333333333333L    # 4.667261458395856E-62

    #@26
    and-long/2addr v2, v4

    #@27
    or-long p0, v0, v2

    #@29
    .line 1185
    const-wide v0, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    #@2e
    and-long/2addr v0, p0

    #@2f
    shl-long/2addr v0, v7

    #@30
    ushr-long v2, p0, v7

    #@32
    const-wide v4, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    #@37
    and-long/2addr v2, v4

    #@38
    or-long p0, v0, v2

    #@3a
    .line 1186
    const-wide v0, 0xff00ff00ff00ffL

    #@3f
    and-long/2addr v0, p0

    #@40
    shl-long/2addr v0, v8

    #@41
    ushr-long v2, p0, v8

    #@43
    const-wide v4, 0xff00ff00ff00ffL

    #@48
    and-long/2addr v2, v4

    #@49
    or-long p0, v0, v2

    #@4b
    .line 1187
    const/16 v0, 0x30

    #@4d
    shl-long v0, p0, v0

    #@4f
    const-wide v2, 0xffff0000L

    #@54
    and-long/2addr v2, p0

    #@55
    shl-long/2addr v2, v9

    #@56
    or-long/2addr v0, v2

    #@57
    .line 1188
    ushr-long v2, p0, v9

    #@59
    const-wide v4, 0xffff0000L

    #@5e
    and-long/2addr v2, v4

    #@5f
    .line 1187
    or-long/2addr v0, v2

    #@60
    .line 1188
    const/16 v2, 0x30

    #@62
    ushr-long v2, p0, v2

    #@64
    .line 1187
    or-long p0, v0, v2

    #@66
    .line 1189
    return-wide p0
.end method

.method public static reverseBytes(J)J
    .locals 10
    .param p0, "i"    # J

    #@0
    .prologue
    const-wide v8, 0xff00ff00ff00ffL

    #@5
    const-wide v6, 0xffff0000L

    #@a
    const/16 v5, 0x30

    #@c
    const/16 v4, 0x10

    #@e
    const/16 v2, 0x8

    #@10
    .line 1214
    and-long v0, p0, v8

    #@12
    shl-long/2addr v0, v2

    #@13
    ushr-long v2, p0, v2

    #@15
    and-long/2addr v2, v8

    #@16
    or-long p0, v0, v2

    #@18
    .line 1215
    shl-long v0, p0, v5

    #@1a
    and-long v2, p0, v6

    #@1c
    shl-long/2addr v2, v4

    #@1d
    or-long/2addr v0, v2

    #@1e
    .line 1216
    ushr-long v2, p0, v4

    #@20
    and-long/2addr v2, v6

    #@21
    .line 1215
    or-long/2addr v0, v2

    #@22
    .line 1216
    ushr-long v2, p0, v5

    #@24
    .line 1215
    or-long/2addr v0, v2

    #@25
    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .locals 4
    .param p0, "i"    # J
    .param p2, "distance"    # I

    #@0
    .prologue
    .line 1147
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
    .param p0, "i"    # J
    .param p2, "distance"    # I

    #@0
    .prologue
    .line 1169
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
    .locals 6
    .param p0, "i"    # J

    #@0
    .prologue
    const/16 v4, 0x3f

    #@2
    .line 1202
    shr-long v0, p0, v4

    #@4
    neg-long v2, p0

    #@5
    ushr-long/2addr v2, v4

    #@6
    or-long/2addr v0, v2

    #@7
    long-to-int v0, v0

    #@8
    return v0
.end method

.method static stringSize(J)I
    .locals 8
    .param p0, "x"    # J

    #@0
    .prologue
    const/16 v6, 0x13

    #@2
    .line 332
    const-wide/16 v2, 0xa

    #@4
    .line 333
    .local v2, "p":J
    const/4 v0, 0x1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    #@7
    .line 334
    cmp-long v1, p0, v2

    #@9
    if-gez v1, :cond_0

    #@b
    .line 335
    return v0

    #@c
    .line 336
    :cond_0
    const-wide/16 v4, 0xa

    #@e
    mul-long/2addr v2, v4

    #@f
    .line 333
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 338
    :cond_1
    return v6
.end method

.method public static sum(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    #@0
    .prologue
    .line 1229
    add-long v0, p0, p2

    #@2
    return-wide v0
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # J

    #@0
    .prologue
    .line 236
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # J

    #@0
    .prologue
    .line 178
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # J

    #@0
    .prologue
    .line 211
    const/4 v0, 0x3

    #@1
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 4
    .param p0, "i"    # J

    #@0
    .prologue
    .line 265
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    cmp-long v2, p0, v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 266
    const-string/jumbo v2, "-9223372036854775808"

    #@9
    return-object v2

    #@a
    .line 267
    :cond_0
    const-wide/16 v2, 0x0

    #@c
    cmp-long v2, p0, v2

    #@e
    if-gez v2, :cond_1

    #@10
    neg-long v2, p0

    #@11
    invoke-static {v2, v3}, Ljava/lang/Long;->stringSize(J)I

    #@14
    move-result v2

    #@15
    add-int/lit8 v1, v2, 0x1

    #@17
    .line 268
    .local v1, "size":I
    :goto_0
    new-array v0, v1, [C

    #@19
    .line 269
    .local v0, "buf":[C
    invoke-static {p0, p1, v1, v0}, Ljava/lang/Long;->getChars(JI[C)V

    #@1c
    .line 271
    new-instance v2, Ljava/lang/String;

    #@1e
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@21
    return-object v2

    #@22
    .line 267
    .end local v0    # "buf":[C
    .end local v1    # "size":I
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->stringSize(J)I

    #@25
    move-result v1

    #@26
    goto :goto_0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 8
    .param p0, "i"    # J
    .param p2, "radix"    # I

    #@0
    .prologue
    .line 117
    const/4 v4, 0x2

    #@1
    if-lt p2, v4, :cond_0

    #@3
    const/16 v4, 0x24

    #@5
    if-le p2, v4, :cond_1

    #@7
    .line 118
    :cond_0
    const/16 p2, 0xa

    #@9
    .line 119
    :cond_1
    const/16 v4, 0xa

    #@b
    if-ne p2, v4, :cond_2

    #@d
    .line 120
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    return-object v4

    #@12
    .line 121
    :cond_2
    const/16 v4, 0x41

    #@14
    new-array v0, v4, [C

    #@16
    .line 122
    .local v0, "buf":[C
    const/16 v1, 0x40

    #@18
    .line 123
    .local v1, "charPos":I
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v4, p0, v4

    #@1c
    if-gez v4, :cond_4

    #@1e
    const/4 v3, 0x1

    #@1f
    .line 125
    .local v3, "negative":Z
    :goto_0
    if-nez v3, :cond_3

    #@21
    .line 126
    neg-long p0, p0

    #@22
    move v2, v1

    #@23
    .line 129
    .end local v1    # "charPos":I
    .local v2, "charPos":I
    :goto_1
    neg-int v4, p2

    #@24
    int-to-long v4, v4

    #@25
    cmp-long v4, p0, v4

    #@27
    if-gtz v4, :cond_5

    #@29
    .line 130
    add-int/lit8 v1, v2, -0x1

    #@2b
    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    sget-object v4, Ljava/lang/Integer;->digits:[C

    #@2d
    int-to-long v6, p2

    #@2e
    rem-long v6, p0, v6

    #@30
    neg-long v6, v6

    #@31
    long-to-int v5, v6

    #@32
    aget-char v4, v4, v5

    #@34
    aput-char v4, v0, v2

    #@36
    .line 131
    int-to-long v4, p2

    #@37
    div-long/2addr p0, v4

    #@38
    :cond_3
    move v2, v1

    #@39
    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    goto :goto_1

    #@3a
    .line 123
    .end local v2    # "charPos":I
    .end local v3    # "negative":Z
    .restart local v1    # "charPos":I
    :cond_4
    const/4 v3, 0x0

    #@3b
    goto :goto_0

    #@3c
    .line 133
    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    .restart local v3    # "negative":Z
    :cond_5
    sget-object v4, Ljava/lang/Integer;->digits:[C

    #@3e
    neg-long v6, p0

    #@3f
    long-to-int v5, v6

    #@40
    aget-char v4, v4, v5

    #@42
    aput-char v4, v0, v2

    #@44
    .line 135
    if-eqz v3, :cond_6

    #@46
    .line 136
    add-int/lit8 v1, v2, -0x1

    #@48
    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    const/16 v4, 0x2d

    #@4a
    aput-char v4, v0, v1

    #@4c
    .line 139
    :goto_2
    new-instance v4, Ljava/lang/String;

    #@4e
    rsub-int/lit8 v5, v1, 0x41

    #@50
    invoke-direct {v4, v0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    #@53
    return-object v4

    #@54
    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    :cond_6
    move v1, v2

    #@55
    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    goto :goto_2
.end method

.method private static toUnsignedString(JI)Ljava/lang/String;
    .locals 8
    .param p0, "i"    # J
    .param p2, "shift"    # I

    #@0
    .prologue
    .line 243
    const/16 v5, 0x40

    #@2
    new-array v0, v5, [C

    #@4
    .line 244
    .local v0, "buf":[C
    const/16 v1, 0x40

    #@6
    .line 245
    .local v1, "charPos":I
    const/4 v5, 0x1

    #@7
    shl-int v4, v5, p2

    #@9
    .line 246
    .local v4, "radix":I
    add-int/lit8 v5, v4, -0x1

    #@b
    int-to-long v2, v5

    #@c
    .line 248
    .local v2, "mask":J
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@e
    sget-object v5, Ljava/lang/Integer;->digits:[C

    #@10
    and-long v6, p0, v2

    #@12
    long-to-int v6, v6

    #@13
    aget-char v5, v5, v6

    #@15
    aput-char v5, v0, v1

    #@17
    .line 249
    ushr-long/2addr p0, p2

    #@18
    .line 250
    const-wide/16 v6, 0x0

    #@1a
    cmp-long v5, p0, v6

    #@1c
    if-nez v5, :cond_0

    #@1e
    .line 251
    new-instance v5, Ljava/lang/String;

    #@20
    rsub-int/lit8 v6, v1, 0x40

    #@22
    invoke-direct {v5, v0, v1, v6}, Ljava/lang/String;-><init>([CII)V

    #@25
    return-object v5
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .locals 4
    .param p0, "l"    # J

    #@0
    .prologue
    .line 575
    const/16 v0, 0x80

    #@2
    .line 576
    .local v0, "offset":I
    const-wide/16 v2, -0x80

    #@4
    cmp-long v1, p0, v2

    #@6
    if-ltz v1, :cond_0

    #@8
    const-wide/16 v2, 0x7f

    #@a
    cmp-long v1, p0, v2

    #@c
    if-gtz v1, :cond_0

    #@e
    .line 577
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    #@10
    long-to-int v2, p0

    #@11
    add-int/lit16 v2, v2, 0x80

    #@13
    aget-object v1, v1, v2

    #@15
    return-object v1

    #@16
    .line 579
    :cond_0
    new-instance v1, Ljava/lang/Long;

    #@18
    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    #@1b
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 542
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 515
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
    .line 712
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
    .param p1, "anotherLong"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 967
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
    .param p1, "anotherLong"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 966
    check-cast p1, Ljava/lang/Long;

    #@2
    .end local p1    # "anotherLong":Ljava/lang/Object;
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
    .line 752
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    long-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 808
    instance-of v1, p1, Ljava/lang/Long;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 809
    iget-wide v2, p0, Ljava/lang/Long;->value:J

    #@7
    check-cast p1, Ljava/lang/Long;

    #@9
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@c
    move-result-wide v4

    #@d
    cmp-long v1, v2, v4

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0

    #@13
    .line 811
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 744
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    long-to-float v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 782
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 728
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
    .line 736
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    #@0
    .prologue
    .line 720
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
    .line 766
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    #@2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
