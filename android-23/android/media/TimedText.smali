.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$CharPos;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$HyperText;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field private static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field private static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field private static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field private static final KEY_START_TIME:I = 0x7

.field private static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final KEY_STRUCT_TEXT:I = 0x10

.field private static final KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 90
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 89
    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@c
    .line 92
    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    #@e
    .line 93
    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    #@10
    .line 94
    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    #@12
    .line 95
    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    #@14
    .line 96
    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    #@16
    .line 98
    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    #@18
    .line 99
    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    #@1a
    .line 100
    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    #@1c
    .line 101
    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    #@1e
    .line 102
    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    #@20
    .line 103
    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    #@22
    .line 105
    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    #@24
    .line 106
    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    #@26
    .line 359
    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_0

    #@2c
    .line 360
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@2e
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@31
    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v1, "parseParcel() fails"

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 358
    :cond_0
    return-void
.end method

.method private containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 705
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 706
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 708
    :cond_0
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method private getObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 728
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 729
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 731
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Invalid key: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method

.method private isValidKey(I)Z
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 691
    if-lt p1, v1, :cond_0

    #@3
    const/16 v0, 0x10

    #@5
    if-le p1, v0, :cond_2

    #@7
    .line 692
    :cond_0
    const/16 v0, 0x65

    #@9
    if-lt p1, v0, :cond_1

    #@b
    const/16 v0, 0x6b

    #@d
    if-le p1, v0, :cond_2

    #@f
    .line 693
    :cond_1
    const/4 v0, 0x0

    #@10
    return v0

    #@11
    .line 695
    :cond_2
    return v1
.end method

