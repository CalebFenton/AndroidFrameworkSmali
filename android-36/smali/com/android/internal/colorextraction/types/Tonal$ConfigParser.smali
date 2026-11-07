.class public Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigParser"
.end annotation


# instance fields
.field private final blacklist mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    .line 483
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 484
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 485
    .local v1, "eventType":I
    :goto_19
    const/4 v2, 0x1

    if-eq v1, v2, :cond_63

    .line 486
    if-eqz v1, :cond_5d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    goto :goto_5d

    .line 489
    :cond_22
    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    .line 490
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "tagName":Ljava/lang/String;
    const-string v3, "palettes"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 492
    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->parsePalettes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 494
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_34
    goto :goto_5d

    .line 495
    :cond_35
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid XML event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 496
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
    .end local p1    # "context":Landroid/content/Context;
    throw v2

    .line 498
    .restart local p0    # "this":Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_5d
    :goto_5d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_61} :catch_65
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_61} :catch_65

    move v1, v2

    goto :goto_19

    .line 502
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "eventType":I
    :cond_63
    nop

    .line 503
    return-void

    .line 500
    :catch_65
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist parsePalettes(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    const/4 v0, 0x0

    const-string v1, "palettes"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_47

    .line 528
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_15

    .line 529
    goto :goto_7

    .line 531
    :cond_15
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "name":Ljava/lang/String;
    const-string v1, "palette"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 534
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readPalette(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 539
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_7

    .line 537
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2e
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    .end local v0    # "name":Ljava/lang/String;
    :cond_47
    return-void
.end method

.method private blacklist readFloatArray(Ljava/lang/String;)[F
    .registers 6
    .param p1, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 559
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [F

    .line 561
    .local v1, "numbers":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v3, v0

    if-ge v2, v3, :cond_26

    .line 562
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 564
    .end local v2    # "i":I
    :cond_26
    return-object v1
.end method

.method private blacklist readPalette(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    const-string v0, "palette"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "h"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 547
    .local v0, "h":[F
    const-string/jumbo v1, "s"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 548
    .local v1, "s":[F
    const-string v3, "l"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 550
    .local v3, "l":[F
    if-eqz v0, :cond_32

    if-eqz v1, :cond_32

    if-eqz v3, :cond_32

    .line 554
    new-instance v2, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;-><init>([F[F[F)V

    return-object v2

    .line 551
    :cond_32
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Incomplete range tag."

    invoke-direct {v4, v5, p1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private blacklist readRange(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    const-string/jumbo v0, "range"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "h"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    .line 513
    .local v0, "h":[F
    const-string/jumbo v1, "s"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    .line 514
    .local v1, "s":[F
    const-string v3, "l"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->readFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 516
    .local v3, "l":[F
    if-eqz v0, :cond_68

    if-eqz v1, :cond_68

    if-eqz v3, :cond_68

    .line 520
    new-instance v2, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    new-instance v4, Landroid/util/Range;

    const/4 v5, 0x0

    aget v6, v0, v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    aget v8, v0, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v4, v6, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Landroid/util/Range;

    aget v8, v1, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aget v9, v1, v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v8, Landroid/util/Range;

    aget v5, v3, v5

    .line 521
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aget v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v8, v5, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v2, v4, v6, v8}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;-><init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 520
    return-object v2

    .line 517
    :cond_68
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Incomplete range tag."

    invoke-direct {v4, v5, p1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public blacklist getTonalPalettes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->mTonalPalettes:Ljava/util/ArrayList;

    return-object v0
.end method
