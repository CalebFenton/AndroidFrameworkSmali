.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$1;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;,
        Landroid/text/TextUtils$TruncateAt;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_NORMAL:[C

.field public static final ELLIPSIS_STRING:Ljava/lang/String;

.field static final ELLIPSIS_TWO_DOTS:[C

.field private static final ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LAST_SPAN:I = 0x18

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 69
    new-array v0, v3, [C

    #@4
    const/16 v1, 0x2026

    #@6
    aput-char v1, v0, v2

    #@8
    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    #@a
    .line 71
    new-instance v0, Ljava/lang/String;

    #@c
    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    #@e
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@11
    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    #@13
    .line 73
    new-array v0, v3, [C

    #@15
    const/16 v1, 0x2025

    #@17
    aput-char v1, v0, v2

    #@19
    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    #@1b
    .line 74
    new-instance v0, Ljava/lang/String;

    #@1d
    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@22
    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    #@24
    .line 679
    new-instance v0, Landroid/text/TextUtils$1;

    #@26
    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    #@29
    .line 678
    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    .line 1776
    new-instance v0, Ljava/lang/Object;

    #@2d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@30
    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    #@32
    .line 1778
    const/4 v0, 0x0

    #@33
    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    #@35
    .line 1780
    new-array v0, v2, [Ljava/lang/String;

    #@37
    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@39
    .line 66
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1209
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v3, p3

    #@6
    move-object v4, p4

    #@7
    .line 1208
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 26
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 1218
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    #@3
    move-result-object v3

    #@4
    .line 1220
    .local v3, "mt":Landroid/text/MeasuredText;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v7

    #@8
    .line 1221
    .local v7, "len":I
    const/4 v6, 0x0

    #@9
    move-object/from16 v4, p1

    #@b
    move-object/from16 v5, p0

    #@d
    move-object/from16 v8, p5

    #@f
    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v24

    #@13
    .line 1222
    .local v24, "width":F
    cmpg-float v4, v24, p2

    #@15
    if-gtz v4, :cond_0

    #@17
    .line 1276
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@1a
    .line 1223
    return-object p0

    #@1b
    .line 1226
    :cond_0
    :try_start_1
    iget-object v14, v3, Landroid/text/MeasuredText;->mChars:[C

    #@1d
    .line 1228
    .local v14, "buf":[C
    const/4 v15, 0x0

    #@1e
    .line 1229
    .local v15, "commaCount":I
    const/16 v17, 0x0

    #@20
    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    #@22
    if-ge v0, v7, :cond_2

    #@24
    .line 1230
    aget-char v4, v14, v17

    #@26
    const/16 v5, 0x2c

    #@28
    if-ne v4, v5, :cond_1

    #@2a
    .line 1231
    add-int/lit8 v15, v15, 0x1

    #@2c
    .line 1229
    :cond_1
    add-int/lit8 v17, v17, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1235
    :cond_2
    add-int/lit8 v22, v15, 0x1

    #@31
    .line 1237
    .local v22, "remaining":I
    const/16 v19, 0x0

    #@33
    .line 1238
    .local v19, "ok":I
    const-string/jumbo v20, ""

    #@36
    .line 1240
    .local v20, "okFormat":Ljava/lang/String;
    const/16 v23, 0x0

    #@38
    .line 1241
    .local v23, "w":I
    const/16 v16, 0x0

    #@3a
    .line 1242
    .local v16, "count":I
    iget-object v0, v3, Landroid/text/MeasuredText;->mWidths:[F

    #@3c
    move-object/from16 v25, v0

    #@3e
    .line 1244
    .local v25, "widths":[F
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    #@41
    move-result-object v8

    #@42
    .line 1245
    .local v8, "tempMt":Landroid/text/MeasuredText;
    const/16 v17, 0x0

    #@44
    :goto_1
    move/from16 v0, v17

    #@46
    if-ge v0, v7, :cond_5

    #@48
    .line 1246
    move/from16 v0, v23

    #@4a
    int-to-float v4, v0

    #@4b
    aget v5, v25, v17

    #@4d
    add-float/2addr v4, v5

    #@4e
    float-to-int v0, v4

    #@4f
    move/from16 v23, v0

    #@51
    .line 1248
    aget-char v4, v14, v17

    #@53
    const/16 v5, 0x2c

    #@55
    if-ne v4, v5, :cond_3

    #@57
    .line 1249
    add-int/lit8 v16, v16, 0x1

    #@59
    .line 1254
    add-int/lit8 v22, v22, -0x1

    #@5b
    const/4 v4, 0x1

    #@5c
    move/from16 v0, v22

    #@5e
    if-ne v0, v4, :cond_4

    #@60
    .line 1255
    new-instance v4, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v5, " "

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    move-object/from16 v0, p3

    #@6e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    .line 1261
    .local v9, "format":Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@79
    move-result v11

    #@7a
    const/4 v10, 0x0

    #@7b
    const/4 v13, 0x0

    #@7c
    move-object/from16 v12, p5

    #@7e
    invoke-virtual/range {v8 .. v13}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    #@81
    .line 1262
    iget v4, v8, Landroid/text/MeasuredText;->mLen:I

    #@83
    const/4 v5, 0x0

    #@84
    move-object/from16 v0, p1

    #@86
    invoke-virtual {v8, v0, v4, v5}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    #@89
    move-result v18

    #@8a
    .line 1264
    .local v18, "moreWid":F
    move/from16 v0, v23

    #@8c
    int-to-float v4, v0

    #@8d
    add-float v4, v4, v18

    #@8f
    cmpg-float v4, v4, p2

    #@91
    if-gtz v4, :cond_3

    #@93
    .line 1265
    add-int/lit8 v19, v17, 0x1

    #@95
    .line 1266
    move-object/from16 v20, v9

    #@97
    .line 1245
    .end local v9    # "format":Ljava/lang/String;
    .end local v18    # "moreWid":F
    :cond_3
    add-int/lit8 v17, v17, 0x1

    #@99
    goto :goto_1

    #@9a
    .line 1257
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v5, " "

    #@a2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    const/4 v5, 0x1

    #@a7
    new-array v5, v5, [Ljava/lang/Object;

    #@a9
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ac
    move-result-object v6

    #@ad
    const/4 v10, 0x0

    #@ae
    aput-object v6, v5, v10

    #@b0
    move-object/from16 v0, p4

    #@b2
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b5
    move-result-object v5

    #@b6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v4

    #@ba
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v9

    #@be
    .restart local v9    # "format":Ljava/lang/String;
    goto :goto_2

    #@bf
    .line 1270
    .end local v9    # "format":Ljava/lang/String;
    :cond_5
    invoke-static {v8}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@c2
    .line 1272
    new-instance v21, Landroid/text/SpannableStringBuilder;

    #@c4
    move-object/from16 v0, v21

    #@c6
    move-object/from16 v1, v20

    #@c8
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@cb
    .line 1273
    .local v21, "out":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    #@cc
    const/4 v5, 0x0

    #@cd
    move-object/from16 v0, v21

    #@cf
    move-object/from16 v1, p0

    #@d1
    move/from16 v2, v19

    #@d3
    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d6
    .line 1276
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@d9
    .line 1274
    return-object v21

    #@da
    .line 1275
    .end local v7    # "len":I
    .end local v8    # "tempMt":Landroid/text/MeasuredText;
    .end local v14    # "buf":[C
    .end local v15    # "commaCount":I
    .end local v16    # "count":I
    .end local v17    # "i":I
    .end local v19    # "ok":I
    .end local v20    # "okFormat":Ljava/lang/String;
    .end local v21    # "out":Landroid/text/SpannableStringBuilder;
    .end local v22    # "remaining":I
    .end local v23    # "w":I
    .end local v24    # "width":F
    .end local v25    # "widths":[F
    :catchall_0
    move-exception v4

    #@db
    .line 1276
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@de
    .line 1275
    throw v4
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "text"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1393
    array-length v0, p0

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1394
    const-string/jumbo v0, ""

    #@7
    return-object v0

    #@8
    .line 1397
    :cond_0
    array-length v0, p0

    #@9
    const/4 v3, 0x1

    #@a
    if-ne v0, v3, :cond_1

    #@c
    .line 1398
    aget-object v0, p0, v1

    #@e
    return-object v0

    #@f
    .line 1401
    :cond_1
    const/4 v8, 0x0

    #@10
    .line 1402
    .local v8, "spanned":Z
    const/4 v6, 0x0

    #@11
    .local v6, "i":I
    :goto_0
    array-length v0, p0

    #@12
    if-ge v6, v0, :cond_2

    #@14
    .line 1403
    aget-object v0, p0, v6

    #@16
    instance-of v0, v0, Landroid/text/Spanned;

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 1404
    const/4 v8, 0x1

    #@1b
    .line 1409
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    .line 1410
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    #@21
    :goto_1
    array-length v0, p0

    #@22
    if-ge v6, v0, :cond_4

    #@24
    .line 1411
    aget-object v0, p0, v6

    #@26
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@29
    .line 1410
    add-int/lit8 v6, v6, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 1402
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1414
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    if-nez v8, :cond_5

    #@31
    .line 1415
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 1418
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    #@38
    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@3b
    .line 1419
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    #@3c
    .line 1420
    .local v5, "off":I
    const/4 v6, 0x0

    #@3d
    :goto_2
    array-length v0, p0

    #@3e
    if-ge v6, v0, :cond_7

    #@40
    .line 1421
    aget-object v0, p0, v6

    #@42
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@45
    move-result v2

    #@46
    .line 1423
    .local v2, "len":I
    aget-object v0, p0, v6

    #@48
    instance-of v0, v0, Landroid/text/Spanned;

    #@4a
    if-eqz v0, :cond_6

    #@4c
    .line 1424
    aget-object v0, p0, v6

    #@4e
    check-cast v0, Landroid/text/Spanned;

    #@50
    const-class v3, Ljava/lang/Object;

    #@52
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    #@55
    .line 1427
    :cond_6
    add-int/2addr v5, v2

    #@56
    .line 1420
    add-int/lit8 v6, v6, 0x1

    #@58
    goto :goto_2

    #@59
    .line 1430
    .end local v2    # "len":I
    :cond_7
    new-instance v0, Landroid/text/SpannedString;

    #@5b
    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #@5e
    return-object v0
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    #@0
    .prologue
    .line 1020
    if-nez p3, :cond_0

    #@2
    .line 1021
    const-class p3, Ljava/lang/Object;

    #@4
    .line 1024
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    .line 1026
    .local v3, "spans":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    array-length v5, v3

    #@a
    if-ge v2, v5, :cond_3

    #@c
    .line 1027
    aget-object v5, v3, v2

    #@e
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@11
    move-result v4

    #@12
    .line 1028
    .local v4, "st":I
    aget-object v5, v3, v2

    #@14
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@17
    move-result v0

    #@18
    .line 1029
    .local v0, "en":I
    aget-object v5, v3, v2

    #@1a
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@1d
    move-result v1

    #@1e
    .line 1031
    .local v1, "fl":I
    if-ge v4, p1, :cond_1

    #@20
    .line 1032
    move v4, p1

    #@21
    .line 1033
    :cond_1
    if-le v0, p2, :cond_2

    #@23
    .line 1034
    move v0, p2

    #@24
    .line 1036
    :cond_2
    aget-object v5, v3, v2

    #@26
    sub-int v6, v4, p1

    #@28
    add-int/2addr v6, p5

    #@29
    sub-int v7, v0, p1

    #@2b
    add-int/2addr v7, p5

    #@2c
    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@2f
    .line 1026
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1019
    .end local v0    # "en":I
    .end local v1    # "fl":I
    .end local v4    # "st":I
    :cond_3
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1647
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 1648
    :cond_0
    return v4

    #@f
    .line 1650
    :cond_1
    const/4 v2, -0x1

    #@10
    .line 1651
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    .line 1652
    .local v1, "length":I
    :cond_2
    add-int/lit8 v3, v2, 0x1

    #@16
    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@19
    move-result v2

    #@1a
    const/4 v3, -0x1

    #@1b
    if-eq v2, v3, :cond_5

    #@1d
    .line 1653
    if-lez v2, :cond_3

    #@1f
    add-int/lit8 v3, v2, -0x1

    #@21
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v3

    #@25
    if-ne v3, p1, :cond_2

    #@27
    .line 1656
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@2a
    move-result v3

    #@2b
    add-int v0, v2, v3

    #@2d
    .line 1657
    .local v0, "expectedDelimiterPos":I
    if-ne v0, v1, :cond_4

    #@2f
    .line 1659
    return v5

    #@30
    .line 1661
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v3

    #@34
    if-ne v3, p1, :cond_2

    #@36
    .line 1662
    return v5

    #@37
    .line 1665
    .end local v0    # "expectedDelimiterPos":I
    :cond_5
    return v4
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1310
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 1311
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@6
    move-result v1

    #@7
    const/16 v2, 0x590

    #@9
    if-lt v1, v2, :cond_0

    #@b
    .line 1312
    const/4 v1, 0x0

    #@c
    return v1

    #@d
    .line 1310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1315
    :cond_1
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 4
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 1320
    move v1, p1

    #@1
    .local v1, "i":I
    add-int v0, p1, p2

    #@3
    .local v0, "e":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@5
    .line 1321
    aget-char v2, p0, v1

    #@7
    const/16 v3, 0x590

    #@9
    if-lt v2, v3, :cond_0

    #@b
    .line 1322
    const/4 v2, 0x0

    #@c
    return v2

    #@d
    .line 1320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1325
    :cond_1
    const/4 v2, 0x1

    #@11
    return v2
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 821
    instance-of v4, p0, Landroid/text/Spanned;

    #@2
    if-eqz v4, :cond_0

    #@4
    move-object v3, p0

    #@5
    .line 822
    check-cast v3, Landroid/text/Spanned;

    #@7
    .line 823
    .local v3, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v4

    #@b
    const-class v5, Ljava/lang/Object;

    #@d
    const/4 v6, 0x0

    #@e
    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    .line 825
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@14
    if-ge v0, v4, :cond_1

    #@16
    .line 826
    aget-object v1, v2, v0

    #@18
    .line 827
    .local v1, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@24
    move-result v5

    #@25
    .line 828
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@28
    move-result v6

    #@29
    .line 827
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    .line 828
    const-string/jumbo v5, ": "

    #@34
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 829
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3b
    move-result v5

    #@3c
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 830
    const-string/jumbo v5, " "

    #@47
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 830
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 831
    const-string/jumbo v5, " ("

    #@5a
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    .line 831
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@61
    move-result v5

    #@62
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    .line 831
    const-string/jumbo v5, "-"

    #@69
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    .line 831
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@70
    move-result v5

    #@71
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    .line 832
    const-string/jumbo v5, ") fl=#"

    #@78
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    .line 832
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@7f
    move-result v5

    #@80
    .line 827
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@8b
    .line 825
    add-int/lit8 v0, v0, 0x1

    #@8d
    goto :goto_0

    #@8e
    .line 835
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v3    # "sp":Landroid/text/Spanned;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    const-string/jumbo v5, ": (no spans)"

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@a9
    .line 820
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    #@0
    .prologue
    .line 1069
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v3, p3

    #@6
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    #@0
    .prologue
    .line 1090
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@2
    .line 1091
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@4
    if-ne p3, v0, :cond_0

    #@6
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    #@8
    :goto_0
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move v2, p2

    #@b
    move-object v3, p3

    #@c
    move v4, p4

    #@d
    move-object v5, p5

    #@e
    .line 1089
    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 1091
    :cond_0
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    #@15
    goto :goto_0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 22
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1114
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v15

    #@4
    .line 1116
    .local v15, "len":I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    #@7
    move-result-object v3

    #@8
    .line 1118
    .local v3, "mt":Landroid/text/MeasuredText;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v7

    #@c
    const/4 v6, 0x0

    #@d
    move-object/from16 v4, p1

    #@f
    move-object/from16 v5, p0

    #@11
    move-object/from16 v8, p6

    #@13
    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    #@16
    move-result v21

    #@17
    .line 1120
    .local v21, "width":F
    cmpg-float v5, v21, p2

    #@19
    if-gtz v5, :cond_1

    #@1b
    .line 1121
    if-eqz p5, :cond_0

    #@1d
    .line 1122
    const/4 v5, 0x0

    #@1e
    const/4 v6, 0x0

    #@1f
    move-object/from16 v0, p5

    #@21
    invoke-interface {v0, v5, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 1189
    :cond_0
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@27
    .line 1125
    return-object p0

    #@28
    .line 1130
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    #@2a
    move-object/from16 v1, p7

    #@2c
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    #@2f
    move-result v11

    #@30
    .line 1131
    .local v11, "ellipsiswid":F
    sub-float p2, p2, v11

    #@32
    .line 1133
    const/4 v13, 0x0

    #@33
    .line 1134
    .local v13, "left":I
    move/from16 v17, v15

    #@35
    .line 1135
    .local v17, "right":I
    const/4 v5, 0x0

    #@36
    cmpg-float v5, p2, v5

    #@38
    if-gez v5, :cond_3

    #@3a
    move v14, v13

    #@3b
    .line 1147
    .end local v13    # "left":I
    .local v14, "left":I
    :goto_0
    if-eqz p5, :cond_2

    #@3d
    .line 1148
    move-object/from16 v0, p5

    #@3f
    move/from16 v1, v17

    #@41
    invoke-interface {v0, v14, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    #@44
    .line 1151
    :cond_2
    iget-object v10, v3, Landroid/text/MeasuredText;->mChars:[C

    #@46
    .line 1152
    .local v10, "buf":[C
    move-object/from16 v0, p0

    #@48
    instance-of v5, v0, Landroid/text/Spanned;

    #@4a
    if-eqz v5, :cond_7

    #@4c
    move-object/from16 v0, p0

    #@4e
    check-cast v0, Landroid/text/Spanned;

    #@50
    move-object v4, v0

    #@51
    .line 1154
    :goto_1
    sub-int v5, v17, v14

    #@53
    sub-int v16, v15, v5

    #@55
    .line 1155
    .local v16, "remaining":I
    if-eqz p4, :cond_a

    #@57
    .line 1156
    if-lez v16, :cond_d

    #@59
    .line 1157
    add-int/lit8 v13, v14, 0x1

    #@5b
    .end local v14    # "left":I
    .restart local v13    # "left":I
    const/4 v5, 0x0

    #@5c
    move-object/from16 v0, p7

    #@5e
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v5

    #@62
    aput-char v5, v10, v14

    #@64
    .line 1159
    :goto_2
    move v12, v13

    #@65
    .local v12, "i":I
    :goto_3
    move/from16 v0, v17

    #@67
    if-ge v12, v0, :cond_8

    #@69
    .line 1160
    const v5, 0xfeff

    #@6c
    aput-char v5, v10, v12

    #@6e
    .line 1159
    add-int/lit8 v12, v12, 0x1

    #@70
    goto :goto_3

    #@71
    .line 1137
    .end local v10    # "buf":[C
    .end local v12    # "i":I
    .end local v16    # "remaining":I
    :cond_3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@73
    move-object/from16 v0, p3

    #@75
    if-ne v0, v5, :cond_4

    #@77
    .line 1138
    const/4 v5, 0x0

    #@78
    move/from16 v0, p2

    #@7a
    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    #@7d
    move-result v5

    #@7e
    sub-int v17, v15, v5

    #@80
    move v14, v13

    #@81
    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_0

    #@82
    .line 1139
    .end local v14    # "left":I
    .restart local v13    # "left":I
    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@84
    move-object/from16 v0, p3

    #@86
    if-eq v0, v5, :cond_5

    #@88
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@8a
    move-object/from16 v0, p3

    #@8c
    if-ne v0, v5, :cond_6

    #@8e
    .line 1140
    :cond_5
    const/4 v5, 0x1

    #@8f
    move/from16 v0, p2

    #@91
    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    #@94
    move-result v13

    #@95
    move v14, v13

    #@96
    .line 1139
    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_0

    #@97
    .line 1142
    .end local v14    # "left":I
    .restart local v13    # "left":I
    :cond_6
    const/high16 v5, 0x40000000    # 2.0f

    #@99
    div-float v5, p2, v5

    #@9b
    const/4 v6, 0x0

    #@9c
    invoke-virtual {v3, v15, v6, v5}, Landroid/text/MeasuredText;->breakText(IZF)I

    #@9f
    move-result v5

    #@a0
    sub-int v17, v15, v5

    #@a2
    .line 1143
    move/from16 v0, v17

    #@a4
    invoke-virtual {v3, v0, v15}, Landroid/text/MeasuredText;->measure(II)F

    #@a7
    move-result v5

    #@a8
    sub-float p2, p2, v5

    #@aa
    .line 1144
    const/4 v5, 0x1

    #@ab
    move/from16 v0, v17

    #@ad
    move/from16 v1, p2

    #@af
    invoke-virtual {v3, v0, v5, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    #@b2
    move-result v13

    #@b3
    move v14, v13

    #@b4
    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_0

    #@b5
    .line 1152
    .restart local v10    # "buf":[C
    :cond_7
    const/4 v4, 0x0

    #@b6
    .local v4, "sp":Landroid/text/Spanned;
    goto :goto_1

    #@b7
    .line 1162
    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v14    # "left":I
    .restart local v12    # "i":I
    .restart local v13    # "left":I
    .restart local v16    # "remaining":I
    :cond_8
    new-instance v18, Ljava/lang/String;

    #@b9
    const/4 v5, 0x0

    #@ba
    move-object/from16 v0, v18

    #@bc
    invoke-direct {v0, v10, v5, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@bf
    .line 1163
    .local v18, "s":Ljava/lang/String;
    if-nez v4, :cond_9

    #@c1
    .line 1189
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@c4
    .line 1164
    return-object v18

    #@c5
    .line 1166
    :cond_9
    :try_start_2
    new-instance v8, Landroid/text/SpannableString;

    #@c7
    move-object/from16 v0, v18

    #@c9
    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@cc
    .line 1167
    .local v8, "ss":Landroid/text/SpannableString;
    const-class v7, Ljava/lang/Object;

    #@ce
    const/4 v5, 0x0

    #@cf
    const/4 v9, 0x0

    #@d0
    move v6, v15

    #@d1
    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d4
    .line 1189
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@d7
    .line 1168
    return-object v8

    #@d8
    .line 1171
    .end local v8    # "ss":Landroid/text/SpannableString;
    .end local v12    # "i":I
    .end local v13    # "left":I
    .end local v18    # "s":Ljava/lang/String;
    .restart local v14    # "left":I
    :cond_a
    if-nez v16, :cond_b

    #@da
    .line 1172
    :try_start_3
    const-string/jumbo v5, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@dd
    .line 1189
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@e0
    .line 1172
    return-object v5

    #@e1
    .line 1175
    :cond_b
    if-nez v4, :cond_c

    #@e3
    .line 1176
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    #@e5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    #@e8
    move-result v5

    #@e9
    add-int v5, v5, v16

    #@eb
    move-object/from16 v0, v19

    #@ed
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f0
    .line 1177
    .local v19, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    #@f1
    move-object/from16 v0, v19

    #@f3
    invoke-virtual {v0, v10, v5, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@f6
    .line 1178
    move-object/from16 v0, v19

    #@f8
    move-object/from16 v1, p7

    #@fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    .line 1179
    sub-int v5, v15, v17

    #@ff
    move-object/from16 v0, v19

    #@101
    move/from16 v1, v17

    #@103
    invoke-virtual {v0, v10, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@106
    .line 1180
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@109
    move-result-object v5

    #@10a
    .line 1189
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@10d
    .line 1180
    return-object v5

    #@10e
    .line 1183
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    :try_start_5
    new-instance v20, Landroid/text/SpannableStringBuilder;

    #@110
    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@113
    .line 1184
    .local v20, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    #@114
    move-object/from16 v0, v20

    #@116
    move-object/from16 v1, p0

    #@118
    invoke-virtual {v0, v1, v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@11b
    .line 1185
    move-object/from16 v0, v20

    #@11d
    move-object/from16 v1, p7

    #@11f
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@122
    .line 1186
    move-object/from16 v0, v20

    #@124
    move-object/from16 v1, p0

    #@126
    move/from16 v2, v17

    #@128
    invoke-virtual {v0, v1, v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@12b
    .line 1189
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@12e
    .line 1187
    return-object v20

    #@12f
    .line 1188
    .end local v10    # "buf":[C
    .end local v11    # "ellipsiswid":F
    .end local v14    # "left":I
    .end local v16    # "remaining":I
    .end local v17    # "right":I
    .end local v20    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v21    # "width":F
    :catchall_0
    move-exception v5

    #@130
    .line 1189
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@133
    .line 1188
    throw v5

    #@134
    .restart local v10    # "buf":[C
    .restart local v11    # "ellipsiswid":F
    .restart local v14    # "left":I
    .restart local v16    # "remaining":I
    .restart local v17    # "right":I
    .restart local v21    # "width":F
    :cond_d
    move v13, v14

    #@135
    .end local v14    # "left":I
    .restart local v13    # "left":I
    goto/16 :goto_2
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 493
    if-ne p0, p1, :cond_0

    #@4
    return v5

    #@5
    .line 495
    :cond_0
    if-eqz p0, :cond_4

    #@7
    if-eqz p1, :cond_4

    #@9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v1

    #@d
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v2

    #@11
    if-ne v1, v2, :cond_4

    #@13
    .line 496
    instance-of v2, p0, Ljava/lang/String;

    #@15
    if-eqz v2, :cond_1

    #@17
    instance-of v2, p1, Ljava/lang/String;

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 497
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 499
    :cond_1
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@23
    .line 500
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@26
    move-result v2

    #@27
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@2a
    move-result v3

    #@2b
    if-eq v2, v3, :cond_2

    #@2d
    return v4

    #@2e
    .line 499
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 502
    :cond_3
    return v5

    #@32
    .line 505
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4
    return v4
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v7, 0x5e

    #@2
    .line 891
    array-length v5, p1

    #@3
    const/16 v6, 0x9

    #@5
    if-le v5, v6, :cond_0

    #@7
    .line 892
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v6, "max of 9 values are supported"

    #@c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v5

    #@10
    .line 895
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    #@12
    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@15
    .line 898
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    #@16
    .line 899
    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    #@19
    move-result v5

    #@1a
    if-ge v0, v5, :cond_2

    #@1c
    .line 900
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@1f
    move-result v5

    #@20
    if-ne v5, v7, :cond_5

    #@22
    .line 901
    add-int/lit8 v5, v0, 0x1

    #@24
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@27
    move-result v2

    #@28
    .line 902
    .local v2, "next":C
    if-ne v2, v7, :cond_1

    #@2a
    .line 903
    add-int/lit8 v5, v0, 0x1

    #@2c
    add-int/lit8 v6, v0, 0x2

    #@2e
    invoke-virtual {v3, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@31
    .line 904
    add-int/lit8 v0, v0, 0x1

    #@33
    .line 905
    goto :goto_0

    #@34
    .line 906
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_5

    #@3a
    .line 907
    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    #@3d
    move-result v5

    #@3e
    add-int/lit8 v4, v5, -0x1

    #@40
    .line 908
    .local v4, "which":I
    if-gez v4, :cond_3

    #@42
    .line 909
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@44
    .line 910
    new-instance v6, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v7, "template requests value ^"

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    add-int/lit8 v7, v4, 0x1

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    .line 909
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v5

    #@5e
    .line 924
    .end local v2    # "next":C
    .end local v4    # "which":I
    :catch_0
    move-exception v1

    #@5f
    .line 927
    :cond_2
    return-object v3

    #@60
    .line 912
    .restart local v2    # "next":C
    .restart local v4    # "which":I
    :cond_3
    array-length v5, p1

    #@61
    if-lt v4, v5, :cond_4

    #@63
    .line 913
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@65
    .line 914
    new-instance v6, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v7, "template requests value ^"

    #@6d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    add-int/lit8 v7, v4, 0x1

    #@73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    .line 915
    const-string/jumbo v7, "; only "

    #@7a
    .line 914
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    .line 915
    array-length v7, p1

    #@7f
    .line 914
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v6

    #@83
    .line 915
    const-string/jumbo v7, " provided"

    #@86
    .line 914
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v6

    #@8e
    .line 913
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@91
    throw v5

    #@92
    .line 917
    :cond_4
    add-int/lit8 v5, v0, 0x2

    #@94
    aget-object v6, p1, v4

    #@96
    invoke-virtual {v3, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@99
    .line 918
    aget-object v5, p1, v4

    #@9b
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9e
    move-result v5

    #@9f
    add-int/2addr v0, v5

    #@a0
    .line 919
    goto/16 :goto_0

    #@a2
    .line 922
    .end local v2    # "next":C
    .end local v4    # "which":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@a4
    goto/16 :goto_0
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "count"    # I

    #@0
    .prologue
    .line 1773
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v2

    #@b
    const/4 v3, 0x0

    #@c
    aput-object v2, v1, v3

    #@e
    const v2, 0x1140023

    #@11
    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    #@0
    .prologue
    const/16 v9, 0x27

    #@2
    const/16 v8, 0x22

    #@4
    const/16 v7, 0x2e

    #@6
    const/4 v5, 0x0

    #@7
    .line 1551
    if-gez p1, :cond_0

    #@9
    .line 1552
    return v5

    #@a
    .line 1557
    :cond_0
    const/4 v4, 0x0

    #@b
    .line 1559
    .local v4, "mode":I
    and-int/lit16 v5, p2, 0x1000

    #@d
    if-eqz v5, :cond_1

    #@f
    .line 1560
    const/16 v4, 0x1000

    #@11
    .line 1562
    :cond_1
    and-int/lit16 v5, p2, 0x6000

    #@13
    if-nez v5, :cond_2

    #@15
    .line 1563
    return v4

    #@16
    .line 1568
    :cond_2
    move v1, p1

    #@17
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_3

    #@19
    .line 1569
    add-int/lit8 v5, v1, -0x1

    #@1b
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    .line 1571
    .local v0, "c":C
    if-eq v0, v8, :cond_5

    #@21
    if-eq v0, v9, :cond_5

    #@23
    .line 1572
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    #@26
    move-result v5

    #@27
    const/16 v6, 0x15

    #@29
    if-eq v5, v6, :cond_5

    #@2b
    .line 1579
    .end local v0    # "c":C
    :cond_3
    move v2, v1

    #@2c
    .line 1580
    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_6

    #@2e
    add-int/lit8 v5, v2, -0x1

    #@30
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@33
    move-result v0

    #@34
    .restart local v0    # "c":C
    const/16 v5, 0x20

    #@36
    if-eq v0, v5, :cond_4

    #@38
    const/16 v5, 0x9

    #@3a
    if-ne v0, v5, :cond_6

    #@3c
    .line 1581
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 1568
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@41
    goto :goto_0

    #@42
    .line 1583
    .end local v0    # "c":C
    .restart local v2    # "j":I
    :cond_6
    if-eqz v2, :cond_7

    #@44
    add-int/lit8 v5, v2, -0x1

    #@46
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@49
    move-result v5

    #@4a
    const/16 v6, 0xa

    #@4c
    if-ne v5, v6, :cond_8

    #@4e
    .line 1584
    :cond_7
    or-int/lit16 v5, v4, 0x2000

    #@50
    return v5

    #@51
    .line 1589
    :cond_8
    and-int/lit16 v5, p2, 0x4000

    #@53
    if-nez v5, :cond_a

    #@55
    .line 1590
    if-eq v1, v2, :cond_9

    #@57
    or-int/lit16 v4, v4, 0x2000

    #@59
    .line 1591
    :cond_9
    return v4

    #@5a
    .line 1596
    :cond_a
    if-ne v1, v2, :cond_c

    #@5c
    .line 1597
    return v4

    #@5d
    .line 1602
    .restart local v0    # "c":C
    :cond_b
    add-int/lit8 v2, v2, -0x1

    #@5f
    .end local v0    # "c":C
    :cond_c
    if-lez v2, :cond_d

    #@61
    .line 1603
    add-int/lit8 v5, v2, -0x1

    #@63
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@66
    move-result v0

    #@67
    .line 1605
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_b

    #@69
    if-eq v0, v9, :cond_b

    #@6b
    .line 1606
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    #@6e
    move-result v5

    #@6f
    const/16 v6, 0x16

    #@71
    if-eq v5, v6, :cond_b

    #@73
    .line 1611
    .end local v0    # "c":C
    :cond_d
    if-lez v2, :cond_10

    #@75
    .line 1612
    add-int/lit8 v5, v2, -0x1

    #@77
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@7a
    move-result v0

    #@7b
    .line 1614
    .restart local v0    # "c":C
    if-eq v0, v7, :cond_e

    #@7d
    const/16 v5, 0x3f

    #@7f
    if-ne v0, v5, :cond_f

    #@81
    .line 1618
    :cond_e
    if-ne v0, v7, :cond_12

    #@83
    .line 1619
    add-int/lit8 v3, v2, -0x2

    #@85
    .local v3, "k":I
    :goto_2
    if-ltz v3, :cond_12

    #@87
    .line 1620
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@8a
    move-result v0

    #@8b
    .line 1622
    if-ne v0, v7, :cond_11

    #@8d
    .line 1623
    return v4

    #@8e
    .line 1614
    .end local v3    # "k":I
    :cond_f
    const/16 v5, 0x21

    #@90
    if-eq v0, v5, :cond_e

    #@92
    .line 1636
    .end local v0    # "c":C
    :cond_10
    return v4

    #@93
    .line 1626
    .restart local v0    # "c":C
    .restart local v3    # "k":I
    :cond_11
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@96
    move-result v5

    #@97
    if-nez v5, :cond_13

    #@99
    .line 1632
    .end local v3    # "k":I
    :cond_12
    or-int/lit16 v5, v4, 0x4000

    #@9b
    return v5

    #@9c
    .line 1619
    .restart local v3    # "k":I
    :cond_13
    add-int/lit8 v3, v3, -0x1

    #@9e
    goto :goto_2
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    #@0
    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 82
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v3, Ljava/lang/String;

    #@6
    if-ne v0, v3, :cond_0

    #@8
    .line 83
    check-cast p0, Ljava/lang/String;

    #@a
    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    #@d
    .line 79
    :goto_0
    return-void

    #@e
    .line 84
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const-class v3, Ljava/lang/StringBuffer;

    #@10
    if-ne v0, v3, :cond_1

    #@12
    .line 85
    check-cast p0, Ljava/lang/StringBuffer;

    #@14
    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    #@17
    goto :goto_0

    #@18
    .line 86
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_1
    const-class v3, Ljava/lang/StringBuilder;

    #@1a
    if-ne v0, v3, :cond_2

    #@1c
    .line 87
    check-cast p0, Ljava/lang/StringBuilder;

    #@1e
    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@21
    goto :goto_0

    #@22
    .line 88
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_2
    instance-of v3, p0, Landroid/text/GetChars;

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 89
    check-cast p0, Landroid/text/GetChars;

    #@28
    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    #@2b
    goto :goto_0

    #@2c
    .line 91
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_3
    move v2, p1

    #@2d
    .local v2, "i":I
    move v1, p4

    #@2e
    .end local p4    # "destoff":I
    .local v1, "destoff":I
    :goto_1
    if-ge v2, p2, :cond_4

    #@30
    .line 92
    add-int/lit8 p4, v1, 0x1

    #@32
    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@35
    move-result v3

    #@36
    aput-char v3, p3, v1

    #@38
    .line 91
    add-int/lit8 v2, v2, 0x1

    #@3a
    move v1, p4

    #@3b
    .end local p4    # "destoff":I
    .restart local v1    # "destoff":I
    goto :goto_1

    #@3c
    :cond_4
    move p4, v1

    #@3d
    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    goto :goto_0
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1759
    if-eqz p0, :cond_0

    #@3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@5
    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_3

    #@b
    .line 1762
    :cond_0
    :goto_0
    const-string/jumbo v1, "debug.force_rtl"

    #@e
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@11
    move-result v1

    #@12
    .line 1759
    if-eqz v1, :cond_2

    #@14
    .line 1763
    :cond_1
    const/4 v0, 0x1

    #@15
    .line 1759
    :cond_2
    return v0

    #@16
    .line 1760
    :cond_3
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    #@1d
    move-result v1

    #@1e
    .line 1759
    if-nez v1, :cond_1

    #@20
    goto :goto_0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 966
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v4

    #@4
    .line 968
    .local v4, "len":I
    if-ne p1, v4, :cond_0

    #@6
    .line 969
    return v4

    #@7
    .line 970
    :cond_0
    add-int/lit8 v7, v4, -0x1

    #@9
    if-ne p1, v7, :cond_1

    #@b
    .line 971
    return v4

    #@c
    .line 973
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 975
    .local v0, "c":C
    const v7, 0xd800

    #@13
    if-lt v0, v7, :cond_4

    #@15
    const v7, 0xdbff

    #@18
    if-gt v0, v7, :cond_4

    #@1a
    .line 976
    add-int/lit8 v7, p1, 0x1

    #@1c
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 978
    .local v1, "c1":C
    const v7, 0xdc00

    #@23
    if-lt v1, v7, :cond_3

    #@25
    const v7, 0xdfff

    #@28
    if-gt v1, v7, :cond_3

    #@2a
    .line 979
    add-int/lit8 p1, p1, 0x2

    #@2c
    .line 986
    .end local v1    # "c1":C
    :goto_0
    instance-of v7, p0, Landroid/text/Spanned;

    #@2e
    if-eqz v7, :cond_5

    #@30
    move-object v7, p0

    #@31
    .line 987
    check-cast v7, Landroid/text/Spanned;

    #@33
    .line 988
    const-class v8, Landroid/text/style/ReplacementSpan;

    #@35
    .line 987
    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@38
    move-result-object v5

    #@39
    check-cast v5, [Landroid/text/style/ReplacementSpan;

    #@3b
    .line 990
    .local v5, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    #@3c
    .local v3, "i":I
    :goto_1
    array-length v7, v5

    #@3d
    if-ge v3, v7, :cond_5

    #@3f
    move-object v7, p0

    #@40
    .line 991
    check-cast v7, Landroid/text/Spanned;

    #@42
    aget-object v8, v5, v3

    #@44
    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@47
    move-result v6

    #@48
    .local v6, "start":I
    move-object v7, p0

    #@49
    .line 992
    check-cast v7, Landroid/text/Spanned;

    #@4b
    aget-object v8, v5, v3

    #@4d
    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@50
    move-result v2

    #@51
    .line 994
    .local v2, "end":I
    if-ge v6, p1, :cond_2

    #@53
    if-le v2, p1, :cond_2

    #@55
    .line 995
    move p1, v2

    #@56
    .line 990
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@58
    goto :goto_1

    #@59
    .line 981
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v6    # "start":I
    .restart local v1    # "c1":C
    :cond_3
    add-int/lit8 p1, p1, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 983
    .end local v1    # "c1":C
    :cond_4
    add-int/lit8 p1, p1, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 999
    :cond_5
    return p1
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 931
    if-nez p1, :cond_0

    #@3
    .line 932
    return v7

    #@4
    .line 933
    :cond_0
    const/4 v6, 0x1

    #@5
    if-ne p1, v6, :cond_1

    #@7
    .line 934
    return v7

    #@8
    .line 936
    :cond_1
    add-int/lit8 v6, p1, -0x1

    #@a
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 938
    .local v0, "c":C
    const v6, 0xdc00

    #@11
    if-lt v0, v6, :cond_4

    #@13
    const v6, 0xdfff

    #@16
    if-gt v0, v6, :cond_4

    #@18
    .line 939
    add-int/lit8 v6, p1, -0x2

    #@1a
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@1d
    move-result v1

    #@1e
    .line 941
    .local v1, "c1":C
    const v6, 0xd800

    #@21
    if-lt v1, v6, :cond_3

    #@23
    const v6, 0xdbff

    #@26
    if-gt v1, v6, :cond_3

    #@28
    .line 942
    add-int/lit8 p1, p1, -0x2

    #@2a
    .line 949
    .end local v1    # "c1":C
    :goto_0
    instance-of v6, p0, Landroid/text/Spanned;

    #@2c
    if-eqz v6, :cond_5

    #@2e
    move-object v6, p0

    #@2f
    .line 950
    check-cast v6, Landroid/text/Spanned;

    #@31
    .line 951
    const-class v7, Landroid/text/style/ReplacementSpan;

    #@33
    .line 950
    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    check-cast v4, [Landroid/text/style/ReplacementSpan;

    #@39
    .line 953
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    #@3a
    .local v3, "i":I
    :goto_1
    array-length v6, v4

    #@3b
    if-ge v3, v6, :cond_5

    #@3d
    move-object v6, p0

    #@3e
    .line 954
    check-cast v6, Landroid/text/Spanned;

    #@40
    aget-object v7, v4, v3

    #@42
    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@45
    move-result v5

    #@46
    .local v5, "start":I
    move-object v6, p0

    #@47
    .line 955
    check-cast v6, Landroid/text/Spanned;

    #@49
    aget-object v7, v4, v3

    #@4b
    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@4e
    move-result v2

    #@4f
    .line 957
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    #@51
    if-le v2, p1, :cond_2

    #@53
    .line 958
    move p1, v5

    #@54
    .line 953
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_1

    #@57
    .line 944
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    .restart local v1    # "c1":C
    :cond_3
    add-int/lit8 p1, p1, -0x1

    #@59
    goto :goto_0

    #@5a
    .line 946
    .end local v1    # "c1":C
    :cond_4
    add-int/lit8 p1, p1, -0x1

    #@5c
    goto :goto_0

    #@5d
    .line 962
    :cond_5
    return p1
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 516
    new-instance v0, Landroid/text/TextUtils$Reverser;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    #@5
    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 469
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v1

    #@6
    .line 471
    .local v1, "len":I
    const/4 v2, 0x0

    #@7
    .line 472
    .local v2, "start":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@9
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v3

    #@d
    if-gt v3, v4, :cond_0

    #@f
    .line 473
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_0

    #@12
    .line 476
    :cond_0
    move v0, v1

    #@13
    .line 477
    .local v0, "end":I
    :goto_1
    if-le v0, v2, :cond_1

    #@15
    add-int/lit8 v3, v0, -0x1

    #@17
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    if-gt v3, v4, :cond_1

    #@1d
    .line 478
    add-int/lit8 v0, v0, -0x1

    #@1f
    goto :goto_1

    #@20
    .line 481
    :cond_1
    sub-int v3, v0, v2

    #@22
    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1359
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_0

    #@c
    .line 1360
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 1361
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@13
    .line 1382
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 1359
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1363
    :sswitch_0
    const-string/jumbo v3, "&lt;"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    goto :goto_1

    #@20
    .line 1366
    :sswitch_1
    const-string/jumbo v3, "&gt;"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_1

    #@27
    .line 1369
    :sswitch_2
    const-string/jumbo v3, "&amp;"

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_1

    #@2e
    .line 1376
    :sswitch_3
    const-string/jumbo v3, "&#39;"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    goto :goto_1

    #@35
    .line 1379
    :sswitch_4
    const-string/jumbo v3, "&quot;"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    goto :goto_1

    #@3c
    .line 1385
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    return-object v3

    #@41
    .line 1361
    nop

    #@42
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 97
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 103
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 104
    check-cast p0, Ljava/lang/String;

    #@a
    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 106
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@12
    move-result v1

    #@13
    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    .line 112
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v6, p0, Landroid/text/GetChars;

    #@7
    if-nez v6, :cond_0

    #@9
    const-class v6, Ljava/lang/StringBuffer;

    #@b
    if-ne v1, v6, :cond_2

    #@d
    .line 114
    :cond_0
    const/16 v0, 0x1f4

    #@f
    .line 115
    .local v0, "INDEX_INCREMENT":I
    const/16 v6, 0x1f4

    #@11
    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    #@14
    move-result-object v5

    #@15
    .line 117
    .local v5, "temp":[C
    :goto_0
    if-ge p2, p3, :cond_5

    #@17
    .line 118
    add-int/lit16 v4, p2, 0x1f4

    #@19
    .line 119
    .local v4, "segend":I
    if-le v4, p3, :cond_1

    #@1b
    .line 120
    move v4, p3

    #@1c
    .line 122
    :cond_1
    const/4 v6, 0x0

    #@1d
    invoke-static {p0, p2, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@20
    .line 124
    sub-int v2, v4, p2

    #@22
    .line 125
    .local v2, "count":I
    const/4 v3, 0x0

    #@23
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    #@25
    .line 126
    aget-char v6, v5, v3

    #@27
    if-ne v6, p1, :cond_3

    #@29
    .line 127
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    #@2c
    .line 128
    add-int v6, v3, p2

    #@2e
    return v6

    #@2f
    .line 113
    .end local v0    # "INDEX_INCREMENT":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    .end local v5    # "temp":[C
    :cond_2
    const-class v6, Ljava/lang/StringBuilder;

    #@31
    if-eq v1, v6, :cond_0

    #@33
    const-class v6, Ljava/lang/String;

    #@35
    if-eq v1, v6, :cond_0

    #@37
    .line 139
    move v3, p2

    #@38
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, p3, :cond_7

    #@3a
    .line 140
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@3d
    move-result v6

    #@3e
    if-ne v6, p1, :cond_6

    #@40
    .line 141
    return v3

    #@41
    .line 125
    .restart local v0    # "INDEX_INCREMENT":I
    .restart local v2    # "count":I
    .restart local v4    # "segend":I
    .restart local v5    # "temp":[C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_1

    #@44
    .line 132
    :cond_4
    move p2, v4

    #@45
    goto :goto_0

    #@46
    .line 135
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    #@49
    .line 136
    return v7

    #@4a
    .line 139
    .end local v0    # "INDEX_INCREMENT":I
    .end local v5    # "temp":[C
    .restart local v3    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_2

    #@4d
    .line 143
    :cond_7
    return v7
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 205
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, p1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    #@0
    .prologue
    .line 209
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 214
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v1

    #@6
    .line 215
    .local v1, "nlen":I
    if-nez v1, :cond_0

    #@8
    .line 216
    return p2

    #@9
    .line 218
    :cond_0
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 221
    .local v0, "c":C
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    #@10
    move-result p2

    #@11
    .line 222
    sub-int v2, p3, v1

    #@13
    if-le p2, v2, :cond_1

    #@15
    .line 236
    return v4

    #@16
    .line 226
    :cond_1
    if-gez p2, :cond_2

    #@18
    .line 227
    return v4

    #@19
    .line 230
    :cond_2
    invoke-static {p0, p2, p1, v3, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 231
    return p2

    #@20
    .line 234
    :cond_3
    add-int/lit8 p2, p2, 0x1

    #@22
    goto :goto_0
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1477
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v2

    #@4
    .line 1478
    .local v2, "len":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 1479
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@a
    move-result v0

    #@b
    .line 1480
    .local v0, "cp":I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 1481
    const/4 v3, 0x0

    #@12
    return v3

    #@13
    .line 1478
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@16
    move-result v3

    #@17
    add-int/2addr v1, v3

    #@18
    goto :goto_0

    #@19
    .line 1484
    .end local v0    # "cp":I
    :cond_1
    const/4 v3, 0x1

    #@1a
    return v3
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 452
    if-eqz p0, :cond_0

    #@3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 453
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 455
    :cond_1
    return v1
.end method

.method public static isGraphic(C)Z
    .locals 3
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1463
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    #@4
    move-result v0

    #@5
    .line 1464
    .local v0, "gc":I
    const/16 v2, 0xf

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 1465
    const/16 v2, 0x10

    #@b
    if-eq v0, v2, :cond_0

    #@d
    .line 1466
    const/16 v2, 0x13

    #@f
    if-eq v0, v2, :cond_0

    #@11
    .line 1467
    if-eqz v0, :cond_0

    #@13
    .line 1468
    const/16 v2, 0xd

    #@15
    if-eq v0, v2, :cond_0

    #@17
    .line 1469
    const/16 v2, 0xe

    #@19
    if-eq v0, v2, :cond_0

    #@1b
    .line 1470
    const/16 v2, 0xc

    #@1d
    if-eq v0, v2, :cond_0

    #@1f
    const/4 v1, 0x1

    #@20
    .line 1464
    :cond_0
    return v1
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1437
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v3

    #@5
    .line 1438
    .local v3, "len":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    .line 1439
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@b
    move-result v0

    #@c
    .line 1440
    .local v0, "cp":I
    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    #@f
    move-result v1

    #@10
    .line 1441
    .local v1, "gc":I
    const/16 v4, 0xf

    #@12
    if-eq v1, v4, :cond_0

    #@14
    .line 1442
    const/16 v4, 0x10

    #@16
    if-eq v1, v4, :cond_0

    #@18
    .line 1443
    const/16 v4, 0x13

    #@1a
    if-eq v1, v4, :cond_0

    #@1c
    .line 1444
    if-eqz v1, :cond_0

    #@1e
    .line 1445
    const/16 v4, 0xd

    #@20
    if-eq v1, v4, :cond_0

    #@22
    .line 1446
    const/16 v4, 0xe

    #@24
    if-eq v1, v4, :cond_0

    #@26
    .line 1447
    const/16 v4, 0xc

    #@28
    if-eq v1, v4, :cond_0

    #@2a
    .line 1448
    const/4 v4, 0x1

    #@2b
    return v4

    #@2c
    .line 1438
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@2f
    move-result v4

    #@30
    add-int/2addr v2, v4

    #@31
    goto :goto_0

    #@32
    .line 1451
    .end local v0    # "cp":I
    .end local v1    # "gc":I
    :cond_1
    return v5
.end method

.method public static isPrintableAscii(C)Z
    .locals 4
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1491
    const/16 v0, 0x20

    #@3
    .line 1492
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    #@5
    .line 1493
    .local v1, "asciiLast":I
    const/16 v3, 0x20

    #@7
    if-gt v3, p0, :cond_1

    #@9
    const/16 v3, 0x7e

    #@b
    if-gt p0, v3, :cond_1

    #@d
    :cond_0
    :goto_0
    return v2

    #@e
    :cond_1
    const/16 v3, 0xd

    #@10
    if-eq p0, v3, :cond_0

    #@12
    const/16 v3, 0xa

    #@14
    if-eq p0, v3, :cond_0

    #@16
    const/4 v2, 0x0

    #@17
    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1500
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    .line 1501
    .local v1, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 1502
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 1503
    const/4 v2, 0x0

    #@12
    return v2

    #@13
    .line 1501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1506
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    #@0
    .prologue
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 313
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .line 314
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    .line 316
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 317
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1f
    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 321
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 294
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@6
    .line 295
    .local v0, "firstTime":Z
    const/4 v3, 0x0

    #@7
    array-length v4, p1

    #@8
    :goto_0
    if-ge v3, v4, :cond_1

    #@a
    aget-object v2, p1, v3

    #@c
    .line 296
    .local v2, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@e
    .line 297
    const/4 v0, 0x0

    #@f
    .line 301
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    .line 295
    add-int/lit8 v3, v3, 0x1

    #@14
    goto :goto_0

    #@15
    .line 299
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@18
    goto :goto_1

    #@19
    .line 303
    .end local v2    # "token":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    return-object v3
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 147
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    #@0
    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 153
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 154
    check-cast p0, Ljava/lang/String;

    #@a
    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 156
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    #@10
    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    #@13
    move-result v1

    #@14
    return v1
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 10
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    .line 161
    if-gez p3, :cond_0

    #@4
    .line 162
    return v8

    #@5
    .line 163
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v7

    #@9
    if-lt p3, v7, :cond_1

    #@b
    .line 164
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v7

    #@f
    add-int/lit8 p3, v7, -0x1

    #@11
    .line 166
    :cond_1
    add-int/lit8 v3, p3, 0x1

    #@13
    .line 168
    .local v3, "end":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    .line 170
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v7, p0, Landroid/text/GetChars;

    #@19
    if-nez v7, :cond_2

    #@1b
    const-class v7, Ljava/lang/StringBuffer;

    #@1d
    if-ne v1, v7, :cond_4

    #@1f
    .line 172
    :cond_2
    const/16 v0, 0x1f4

    #@21
    .line 173
    .local v0, "INDEX_INCREMENT":I
    const/16 v7, 0x1f4

    #@23
    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    #@26
    move-result-object v6

    #@27
    .line 175
    .local v6, "temp":[C
    :goto_0
    if-ge p2, v3, :cond_7

    #@29
    .line 176
    add-int/lit16 v5, v3, -0x1f4

    #@2b
    .line 177
    .local v5, "segstart":I
    if-ge v5, p2, :cond_3

    #@2d
    .line 178
    move v5, p2

    #@2e
    .line 180
    :cond_3
    invoke-static {p0, v5, v3, v6, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@31
    .line 182
    sub-int v2, v3, v5

    #@33
    .line 183
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    #@35
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_6

    #@37
    .line 184
    aget-char v7, v6, v4

    #@39
    if-ne v7, p1, :cond_5

    #@3b
    .line 185
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    #@3e
    .line 186
    add-int v7, v4, v5

    #@40
    return v7

    #@41
    .line 171
    .end local v0    # "INDEX_INCREMENT":I
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "segstart":I
    .end local v6    # "temp":[C
    :cond_4
    const-class v7, Ljava/lang/StringBuilder;

    #@43
    if-eq v1, v7, :cond_2

    #@45
    const-class v7, Ljava/lang/String;

    #@47
    if-eq v1, v7, :cond_2

    #@49
    .line 197
    add-int/lit8 v4, v3, -0x1

    #@4b
    .restart local v4    # "i":I
    :goto_2
    if-lt v4, p2, :cond_9

    #@4d
    .line 198
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@50
    move-result v7

    #@51
    if-ne v7, p1, :cond_8

    #@53
    .line 199
    return v4

    #@54
    .line 183
    .restart local v0    # "INDEX_INCREMENT":I
    .restart local v2    # "count":I
    .restart local v5    # "segstart":I
    .restart local v6    # "temp":[C
    :cond_5
    add-int/lit8 v4, v4, -0x1

    #@56
    goto :goto_1

    #@57
    .line 190
    :cond_6
    move v3, v5

    #@58
    goto :goto_0

    #@59
    .line 193
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "segstart":I
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    #@5c
    .line 194
    return v8

    #@5d
    .line 197
    .end local v0    # "INDEX_INCREMENT":I
    .end local v6    # "temp":[C
    .restart local v4    # "i":I
    :cond_8
    add-int/lit8 v4, v4, -0x1

    #@5f
    goto :goto_2

    #@60
    .line 201
    :cond_9
    return v8
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 p0, 0x0

    #@7
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    #@0
    .prologue
    .line 1331
    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 1332
    :try_start_0
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    #@5
    .line 1333
    .local v0, "buf":[C
    const/4 v1, 0x0

    #@6
    sput-object v1, Landroid/text/TextUtils;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v2

    #@9
    .line 1336
    if-eqz v0, :cond_0

    #@b
    array-length v1, v0

    #@c
    if-ge v1, p0, :cond_1

    #@e
    .line 1337
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    #@11
    move-result-object v0

    #@12
    .line 1339
    :cond_1
    return-object v0

    #@13
    .line 1331
    .end local v0    # "buf":[C
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    #@0
    .prologue
    .line 1725
    int-to-long v0, p0

    #@1
    const/16 v2, 0x20

    #@3
    shl-long/2addr v0, v2

    #@4
    int-to-long v2, p1

    #@5
    or-long/2addr v0, v2

    #@6
    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1003
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v2

    #@c
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@f
    .line 1002
    return-void
.end method

.method static recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    #@0
    .prologue
    .line 1343
    array-length v0, p0

    #@1
    const/16 v1, 0x3e8

    #@3
    if-le v0, v1, :cond_0

    #@5
    .line 1344
    return-void

    #@6
    .line 1346
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    #@8
    monitor-enter v0

    #@9
    .line 1347
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v0

    #@c
    .line 1342
    return-void

    #@d
    .line 1346
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v0

    #@f
    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 242
    mul-int/lit8 v3, p4, 0x2

    #@2
    .line 243
    .local v3, "tempLen":I
    if-ge v3, p4, :cond_0

    #@4
    .line 245
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@6
    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@9
    throw v4

    #@a
    .line 247
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    #@d
    move-result-object v2

    #@e
    .line 249
    .local v2, "temp":[C
    add-int v4, p1, p4

    #@10
    const/4 v5, 0x0

    #@11
    invoke-static {p0, p1, v4, v2, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@14
    .line 250
    add-int v4, p3, p4

    #@16
    invoke-static {p2, p3, v4, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@19
    .line 252
    const/4 v1, 0x1

    #@1a
    .line 253
    .local v1, "match":Z
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    #@1d
    .line 254
    aget-char v4, v2, v0

    #@1f
    add-int v5, v0, p4

    #@21
    aget-char v5, v2, v5

    #@23
    if-eq v4, v5, :cond_2

    #@25
    .line 255
    const/4 v1, 0x0

    #@26
    .line 260
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    #@29
    .line 261
    return v1

    #@2a
    .line 253
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 9
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    #@1
    .line 1687
    const/4 v0, 0x0

    #@2
    .line 1688
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@3
    .line 1690
    .local v1, "count":I
    const/4 v3, 0x0

    #@4
    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    .local v3, "i":I
    :goto_0
    array-length v7, p0

    #@5
    if-ge v3, v7, :cond_2

    #@7
    .line 1691
    aget-object v5, p0, v3

    #@9
    .line 1692
    .local v5, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@c
    move-result v6

    #@d
    .line 1693
    .local v6, "start":I
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@10
    move-result v2

    #@11
    .line 1695
    .local v2, "end":I
    if-ne v6, v2, :cond_1

    #@13
    .line 1696
    if-nez v0, :cond_0

    #@15
    .line 1697
    array-length v7, p0

    #@16
    add-int/lit8 v7, v7, -0x1

    #@18
    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, [Ljava/lang/Object;

    #@1e
    .line 1698
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 1699
    move v1, v3

    #@22
    .line 1690
    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1702
    :cond_1
    if-eqz v0, :cond_0

    #@27
    .line 1703
    aput-object v5, v0, v1

    #@29
    .line 1704
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 1709
    .end local v2    # "end":I
    .end local v5    # "span":Ljava/lang/Object;, "TT;"
    .end local v6    # "start":I
    :cond_2
    if-eqz v0, :cond_3

    #@2e
    .line 1710
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, [Ljava/lang/Object;

    #@34
    .line 1711
    .local v4, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@37
    .line 1712
    return-object v4

    #@38
    .line 1714
    .end local v4    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_3
    return-object p0
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 846
    new-instance v3, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@5
    .line 848
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v5, p1

    #@7
    if-ge v1, v5, :cond_1

    #@9
    .line 849
    aget-object v5, p1, v1

    #@b
    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    #@e
    move-result v4

    #@f
    .line 851
    .local v4, "where":I
    if-ltz v4, :cond_0

    #@11
    .line 852
    aget-object v5, p1, v1

    #@13
    aget-object v6, p1, v1

    #@15
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@18
    move-result v6

    #@19
    add-int/2addr v6, v4

    #@1a
    .line 853
    const/16 v7, 0x21

    #@1c
    .line 852
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1f
    .line 848
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 856
    .end local v4    # "where":I
    :cond_1
    const/4 v1, 0x0

    #@23
    :goto_1
    array-length v5, p1

    #@24
    if-ge v1, v5, :cond_3

    #@26
    .line 857
    aget-object v5, p1, v1

    #@28
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@2b
    move-result v2

    #@2c
    .line 858
    .local v2, "start":I
    aget-object v5, p1, v1

    #@2e
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    #@31
    move-result v0

    #@32
    .line 860
    .local v0, "end":I
    if-ltz v2, :cond_2

    #@34
    .line 861
    aget-object v5, p2, v1

    #@36
    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@39
    .line 856
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 865
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_3
    return-object v3
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 12
    .param p0, "mt"    # Landroid/text/MeasuredText;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 1283
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p2

    #@3
    move v2, p3

    #@4
    move/from16 v3, p4

    #@6
    move-object/from16 v4, p5

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    #@b
    .line 1286
    instance-of v0, p2, Landroid/text/Spanned;

    #@d
    if-eqz v0, :cond_1

    #@f
    check-cast p2, Landroid/text/Spanned;

    #@11
    move-object v7, p2

    #@12
    .line 1287
    .end local p2    # "text":Ljava/lang/CharSequence;
    .local v7, "sp":Landroid/text/Spanned;
    :goto_0
    sub-int v6, p4, p3

    #@14
    .line 1288
    .local v6, "len":I
    if-nez v7, :cond_2

    #@16
    .line 1289
    const/4 v0, 0x0

    #@17
    invoke-virtual {p0, p1, v6, v0}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    #@1a
    move-result v11

    #@1b
    .line 1303
    .local v11, "width":F
    :cond_0
    return v11

    #@1c
    .line 1286
    .end local v6    # "len":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v11    # "width":F
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v7, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 1291
    .end local p2    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "len":I
    .restart local v7    # "sp":Landroid/text/Spanned;
    :cond_2
    const/4 v11, 0x0

    #@1f
    .line 1293
    .restart local v11    # "width":F
    const/4 v9, 0x0

    #@20
    .local v9, "spanStart":I
    :goto_1
    if-ge v9, v6, :cond_0

    #@22
    .line 1295
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    #@24
    .line 1294
    invoke-interface {v7, v9, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@27
    move-result v8

    #@28
    .line 1297
    .local v8, "spanEnd":I
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    #@2a
    .line 1296
    invoke-interface {v7, v9, v8, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@2d
    move-result-object v10

    #@2e
    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    #@30
    .line 1298
    .local v10, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    #@32
    invoke-static {v10, v7, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    #@35
    move-result-object v10

    #@36
    .end local v10    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    #@38
    .line 1299
    .restart local v10    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sub-int v0, v8, v9

    #@3a
    const/4 v1, 0x0

    #@3b
    invoke-virtual {p0, p1, v10, v0, v1}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    #@3e
    move-result v0

    #@3f
    add-float/2addr v11, v0

    #@40
    .line 1293
    move v9, v8

    #@41
    goto :goto_1
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 336
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@8
    return-object v0

    #@9
    .line 338
    :cond_0
    const/4 v0, -0x1

    #@a
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 353
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@8
    return-object v0

    #@9
    .line 355
    :cond_0
    const/4 v0, -0x1

    #@a
    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 436
    if-nez p0, :cond_0

    #@3
    .line 437
    return-object v0

    #@4
    .line 438
    :cond_0
    instance-of v0, p0, Landroid/text/SpannedString;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 439
    return-object p0

    #@9
    .line 440
    :cond_1
    instance-of v0, p0, Landroid/text/Spanned;

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 441
    new-instance v0, Landroid/text/SpannedString;

    #@f
    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    #@12
    return-object v0

    #@13
    .line 443
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 272
    instance-of v2, p0, Ljava/lang/String;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 273
    check-cast p0, Ljava/lang/String;

    #@7
    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 274
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    instance-of v2, p0, Ljava/lang/StringBuilder;

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 275
    check-cast p0, Ljava/lang/StringBuilder;

    #@12
    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    return-object v2

    #@17
    .line 276
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_1
    instance-of v2, p0, Ljava/lang/StringBuffer;

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 277
    check-cast p0, Ljava/lang/StringBuffer;

    #@1d
    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 279
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_2
    sub-int v2, p2, p1

    #@24
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    #@27
    move-result-object v1

    #@28
    .line 280
    .local v1, "temp":[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@2b
    .line 281
    new-instance v0, Ljava/lang/String;

    #@2d
    sub-int v2, p2, p1

    #@2f
    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    #@32
    .line 282
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    #@35
    .line 284
    return-object v0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    #@0
    .prologue
    .line 1745
    const-wide v0, 0xffffffffL

    #@5
    and-long/2addr v0, p0

    #@6
    long-to-int v0, v0

    #@7
    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    #@0
    .prologue
    .line 1735
    const/16 v0, 0x20

    #@2
    ushr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 626
    instance-of v7, p0, Landroid/text/Spanned;

    #@5
    if-eqz v7, :cond_5

    #@7
    .line 627
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 628
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    move-object v5, p0

    #@12
    .line 630
    check-cast v5, Landroid/text/Spanned;

    #@14
    .line 631
    .local v5, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@17
    move-result v7

    #@18
    const-class v8, Ljava/lang/Object;

    #@1a
    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    .line 638
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    array-length v7, v2

    #@20
    if-ge v0, v7, :cond_4

    #@22
    .line 639
    aget-object v1, v2, v0

    #@24
    .line 640
    .local v1, "o":Ljava/lang/Object;
    aget-object v3, v2, v0

    #@26
    .line 642
    .local v3, "prop":Ljava/lang/Object;
    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 643
    check-cast v3, Landroid/text/style/CharacterStyle;

    #@2c
    .end local v3    # "prop":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    #@2f
    move-result-object v3

    #@30
    .line 646
    .restart local v3    # "prop":Ljava/lang/Object;
    :cond_0
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    #@32
    if-eqz v7, :cond_2

    #@34
    move-object v4, v3

    #@35
    .line 647
    check-cast v4, Landroid/text/ParcelableSpan;

    #@37
    .line 648
    .local v4, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    #@3a
    move-result v6

    #@3b
    .line 649
    .local v6, "spanTypeId":I
    if-lt v6, v11, :cond_1

    #@3d
    const/16 v7, 0x18

    #@3f
    if-le v6, v7, :cond_3

    #@41
    .line 650
    :cond_1
    const-string/jumbo v7, "TextUtils"

    #@44
    new-instance v8, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v9, "External class \""

    #@4c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    .line 651
    const-string/jumbo v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    #@5f
    .line 650
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v8

    #@63
    .line 652
    const-string/jumbo v9, " interface"

    #@66
    .line 650
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v8

    #@6a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v8

    #@6e
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    .line 638
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_0

    #@74
    .line 654
    .restart local v4    # "ps":Landroid/text/ParcelableSpan;
    .restart local v6    # "spanTypeId":I
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    .line 655
    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@7a
    .line 656
    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    #@7d
    goto :goto_1

    #@7e
    .line 661
    .end local v1    # "o":Ljava/lang/Object;
    .end local v3    # "prop":Ljava/lang/Object;
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_4
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@81
    .line 625
    .end local v0    # "i":I
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v5    # "sp":Landroid/text/Spanned;
    :goto_2
    return-void

    #@82
    .line 663
    :cond_5
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    #@85
    .line 664
    if-eqz p0, :cond_6

    #@87
    .line 665
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8e
    goto :goto_2

    #@8f
    .line 667
    :cond_6
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@92
    goto :goto_2
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 673
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 674
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 675
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 672
    return-void
.end method