.method private keySet()Ljava/util/Set;
    .locals 1

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 394
    const/4 v13, 0x0

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    #@6
    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v13

    #@a
    if-nez v13, :cond_0

    #@c
    .line 396
    const/4 v13, 0x0

    #@d
    return v13

    #@e
    .line 399
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v11

    #@12
    .line 400
    .local v11, "type":I
    const/16 v13, 0x66

    #@14
    if-ne v11, v13, :cond_6

    #@16
    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v11

    #@1a
    .line 402
    const/4 v13, 0x7

    #@1b
    if-eq v11, v13, :cond_1

    #@1d
    .line 403
    const/4 v13, 0x0

    #@1e
    return v13

    #@1f
    .line 405
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v5

    #@23
    .line 406
    .local v5, "mStartTimeMs":I
    move-object/from16 v0, p0

    #@25
    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@27
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v14

    #@2b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v15

    #@2f
    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v11

    #@36
    .line 409
    const/16 v13, 0x10

    #@38
    if-eq v11, v13, :cond_2

    #@3a
    .line 410
    const/4 v13, 0x0

    #@3b
    return v13

    #@3c
    .line 413
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v9

    #@40
    .line 414
    .local v9, "textLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    #@43
    move-result-object v8

    #@44
    .line 415
    .local v8, "text":[B
    if-eqz v8, :cond_3

    #@46
    array-length v13, v8

    #@47
    if-nez v13, :cond_5

    #@49
    .line 416
    :cond_3
    const/4 v13, 0x0

    #@4a
    move-object/from16 v0, p0

    #@4c
    iput-object v13, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    #@4e
    .line 426
    .end local v5    # "mStartTimeMs":I
    .end local v8    # "text":[B
    .end local v9    # "textLen":I
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    #@51
    move-result v13

    #@52
    if-lez v13, :cond_9

    #@54
    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v3

    #@58
    .line 428
    .local v3, "key":I
    move-object/from16 v0, p0

    #@5a
    invoke-direct {v0, v3}, Landroid/media/TimedText;->isValidKey(I)Z

    #@5d
    move-result v13

    #@5e
    if-nez v13, :cond_7

    #@60
    .line 429
    const-string/jumbo v13, "TimedText"

    #@63
    new-instance v14, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v15, "Invalid timed text key found: "

    #@6b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v14

    #@6f
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v14

    #@73
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v14

    #@77
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 430
    const/4 v13, 0x0

    #@7b
    return v13

    #@7c
    .line 418
    .end local v3    # "key":I
    .restart local v5    # "mStartTimeMs":I
    .restart local v8    # "text":[B
    .restart local v9    # "textLen":I
    :cond_5
    new-instance v13, Ljava/lang/String;

    #@7e
    invoke-direct {v13, v8}, Ljava/lang/String;-><init>([B)V

    #@81
    move-object/from16 v0, p0

    #@83
    iput-object v13, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    #@85
    goto :goto_0

    #@86
    .line 421
    .end local v5    # "mStartTimeMs":I
    .end local v8    # "text":[B
    .end local v9    # "textLen":I
    :cond_6
    const/16 v13, 0x65

    #@88
    if-eq v11, v13, :cond_4

    #@8a
    .line 422
    const-string/jumbo v13, "TimedText"

    #@8d
    new-instance v14, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v15, "Invalid timed text key found: "

    #@95
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v14

    #@99
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v14

    #@9d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v14

    #@a1
    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a4
    .line 423
    const/4 v13, 0x0

    #@a5
    return v13

    #@a6
    .line 433
    .restart local v3    # "key":I
    :cond_7
    const/4 v6, 0x0

    #@a7
    .line 435
    .local v6, "object":Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    #@aa
    .line 516
    .end local v6    # "object":Ljava/lang/Object;
    :goto_1
    :pswitch_0
    if-eqz v6, :cond_4

    #@ac
    .line 517
    move-object/from16 v0, p0

    #@ae
    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@b0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v14

    #@b4
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@b7
    move-result v13

    #@b8
    if-eqz v13, :cond_8

    #@ba
    .line 518
    move-object/from16 v0, p0

    #@bc
    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@be
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c1
    move-result-object v14

    #@c2
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    .line 521
    :cond_8
    move-object/from16 v0, p0

    #@c7
    iget-object v13, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    #@c9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v14

    #@cd
    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d0
    goto/16 :goto_0

    #@d2
    .line 437
    .restart local v6    # "object":Ljava/lang/Object;
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    #@d5
    .line 438
    move-object/from16 v0, p0

    #@d7
    iget-object v6, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    #@d9
    goto :goto_1

    #@da
    .line 442
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    #@dd
    .line 443
    move-object/from16 v0, p0

    #@df
    iget-object v6, v0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    #@e1
    goto :goto_1

    #@e2
    .line 447
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    #@e5
    .line 448
    move-object/from16 v0, p0

    #@e7
    iget-object v6, v0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    #@e9
    goto :goto_1

    #@ea
    .line 452
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    #@ed
    .line 453
    move-object/from16 v0, p0

    #@ef
    iget-object v6, v0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    #@f1
    goto :goto_1

    #@f2
    .line 457
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    #@f5
    .line 458
    move-object/from16 v0, p0

    #@f7
    iget-object v6, v0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    #@f9
    goto :goto_1

    #@fa
    .line 463
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    #@fd
    .line 464
    move-object/from16 v0, p0

    #@ff
    iget-object v6, v0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    #@101
    goto :goto_1

    #@102
    .line 469
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v13

    #@106
    move-object/from16 v0, p0

    #@108
    iput v13, v0, Landroid/media/TimedText;->mWrapText:I

    #@10a
    .line 470
    move-object/from16 v0, p0

    #@10c
    iget v13, v0, Landroid/media/TimedText;->mWrapText:I

    #@10e
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@111
    move-result-object v6

    #@112
    goto :goto_1

    #@113
    .line 474
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v13

    #@117
    move-object/from16 v0, p0

    #@119
    iput v13, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    #@11b
    .line 475
    move-object/from16 v0, p0

    #@11d
    iget v13, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    #@11f
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@122
    move-result-object v6

    #@123
    goto :goto_1

    #@124
    .line 479
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@127
    move-result v13

    #@128
    move-object/from16 v0, p0

    #@12a
    iput v13, v0, Landroid/media/TimedText;->mDisplayFlags:I

    #@12c
    .line 480
    move-object/from16 v0, p0

    #@12e
    iget v13, v0, Landroid/media/TimedText;->mDisplayFlags:I

    #@130
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@133
    move-result-object v6

    #@134
    goto/16 :goto_1

    #@136
    .line 485
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@139
    move-result v2

    #@13a
    .line 486
    .local v2, "horizontal":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@13d
    move-result v12

    #@13e
    .line 487
    .local v12, "vertical":I
    new-instance v13, Landroid/media/TimedText$Justification;

    #@140
    invoke-direct {v13, v2, v12}, Landroid/media/TimedText$Justification;-><init>(II)V

    #@143
    move-object/from16 v0, p0

    #@145
    iput-object v13, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    #@147
    .line 489
    move-object/from16 v0, p0

    #@149
    iget-object v6, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    #@14b
    goto/16 :goto_1

    #@14d
    .line 493
    .end local v2    # "horizontal":I
    .end local v12    # "vertical":I
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@150
    move-result v13

    #@151
    move-object/from16 v0, p0

    #@153
    iput v13, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    #@155
    .line 494
    move-object/from16 v0, p0

    #@157
    iget v13, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    #@159
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15c
    move-result-object v6

    #@15d
    goto/16 :goto_1

    #@15f
    .line 498
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@162
    move-result v10

    #@163
    .line 499
    .local v10, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@166
    move-result v4

    #@167
    .line 500
    .local v4, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@16a
    move-result v1

    #@16b
    .line 501
    .local v1, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@16e
    move-result v7

    #@16f
    .line 502
    .local v7, "right":I
    new-instance v13, Landroid/graphics/Rect;

    #@171
    invoke-direct {v13, v4, v10, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@174
    move-object/from16 v0, p0

    #@176
    iput-object v13, v0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    #@178
    goto/16 :goto_1

    #@17a
    .line 507
    .end local v1    # "bottom":I
    .end local v4    # "left":I
    .end local v7    # "right":I
    .end local v10    # "top":I
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    #@17d
    move-result v13

    #@17e
    move-object/from16 v0, p0

    #@180
    iput v13, v0, Landroid/media/TimedText;->mScrollDelay:I

    #@182
    .line 508
    move-object/from16 v0, p0

    #@184
    iget v13, v0, Landroid/media/TimedText;->mScrollDelay:I

    #@186
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@189
    move-result-object v6

    #@18a
    goto/16 :goto_1

    #@18c
    .line 525
    .end local v3    # "key":I
    .end local v6    # "object":Ljava/lang/Object;
    :cond_9
    const/4 v13, 0x1

    #@18d
    return v13

    #@18e
    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 676
    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 677
    .local v1, "endChar":I
    new-instance v0, Landroid/media/TimedText$CharPos;

    #@a
    invoke-direct {v0, v2, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    #@d
    .line 679
    .local v0, "blinkingPos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    #@f
    if-nez v3, :cond_0

    #@11
    .line 680
    new-instance v3, Ljava/util/ArrayList;

    #@13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    #@18
    .line 682
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    #@1a
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    .line 674
    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 597
    .local v0, "entryCount":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@7
    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v3

    #@b
    .line 599
    .local v3, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v5

    #@f
    .line 601
    .local v5, "nameLen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@12
    move-result-object v6

    #@13
    .line 602
    .local v6, "text":[B
    new-instance v4, Ljava/lang/String;

    #@15
    const/4 v7, 0x0

    #@16
    invoke-direct {v4, v6, v7, v5}, Ljava/lang/String;-><init>([BII)V

    #@19
    .line 604
    .local v4, "name":Ljava/lang/String;
    new-instance v1, Landroid/media/TimedText$Font;

    #@1b
    invoke-direct {v1, v3, v4}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    #@1e
    .line 606
    .local v1, "font":Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    #@20
    if-nez v7, :cond_0

    #@22
    .line 607
    new-instance v7, Ljava/util/ArrayList;

    #@24
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@27
    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    #@29
    .line 609
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    #@2b
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 597
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 594
    .end local v1    # "font":Landroid/media/TimedText$Font;
    .end local v3    # "id":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "nameLen":I
    .end local v6    # "text":[B
    :cond_1
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 618
    .local v2, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    .line 619
    .local v0, "endChar":I
    new-instance v1, Landroid/media/TimedText$CharPos;

    #@a
    invoke-direct {v1, v2, v0}, Landroid/media/TimedText$CharPos;-><init>(II)V

    #@d
    .line 621
    .local v1, "pos":Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    #@f
    if-nez v3, :cond_0

    #@11
    .line 622
    new-instance v3, Ljava/util/ArrayList;

    #@13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    #@18
    .line 624
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    #@1a
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    .line 616
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v5

    #@5
    .line 653
    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    .line 655
    .local v2, "endChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v4

    #@d
    .line 656
    .local v4, "len":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@10
    move-result-object v6

    #@11
    .line 657
    .local v6, "url":[B
    new-instance v7, Ljava/lang/String;

    #@13
    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([BII)V

    #@16
    .line 659
    .local v7, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v4

    #@1a
    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@1d
    move-result-object v0

    #@1e
    .line 661
    .local v0, "alt":[B
    new-instance v1, Ljava/lang/String;

    #@20
    invoke-direct {v1, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    #@23
    .line 662
    .local v1, "altString":Ljava/lang/String;
    new-instance v3, Landroid/media/TimedText$HyperText;

    #@25
    invoke-direct {v3, v5, v2, v7, v1}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@28
    .line 665
    .local v3, "hyperText":Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    #@2a
    if-nez v8, :cond_0

    #@2c
    .line 666
    new-instance v8, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@31
    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    #@33
    .line 668
    :cond_0
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    #@35
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 651
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 633
    .local v2, "entryCount":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    #@7
    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v6

    #@b
    .line 635
    .local v6, "startTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    .line 636
    .local v1, "endTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v5

    #@13
    .line 637
    .local v5, "startChar":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    .line 638
    .local v0, "endChar":I
    new-instance v4, Landroid/media/TimedText$Karaoke;

    #@19
    invoke-direct {v4, v6, v1, v5, v0}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    #@1c
    .line 641
    .local v4, "kara":Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    #@1e
    if-nez v7, :cond_0

    #@20
    .line 642
    new-instance v7, Ljava/util/ArrayList;

    #@22
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@25
    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    #@27
    .line 644
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    #@29
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    .line 633
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 630
    .end local v0    # "endChar":I
    .end local v1    # "endTimeMs":I
    .end local v4    # "kara":Landroid/media/TimedText$Karaoke;
    .end local v5    # "startChar":I
    .end local v6    # "startTimeMs":I
    :cond_1
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 532
    const/4 v9, 0x0

    #@1
    .line 533
    .local v9, "endOfStyle":Z
    const/4 v1, -0x1

    #@2
    .line 534
    .local v1, "startChar":I
    const/4 v2, -0x1

    #@3
    .line 535
    .local v2, "endChar":I
    const/4 v3, -0x1

    #@4
    .line 536
    .local v3, "fontId":I
    const/4 v4, 0x0

    #@5
    .line 537
    .local v4, "isBold":Z
    const/4 v5, 0x0

    #@6
    .line 538
    .local v5, "isItalic":Z
    const/4 v6, 0x0

    #@7
    .line 539
    .local v6, "isUnderlined":Z
    const/4 v7, -0x1

    #@8
    .line 540
    .local v7, "fontSize":I
    const/4 v8, -0x1

    #@9
    .line 541
    .local v8, "colorRGBA":I
    :goto_0
    if-nez v9, :cond_3

    #@b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    #@e
    move-result v12

    #@f
    if-lez v12, :cond_3

    #@11
    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v11

    #@15
    .line 543
    .local v11, "key":I
    sparse-switch v11, :sswitch_data_0

    #@18
    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@1b
    move-result v12

    #@1c
    add-int/lit8 v12, v12, -0x4

    #@1e
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    #@21
    .line 577
    const/4 v9, 0x1

    #@22
    .line 578
    goto :goto_0

    #@23
    .line 545
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    goto :goto_0

    #@28
    .line 549
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v2

    #@2c
    goto :goto_0

    #@2d
    .line 553
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v3

    #@31
    goto :goto_0

    #@32
    .line 557
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v10

    #@36
    .line 560
    .local v10, "flags":I
    rem-int/lit8 v12, v10, 0x2

    #@38
    const/4 v13, 0x1

    #@39
    if-ne v12, v13, :cond_0

    #@3b
    const/4 v4, 0x1

    #@3c
    .line 561
    :goto_1
    rem-int/lit8 v12, v10, 0x4

    #@3e
    const/4 v13, 0x2

    #@3f
    if-lt v12, v13, :cond_1

    #@41
    const/4 v5, 0x1

    #@42
    .line 562
    :goto_2
    div-int/lit8 v12, v10, 0x4

    #@44
    const/4 v13, 0x1

    #@45
    if-ne v12, v13, :cond_2

    #@47
    const/4 v6, 0x1

    #@48
    goto :goto_0

    #@49
    .line 560
    :cond_0
    const/4 v4, 0x0

    #@4a
    goto :goto_1

    #@4b
    .line 561
    :cond_1
    const/4 v5, 0x0

    #@4c
    goto :goto_2

    #@4d
    .line 562
    :cond_2
    const/4 v6, 0x0

    #@4e
    goto :goto_0

    #@4f
    .line 566
    .end local v10    # "flags":I
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v7

    #@53
    goto :goto_0

    #@54
    .line 570
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v8

    #@58
    goto :goto_0

    #@59
    .line 583
    .end local v11    # "key":I
    :cond_3
    new-instance v0, Landroid/media/TimedText$Style;

    #@5b
    invoke-direct/range {v0 .. v8}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    #@5e
    .line 585
    .local v0, "style":Landroid/media/TimedText$Style;
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    #@60
    if-nez v12, :cond_4

    #@62
    .line 586
    new-instance v12, Ljava/util/ArrayList;

    #@64
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@67
    iput-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    #@69
    .line 588
    :cond_4
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    #@6b
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6e
    .line 531
    return-void

    #@6f
    .line 543
    nop

    #@70
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    #@2
    return-object v0
.end method
