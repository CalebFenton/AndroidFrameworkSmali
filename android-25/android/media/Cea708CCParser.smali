.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$1;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionWindow;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final mBuffer:Ljava/lang/StringBuffer;

.field private mCommand:I

.field private mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 191
    new-instance v0, Ljava/lang/String;

    #@2
    .line 192
    const-string/jumbo v1, "\u266b"

    #@5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@a
    move-result-object v1

    #@b
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@d
    .line 191
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@10
    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    #@12
    .line 187
    return-void
.end method

.method constructor <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/Cea708CCParser$DisplayListener;

    #@0
    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@a
    .line 195
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@d
    .line 198
    new-instance v0, Landroid/media/Cea708CCParser$1;

    #@f
    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    #@12
    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    #@14
    .line 241
    if-eqz p1, :cond_0

    #@16
    .line 242
    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    #@18
    .line 240
    :cond_0
    return-void
.end method

.method private emitCaptionBuffer()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 257
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 258
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    #@b
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    #@d
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    const/4 v3, 0x1

    #@14
    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@17
    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@1a
    .line 259
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@1c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    #@1f
    .line 256
    :cond_0
    return-void
.end method

.method private emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1
    .param p1, "captionEvent"    # Landroid/media/Cea708CCParser$CaptionEvent;

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    #@3
    .line 253
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    #@5
    invoke-interface {v0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@8
    .line 250
    return-void
.end method

.method private parseC0([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    const/16 v5, 0x18

    #@2
    const/4 v4, 0x2

    #@3
    .line 317
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@5
    if-lt v2, v5, :cond_2

    #@7
    .line 318
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@9
    const/16 v3, 0x1f

    #@b
    if-gt v2, v3, :cond_2

    #@d
    .line 319
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@f
    if-ne v2, v5, :cond_0

    #@11
    .line 323
    :try_start_0
    aget-byte v2, p1, p2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 324
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@17
    add-int/lit8 v3, p2, 0x1

    #@19
    aget-byte v3, p1, v3

    #@1b
    int-to-char v3, v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1f
    .line 333
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x2

    #@21
    .line 365
    :goto_1
    :sswitch_0
    return p2

    #@22
    .line 326
    :cond_1
    new-instance v1, Ljava/lang/String;

    #@24
    add-int/lit8 v2, p2, 0x2

    #@26
    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "EUC-KR"

    #@2d
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@30
    .line 327
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 329
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@37
    .line 330
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "Cea708CCParser"

    #@3a
    const-string/jumbo v3, "P16 Code - Could not find supported encoding"

    #@3d
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    goto :goto_0

    #@41
    .line 334
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@43
    const/16 v3, 0x10

    #@45
    if-lt v2, v3, :cond_3

    #@47
    .line 335
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@49
    const/16 v3, 0x17

    #@4b
    if-gt v2, v3, :cond_3

    #@4d
    .line 336
    add-int/lit8 p2, p2, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 343
    :cond_3
    iget v2, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@52
    sparse-switch v2, :sswitch_data_0

    #@55
    goto :goto_1

    #@56
    .line 347
    :sswitch_1
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    #@58
    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@5a
    int-to-char v3, v3

    #@5b
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@5e
    move-result-object v3

    #@5f
    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@62
    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@65
    goto :goto_1

    #@66
    .line 350
    :sswitch_2
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    #@68
    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@6a
    int-to-char v3, v3

    #@6b
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@6e
    move-result-object v3

    #@6f
    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@72
    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@75
    goto :goto_1

    #@76
    .line 353
    :sswitch_3
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    #@78
    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@7a
    int-to-char v3, v3

    #@7b
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@7e
    move-result-object v3

    #@7f
    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@82
    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@85
    goto :goto_1

    #@86
    .line 356
    :sswitch_4
    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@88
    const/16 v3, 0xa

    #@8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8d
    goto :goto_1

    #@8e
    .line 359
    :sswitch_5
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    #@90
    iget v3, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@92
    int-to-char v3, v3

    #@93
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@96
    move-result-object v3

    #@97
    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@9a
    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@9d
    goto :goto_1

    #@9e
    .line 343
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
    .end sparse-switch
.end method

.method private parseC1([BI)I
    .locals 49
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 371
    move-object/from16 v0, p0

    #@2
    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    #@4
    packed-switch v5, :pswitch_data_0

    #@7
    .line 621
    :goto_0
    :pswitch_0
    return p2

    #@8
    .line 381
    :pswitch_1
    move-object/from16 v0, p0

    #@a
    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    #@c
    add-int/lit8 v25, v5, -0x80

    #@e
    .line 382
    .local v25, "windowId":I
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@10
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v13

    #@14
    const/16 v24, 0x3

    #@16
    move/from16 v0, v24

    #@18
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@1b
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@20
    goto :goto_0

    #@21
    .line 391
    .end local v25    # "windowId":I
    :pswitch_2
    aget-byte v5, p1, p2

    #@23
    and-int/lit16 v0, v5, 0xff

    #@25
    move/from16 v48, v0

    #@27
    .line 392
    .local v48, "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    #@29
    .line 393
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@2b
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v13

    #@2f
    const/16 v24, 0x4

    #@31
    move/from16 v0, v24

    #@33
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@36
    move-object/from16 v0, p0

    #@38
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@3b
    goto :goto_0

    #@3c
    .line 402
    .end local v48    # "windowBitmap":I
    :pswitch_3
    aget-byte v5, p1, p2

    #@3e
    and-int/lit16 v0, v5, 0xff

    #@40
    move/from16 v48, v0

    #@42
    .line 403
    .restart local v48    # "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    #@44
    .line 404
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@46
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@49
    move-result-object v13

    #@4a
    const/16 v24, 0x5

    #@4c
    move/from16 v0, v24

    #@4e
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@51
    move-object/from16 v0, p0

    #@53
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@56
    goto :goto_0

    #@57
    .line 413
    .end local v48    # "windowBitmap":I
    :pswitch_4
    aget-byte v5, p1, p2

    #@59
    and-int/lit16 v0, v5, 0xff

    #@5b
    move/from16 v48, v0

    #@5d
    .line 414
    .restart local v48    # "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    #@5f
    .line 415
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@61
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@64
    move-result-object v13

    #@65
    const/16 v24, 0x6

    #@67
    move/from16 v0, v24

    #@69
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@71
    goto :goto_0

    #@72
    .line 424
    .end local v48    # "windowBitmap":I
    :pswitch_5
    aget-byte v5, p1, p2

    #@74
    and-int/lit16 v0, v5, 0xff

    #@76
    move/from16 v48, v0

    #@78
    .line 425
    .restart local v48    # "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    #@7a
    .line 426
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@7c
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7f
    move-result-object v13

    #@80
    const/16 v24, 0x7

    #@82
    move/from16 v0, v24

    #@84
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@87
    move-object/from16 v0, p0

    #@89
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@8c
    goto/16 :goto_0

    #@8e
    .line 435
    .end local v48    # "windowBitmap":I
    :pswitch_6
    aget-byte v5, p1, p2

    #@90
    and-int/lit16 v0, v5, 0xff

    #@92
    move/from16 v48, v0

    #@94
    .line 436
    .restart local v48    # "windowBitmap":I
    add-int/lit8 p2, p2, 0x1

    #@96
    .line 437
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@98
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9b
    move-result-object v13

    #@9c
    const/16 v24, 0x8

    #@9e
    move/from16 v0, v24

    #@a0
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@a3
    move-object/from16 v0, p0

    #@a5
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@a8
    goto/16 :goto_0

    #@aa
    .line 446
    .end local v48    # "windowBitmap":I
    :pswitch_7
    aget-byte v5, p1, p2

    #@ac
    and-int/lit16 v0, v5, 0xff

    #@ae
    move/from16 v47, v0

    #@b0
    .line 447
    .local v47, "tenthsOfSeconds":I
    add-int/lit8 p2, p2, 0x1

    #@b2
    .line 448
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@b4
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b7
    move-result-object v13

    #@b8
    const/16 v24, 0x9

    #@ba
    move/from16 v0, v24

    #@bc
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@bf
    move-object/from16 v0, p0

    #@c1
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 457
    .end local v47    # "tenthsOfSeconds":I
    :pswitch_8
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@c8
    const/16 v13, 0xa

    #@ca
    const/16 v24, 0x0

    #@cc
    move-object/from16 v0, v24

    #@ce
    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@d1
    move-object/from16 v0, p0

    #@d3
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 466
    :pswitch_9
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@da
    const/16 v13, 0xb

    #@dc
    const/16 v24, 0x0

    #@de
    move-object/from16 v0, v24

    #@e0
    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@e3
    move-object/from16 v0, p0

    #@e5
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@e8
    goto/16 :goto_0

    #@ea
    .line 475
    :pswitch_a
    aget-byte v5, p1, p2

    #@ec
    and-int/lit16 v5, v5, 0xf0

    #@ee
    shr-int/lit8 v8, v5, 0x4

    #@f0
    .line 476
    .local v8, "textTag":I
    aget-byte v5, p1, p2

    #@f2
    and-int/lit8 v6, v5, 0x3

    #@f4
    .line 477
    .local v6, "penSize":I
    aget-byte v5, p1, p2

    #@f6
    and-int/lit8 v5, v5, 0xc

    #@f8
    shr-int/lit8 v7, v5, 0x2

    #@fa
    .line 478
    .local v7, "penOffset":I
    add-int/lit8 v5, p2, 0x1

    #@fc
    aget-byte v5, p1, v5

    #@fe
    and-int/lit16 v5, v5, 0x80

    #@100
    if-eqz v5, :cond_0

    #@102
    const/4 v12, 0x1

    #@103
    .line 479
    .local v12, "italic":Z
    :goto_1
    add-int/lit8 v5, p2, 0x1

    #@105
    aget-byte v5, p1, v5

    #@107
    and-int/lit8 v5, v5, 0x40

    #@109
    if-eqz v5, :cond_1

    #@10b
    const/4 v11, 0x1

    #@10c
    .line 480
    .local v11, "underline":Z
    :goto_2
    add-int/lit8 v5, p2, 0x1

    #@10e
    aget-byte v5, p1, v5

    #@110
    and-int/lit8 v5, v5, 0x38

    #@112
    shr-int/lit8 v10, v5, 0x3

    #@114
    .line 481
    .local v10, "edgeType":I
    add-int/lit8 v5, p2, 0x1

    #@116
    aget-byte v5, p1, v5

    #@118
    and-int/lit8 v9, v5, 0x7

    #@11a
    .line 482
    .local v9, "fontTag":I
    add-int/lit8 p2, p2, 0x2

    #@11c
    .line 483
    new-instance v13, Landroid/media/Cea708CCParser$CaptionEvent;

    #@11e
    .line 484
    new-instance v5, Landroid/media/Cea708CCParser$CaptionPenAttr;

    #@120
    invoke-direct/range {v5 .. v12}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    #@123
    .line 483
    const/16 v24, 0xc

    #@125
    move/from16 v0, v24

    #@127
    invoke-direct {v13, v0, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@12a
    move-object/from16 v0, p0

    #@12c
    invoke-direct {v0, v13}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@12f
    goto/16 :goto_0

    #@131
    .line 478
    .end local v9    # "fontTag":I
    .end local v10    # "edgeType":I
    .end local v11    # "underline":Z
    .end local v12    # "italic":Z
    :cond_0
    const/4 v12, 0x0

    #@132
    .restart local v12    # "italic":Z
    goto :goto_1

    #@133
    .line 479
    :cond_1
    const/4 v11, 0x0

    #@134
    .restart local v11    # "underline":Z
    goto :goto_2

    #@135
    .line 497
    .end local v6    # "penSize":I
    .end local v7    # "penOffset":I
    .end local v8    # "textTag":I
    .end local v11    # "underline":Z
    .end local v12    # "italic":Z
    :pswitch_b
    aget-byte v5, p1, p2

    #@137
    and-int/lit16 v5, v5, 0xc0

    #@139
    shr-int/lit8 v44, v5, 0x6

    #@13b
    .line 498
    .local v44, "opacity":I
    aget-byte v5, p1, p2

    #@13d
    and-int/lit8 v5, v5, 0x30

    #@13f
    shr-int/lit8 v45, v5, 0x4

    #@141
    .line 499
    .local v45, "red":I
    aget-byte v5, p1, p2

    #@143
    and-int/lit8 v5, v5, 0xc

    #@145
    shr-int/lit8 v43, v5, 0x2

    #@147
    .line 500
    .local v43, "green":I
    aget-byte v5, p1, p2

    #@149
    and-int/lit8 v39, v5, 0x3

    #@14b
    .line 501
    .local v39, "blue":I
    new-instance v42, Landroid/media/Cea708CCParser$CaptionColor;

    #@14d
    move-object/from16 v0, v42

    #@14f
    move/from16 v1, v44

    #@151
    move/from16 v2, v45

    #@153
    move/from16 v3, v43

    #@155
    move/from16 v4, v39

    #@157
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    #@15a
    .line 502
    .local v42, "foregroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 p2, p2, 0x1

    #@15c
    .line 503
    aget-byte v5, p1, p2

    #@15e
    and-int/lit16 v5, v5, 0xc0

    #@160
    shr-int/lit8 v44, v5, 0x6

    #@162
    .line 504
    aget-byte v5, p1, p2

    #@164
    and-int/lit8 v5, v5, 0x30

    #@166
    shr-int/lit8 v45, v5, 0x4

    #@168
    .line 505
    aget-byte v5, p1, p2

    #@16a
    and-int/lit8 v5, v5, 0xc

    #@16c
    shr-int/lit8 v43, v5, 0x2

    #@16e
    .line 506
    aget-byte v5, p1, p2

    #@170
    and-int/lit8 v39, v5, 0x3

    #@172
    .line 507
    new-instance v38, Landroid/media/Cea708CCParser$CaptionColor;

    #@174
    move-object/from16 v0, v38

    #@176
    move/from16 v1, v44

    #@178
    move/from16 v2, v45

    #@17a
    move/from16 v3, v43

    #@17c
    move/from16 v4, v39

    #@17e
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    #@181
    .line 508
    .local v38, "backgroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 p2, p2, 0x1

    #@183
    .line 509
    aget-byte v5, p1, p2

    #@185
    and-int/lit8 v5, v5, 0x30

    #@187
    shr-int/lit8 v45, v5, 0x4

    #@189
    .line 510
    aget-byte v5, p1, p2

    #@18b
    and-int/lit8 v5, v5, 0xc

    #@18d
    shr-int/lit8 v43, v5, 0x2

    #@18f
    .line 511
    aget-byte v5, p1, p2

    #@191
    and-int/lit8 v39, v5, 0x3

    #@193
    .line 512
    new-instance v41, Landroid/media/Cea708CCParser$CaptionColor;

    #@195
    .line 513
    const/4 v5, 0x0

    #@196
    .line 512
    move-object/from16 v0, v41

    #@198
    move/from16 v1, v45

    #@19a
    move/from16 v2, v43

    #@19c
    move/from16 v3, v39

    #@19e
    invoke-direct {v0, v5, v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    #@1a1
    .line 514
    .local v41, "edgeColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 p2, p2, 0x1

    #@1a3
    .line 515
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@1a5
    .line 516
    new-instance v13, Landroid/media/Cea708CCParser$CaptionPenColor;

    #@1a7
    move-object/from16 v0, v42

    #@1a9
    move-object/from16 v1, v38

    #@1ab
    move-object/from16 v2, v41

    #@1ad
    invoke-direct {v13, v0, v1, v2}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    #@1b0
    .line 515
    const/16 v24, 0xd

    #@1b2
    move/from16 v0, v24

    #@1b4
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@1bc
    goto/16 :goto_0

    #@1be
    .line 528
    .end local v38    # "backgroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v39    # "blue":I
    .end local v41    # "edgeColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v42    # "foregroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v43    # "green":I
    .end local v44    # "opacity":I
    .end local v45    # "red":I
    :pswitch_c
    aget-byte v5, p1, p2

    #@1c0
    and-int/lit8 v46, v5, 0xf

    #@1c2
    .line 529
    .local v46, "row":I
    add-int/lit8 v5, p2, 0x1

    #@1c4
    aget-byte v5, p1, v5

    #@1c6
    and-int/lit8 v40, v5, 0x3f

    #@1c8
    .line 530
    .local v40, "column":I
    add-int/lit8 p2, p2, 0x2

    #@1ca
    .line 531
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@1cc
    .line 532
    new-instance v13, Landroid/media/Cea708CCParser$CaptionPenLocation;

    #@1ce
    move/from16 v0, v46

    #@1d0
    move/from16 v1, v40

    #@1d2
    invoke-direct {v13, v0, v1}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    #@1d5
    .line 531
    const/16 v24, 0xe

    #@1d7
    move/from16 v0, v24

    #@1d9
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@1dc
    move-object/from16 v0, p0

    #@1de
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@1e1
    goto/16 :goto_0

    #@1e3
    .line 542
    .end local v40    # "column":I
    .end local v46    # "row":I
    :pswitch_d
    aget-byte v5, p1, p2

    #@1e5
    and-int/lit16 v5, v5, 0xc0

    #@1e7
    shr-int/lit8 v44, v5, 0x6

    #@1e9
    .line 543
    .restart local v44    # "opacity":I
    aget-byte v5, p1, p2

    #@1eb
    and-int/lit8 v5, v5, 0x30

    #@1ed
    shr-int/lit8 v45, v5, 0x4

    #@1ef
    .line 544
    .restart local v45    # "red":I
    aget-byte v5, p1, p2

    #@1f1
    and-int/lit8 v5, v5, 0xc

    #@1f3
    shr-int/lit8 v43, v5, 0x2

    #@1f5
    .line 545
    .restart local v43    # "green":I
    aget-byte v5, p1, p2

    #@1f7
    and-int/lit8 v39, v5, 0x3

    #@1f9
    .line 546
    .restart local v39    # "blue":I
    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    #@1fb
    move/from16 v0, v44

    #@1fd
    move/from16 v1, v45

    #@1ff
    move/from16 v2, v43

    #@201
    move/from16 v3, v39

    #@203
    invoke-direct {v14, v0, v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    #@206
    .line 547
    .local v14, "fillColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v5, p2, 0x1

    #@208
    aget-byte v5, p1, v5

    #@20a
    and-int/lit16 v5, v5, 0xc0

    #@20c
    shr-int/lit8 v5, v5, 0x6

    #@20e
    add-int/lit8 v13, p2, 0x2

    #@210
    aget-byte v13, p1, v13

    #@212
    and-int/lit16 v13, v13, 0x80

    #@214
    shr-int/lit8 v13, v13, 0x5

    #@216
    or-int v16, v5, v13

    #@218
    .line 548
    .local v16, "borderType":I
    add-int/lit8 v5, p2, 0x1

    #@21a
    aget-byte v5, p1, v5

    #@21c
    and-int/lit8 v5, v5, 0x30

    #@21e
    shr-int/lit8 v45, v5, 0x4

    #@220
    .line 549
    add-int/lit8 v5, p2, 0x1

    #@222
    aget-byte v5, p1, v5

    #@224
    and-int/lit8 v5, v5, 0xc

    #@226
    shr-int/lit8 v43, v5, 0x2

    #@228
    .line 550
    add-int/lit8 v5, p2, 0x1

    #@22a
    aget-byte v5, p1, v5

    #@22c
    and-int/lit8 v39, v5, 0x3

    #@22e
    .line 551
    new-instance v15, Landroid/media/Cea708CCParser$CaptionColor;

    #@230
    .line 552
    const/4 v5, 0x0

    #@231
    .line 551
    move/from16 v0, v45

    #@233
    move/from16 v1, v43

    #@235
    move/from16 v2, v39

    #@237
    invoke-direct {v15, v5, v0, v1, v2}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    #@23a
    .line 553
    .local v15, "borderColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v5, p2, 0x2

    #@23c
    aget-byte v5, p1, v5

    #@23e
    and-int/lit8 v5, v5, 0x40

    #@240
    if-eqz v5, :cond_2

    #@242
    const/16 v17, 0x1

    #@244
    .line 554
    .local v17, "wordWrap":Z
    :goto_3
    add-int/lit8 v5, p2, 0x2

    #@246
    aget-byte v5, p1, v5

    #@248
    and-int/lit8 v5, v5, 0x30

    #@24a
    shr-int/lit8 v18, v5, 0x4

    #@24c
    .line 555
    .local v18, "printDirection":I
    add-int/lit8 v5, p2, 0x2

    #@24e
    aget-byte v5, p1, v5

    #@250
    and-int/lit8 v5, v5, 0xc

    #@252
    shr-int/lit8 v19, v5, 0x2

    #@254
    .line 556
    .local v19, "scrollDirection":I
    add-int/lit8 v5, p2, 0x2

    #@256
    aget-byte v5, p1, v5

    #@258
    and-int/lit8 v20, v5, 0x3

    #@25a
    .line 557
    .local v20, "justify":I
    add-int/lit8 v5, p2, 0x3

    #@25c
    aget-byte v5, p1, v5

    #@25e
    and-int/lit16 v5, v5, 0xf0

    #@260
    shr-int/lit8 v22, v5, 0x4

    #@262
    .line 558
    .local v22, "effectSpeed":I
    add-int/lit8 v5, p2, 0x3

    #@264
    aget-byte v5, p1, v5

    #@266
    and-int/lit8 v5, v5, 0xc

    #@268
    shr-int/lit8 v21, v5, 0x2

    #@26a
    .line 559
    .local v21, "effectDirection":I
    add-int/lit8 v5, p2, 0x3

    #@26c
    aget-byte v5, p1, v5

    #@26e
    and-int/lit8 v23, v5, 0x3

    #@270
    .line 560
    .local v23, "displayEffect":I
    add-int/lit8 p2, p2, 0x4

    #@272
    .line 561
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@274
    .line 562
    new-instance v13, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    #@276
    invoke-direct/range {v13 .. v23}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    #@279
    .line 561
    const/16 v24, 0xf

    #@27b
    move/from16 v0, v24

    #@27d
    invoke-direct {v5, v0, v13}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@280
    move-object/from16 v0, p0

    #@282
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@285
    goto/16 :goto_0

    #@287
    .line 553
    .end local v17    # "wordWrap":Z
    .end local v18    # "printDirection":I
    .end local v19    # "scrollDirection":I
    .end local v20    # "justify":I
    .end local v21    # "effectDirection":I
    .end local v22    # "effectSpeed":I
    .end local v23    # "displayEffect":I
    :cond_2
    const/16 v17, 0x0

    #@289
    .restart local v17    # "wordWrap":Z
    goto :goto_3

    #@28a
    .line 586
    .end local v14    # "fillColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v15    # "borderColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v16    # "borderType":I
    .end local v17    # "wordWrap":Z
    .end local v39    # "blue":I
    .end local v43    # "green":I
    .end local v44    # "opacity":I
    .end local v45    # "red":I
    :pswitch_e
    move-object/from16 v0, p0

    #@28c
    iget v5, v0, Landroid/media/Cea708CCParser;->mCommand:I

    #@28e
    add-int/lit16 v0, v5, -0x98

    #@290
    move/from16 v25, v0

    #@292
    .line 587
    .restart local v25    # "windowId":I
    aget-byte v5, p1, p2

    #@294
    and-int/lit8 v5, v5, 0x20

    #@296
    if-eqz v5, :cond_3

    #@298
    const/16 v26, 0x1

    #@29a
    .line 588
    .local v26, "visible":Z
    :goto_4
    aget-byte v5, p1, p2

    #@29c
    and-int/lit8 v5, v5, 0x10

    #@29e
    if-eqz v5, :cond_4

    #@2a0
    const/16 v27, 0x1

    #@2a2
    .line 589
    .local v27, "rowLock":Z
    :goto_5
    aget-byte v5, p1, p2

    #@2a4
    and-int/lit8 v5, v5, 0x8

    #@2a6
    if-eqz v5, :cond_5

    #@2a8
    const/16 v28, 0x1

    #@2aa
    .line 590
    .local v28, "columnLock":Z
    :goto_6
    aget-byte v5, p1, p2

    #@2ac
    and-int/lit8 v29, v5, 0x7

    #@2ae
    .line 591
    .local v29, "priority":I
    add-int/lit8 v5, p2, 0x1

    #@2b0
    aget-byte v5, p1, v5

    #@2b2
    and-int/lit16 v5, v5, 0x80

    #@2b4
    if-eqz v5, :cond_6

    #@2b6
    const/16 v30, 0x1

    #@2b8
    .line 592
    .local v30, "relativePositioning":Z
    :goto_7
    add-int/lit8 v5, p2, 0x1

    #@2ba
    aget-byte v5, p1, v5

    #@2bc
    and-int/lit8 v31, v5, 0x7f

    #@2be
    .line 593
    .local v31, "anchorVertical":I
    add-int/lit8 v5, p2, 0x2

    #@2c0
    aget-byte v5, p1, v5

    #@2c2
    and-int/lit16 v0, v5, 0xff

    #@2c4
    move/from16 v32, v0

    #@2c6
    .line 594
    .local v32, "anchorHorizontal":I
    add-int/lit8 v5, p2, 0x3

    #@2c8
    aget-byte v5, p1, v5

    #@2ca
    and-int/lit16 v5, v5, 0xf0

    #@2cc
    shr-int/lit8 v33, v5, 0x4

    #@2ce
    .line 595
    .local v33, "anchorId":I
    add-int/lit8 v5, p2, 0x3

    #@2d0
    aget-byte v5, p1, v5

    #@2d2
    and-int/lit8 v34, v5, 0xf

    #@2d4
    .line 596
    .local v34, "rowCount":I
    add-int/lit8 v5, p2, 0x4

    #@2d6
    aget-byte v5, p1, v5

    #@2d8
    and-int/lit8 v35, v5, 0x3f

    #@2da
    .line 597
    .local v35, "columnCount":I
    add-int/lit8 v5, p2, 0x5

    #@2dc
    aget-byte v5, p1, v5

    #@2de
    and-int/lit8 v5, v5, 0x38

    #@2e0
    shr-int/lit8 v37, v5, 0x3

    #@2e2
    .line 598
    .local v37, "windowStyle":I
    add-int/lit8 v5, p2, 0x5

    #@2e4
    aget-byte v5, p1, v5

    #@2e6
    and-int/lit8 v36, v5, 0x7

    #@2e8
    .line 599
    .local v36, "penStyle":I
    add-int/lit8 p2, p2, 0x6

    #@2ea
    .line 600
    new-instance v5, Landroid/media/Cea708CCParser$CaptionEvent;

    #@2ec
    .line 601
    new-instance v24, Landroid/media/Cea708CCParser$CaptionWindow;

    #@2ee
    invoke-direct/range {v24 .. v37}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    #@2f1
    .line 600
    const/16 v13, 0x10

    #@2f3
    move-object/from16 v0, v24

    #@2f5
    invoke-direct {v5, v13, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    #@2f8
    move-object/from16 v0, p0

    #@2fa
    invoke-direct {v0, v5}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    #@2fd
    goto/16 :goto_0

    #@2ff
    .line 587
    .end local v26    # "visible":Z
    .end local v27    # "rowLock":Z
    .end local v28    # "columnLock":Z
    .end local v29    # "priority":I
    .end local v30    # "relativePositioning":Z
    .end local v31    # "anchorVertical":I
    .end local v32    # "anchorHorizontal":I
    .end local v33    # "anchorId":I
    .end local v34    # "rowCount":I
    .end local v35    # "columnCount":I
    .end local v36    # "penStyle":I
    .end local v37    # "windowStyle":I
    :cond_3
    const/16 v26, 0x0

    #@301
    .restart local v26    # "visible":Z
    goto :goto_4

    #@302
    .line 588
    :cond_4
    const/16 v27, 0x0

    #@304
    .restart local v27    # "rowLock":Z
    goto :goto_5

    #@305
    .line 589
    :cond_5
    const/16 v28, 0x0

    #@307
    .restart local v28    # "columnLock":Z
    goto :goto_6

    #@308
    .line 591
    .restart local v29    # "priority":I
    :cond_6
    const/16 v30, 0x0

    #@30a
    .restart local v30    # "relativePositioning":Z
    goto :goto_7

    #@30b
    .line 371
    nop

    #@30c
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private parseC2([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 670
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@2
    if-ltz v0, :cond_1

    #@4
    .line 671
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@6
    const/4 v1, 0x7

    #@7
    if-gt v0, v1, :cond_1

    #@9
    .line 683
    :cond_0
    :goto_0
    return p2

    #@a
    .line 673
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@c
    const/16 v1, 0x8

    #@e
    if-lt v0, v1, :cond_2

    #@10
    .line 674
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@12
    const/16 v1, 0xf

    #@14
    if-gt v0, v1, :cond_2

    #@16
    .line 675
    add-int/lit8 p2, p2, 0x1

    #@18
    .line 674
    goto :goto_0

    #@19
    .line 676
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@1b
    const/16 v1, 0x10

    #@1d
    if-lt v0, v1, :cond_3

    #@1f
    .line 677
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@21
    const/16 v1, 0x17

    #@23
    if-gt v0, v1, :cond_3

    #@25
    .line 678
    add-int/lit8 p2, p2, 0x2

    #@27
    .line 677
    goto :goto_0

    #@28
    .line 679
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@2a
    const/16 v1, 0x18

    #@2c
    if-lt v0, v1, :cond_0

    #@2e
    .line 680
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@30
    const/16 v1, 0x1f

    #@32
    if-gt v0, v1, :cond_0

    #@34
    .line 681
    add-int/lit8 p2, p2, 0x3

    #@36
    goto :goto_0
.end method

.method private parseC3([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 690
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@2
    const/16 v1, 0x80

    #@4
    if-lt v0, v1, :cond_1

    #@6
    .line 691
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@8
    const/16 v1, 0x87

    #@a
    if-gt v0, v1, :cond_1

    #@c
    .line 692
    add-int/lit8 p2, p2, 0x4

    #@e
    .line 697
    :cond_0
    :goto_0
    return p2

    #@f
    .line 693
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@11
    const/16 v1, 0x88

    #@13
    if-lt v0, v1, :cond_0

    #@15
    .line 694
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@17
    const/16 v1, 0x8f

    #@19
    if-gt v0, v1, :cond_0

    #@1b
    .line 695
    add-int/lit8 p2, p2, 0x5

    #@1d
    goto :goto_0
.end method

.method private parseExt1([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 648
    aget-byte v0, p1, p2

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@6
    .line 649
    add-int/lit8 p2, p2, 0x1

    #@8
    .line 650
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@a
    if-ltz v0, :cond_1

    #@c
    .line 651
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@e
    const/16 v1, 0x1f

    #@10
    if-gt v0, v1, :cond_1

    #@12
    .line 652
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    #@15
    move-result p2

    #@16
    .line 663
    :cond_0
    :goto_0
    return p2

    #@17
    .line 653
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@19
    const/16 v1, 0x80

    #@1b
    if-lt v0, v1, :cond_2

    #@1d
    .line 654
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@1f
    const/16 v1, 0x9f

    #@21
    if-gt v0, v1, :cond_2

    #@23
    .line 655
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    #@26
    move-result p2

    #@27
    goto :goto_0

    #@28
    .line 656
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@2a
    const/16 v1, 0x20

    #@2c
    if-lt v0, v1, :cond_3

    #@2e
    .line 657
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@30
    const/16 v1, 0x7f

    #@32
    if-gt v0, v1, :cond_3

    #@34
    .line 658
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    #@37
    move-result p2

    #@38
    goto :goto_0

    #@39
    .line 659
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@3b
    const/16 v1, 0xa0

    #@3d
    if-lt v0, v1, :cond_0

    #@3f
    .line 660
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@41
    const/16 v1, 0xff

    #@43
    if-gt v0, v1, :cond_0

    #@45
    .line 661
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    #@48
    move-result p2

    #@49
    goto :goto_0
.end method

.method private parseG0([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 627
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@2
    const/16 v1, 0x7f

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 629
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@8
    sget-object v1, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d
    .line 634
    :goto_0
    return p2

    #@e
    .line 632
    :cond_0
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@10
    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@12
    int-to-char v1, v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@16
    goto :goto_0
.end method

.method private parseG1([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    #@2
    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@4
    int-to-char v1, v1

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8
    .line 642
    return p2
.end method

.method private parseG2([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 703
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 717
    :sswitch_0
    return p2

    #@6
    .line 703
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseG3([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 723
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@2
    const/16 v1, 0xa0

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 728
    :cond_0
    return p2
.end method

.method private parseServiceBlockData([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 279
    aget-byte v0, p1, p2

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@6
    .line 280
    add-int/lit8 p2, p2, 0x1

    #@8
    .line 281
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@a
    const/16 v1, 0x10

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 285
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    #@11
    move-result p2

    #@12
    .line 311
    :cond_0
    :goto_0
    return p2

    #@13
    .line 286
    :cond_1
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@15
    if-ltz v0, :cond_2

    #@17
    .line 287
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@19
    const/16 v1, 0x1f

    #@1b
    if-gt v0, v1, :cond_2

    #@1d
    .line 291
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    #@20
    move-result p2

    #@21
    goto :goto_0

    #@22
    .line 292
    :cond_2
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@24
    const/16 v1, 0x80

    #@26
    if-lt v0, v1, :cond_3

    #@28
    .line 293
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@2a
    const/16 v1, 0x9f

    #@2c
    if-gt v0, v1, :cond_3

    #@2e
    .line 297
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    #@31
    move-result p2

    #@32
    goto :goto_0

    #@33
    .line 298
    :cond_3
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@35
    const/16 v1, 0x20

    #@37
    if-lt v0, v1, :cond_4

    #@39
    .line 299
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@3b
    const/16 v1, 0x7f

    #@3d
    if-gt v0, v1, :cond_4

    #@3f
    .line 303
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    #@42
    move-result p2

    #@43
    goto :goto_0

    #@44
    .line 304
    :cond_4
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@46
    const/16 v1, 0xa0

    #@48
    if-lt v0, v1, :cond_0

    #@4a
    .line 305
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    #@4c
    const/16 v1, 0xff

    #@4e
    if-gt v0, v1, :cond_0

    #@50
    .line 309
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    #@53
    move-result p2

    #@54
    goto :goto_0
.end method


# virtual methods
.method public parse([B)V
    .locals 2
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    .line 268
    .local v0, "pos":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 269
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    #@7
    move-result v0

    #@8
    goto :goto_0

    #@9
    .line 273
    :cond_0
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    #@c
    .line 264
    return-void
.end method
