.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$StringWithRemovedChars;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;,
        Landroid/text/TextUtils$SafeStringFlags;
    }
.end annotation


# static fields
.field public static final greylist-max-o ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final greylist-max-o ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final blacklist ACCESSIBILITY_REPLACEMENT_SPAN:I = 0x1d

.field public static final greylist-max-o ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final greylist-max-o ALIGNMENT_SPAN:I = 0x1

.field public static final greylist-max-o ANNOTATION:I = 0x12

.field public static final greylist-max-o BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final greylist-max-o BULLET_SPAN:I = 0x8

.field public static final whitelist CAP_MODE_CHARACTERS:I = 0x1000

.field public static final whitelist CAP_MODE_SENTENCES:I = 0x4000

.field public static final whitelist CAP_MODE_WORDS:I = 0x2000

.field public static final whitelist CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EASY_EDIT_SPAN:I = 0x16

.field static final greylist-max-o ELLIPSIS_FILLER:C = '\ufeff'

.field private static final greylist-max-o ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final greylist-max-o ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field public static final greylist-max-o FIRST_SPAN:I = 0x1

.field public static final greylist-max-o FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final greylist-max-o LAST_SPAN:I = 0x1f

.field public static final greylist-max-o LEADING_MARGIN_SPAN:I = 0xa

.field public static final blacklist LINE_BACKGROUND_SPAN:I = 0x1b

.field public static final blacklist LINE_BREAK_CONFIG_SPAN:I = 0x1e

.field public static final blacklist LINE_FEED_CODE_POINT:I = 0xa

.field public static final blacklist LINE_HEIGHT_SPAN:I = 0x1c

.field public static final greylist-max-o LOCALE_SPAN:I = 0x17

.field private static final blacklist NBSP_CODE_POINT:I = 0xa0

.field public static final blacklist NO_WRITING_TOOLS_SPAN:I = 0x1f

.field private static final greylist-max-o PARCEL_SAFE_TEXT_LENGTH:I = 0x186a0

.field public static final greylist-max-o QUOTE_SPAN:I = 0x9

.field public static final greylist-max-o RELATIVE_SIZE_SPAN:I = 0x3

.field public static final whitelist SAFE_STRING_FLAG_FIRST_LINE:I = 0x4

.field public static final whitelist SAFE_STRING_FLAG_SINGLE_LINE:I = 0x2

.field public static final whitelist SAFE_STRING_FLAG_TRIM:I = 0x1

.field public static final greylist-max-o SCALE_X_SPAN:I = 0x4

.field public static final greylist-max-o SPELL_CHECK_SPAN:I = 0x14

.field public static final greylist-max-o STRIKETHROUGH_SPAN:I = 0x5

.field public static final greylist-max-o STYLE_SPAN:I = 0x7

.field public static final greylist-max-o SUBSCRIPT_SPAN:I = 0xf

.field public static final greylist-max-o SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final greylist-max-o SUGGESTION_SPAN:I = 0x13

.field public static final greylist-max-o SUPERSCRIPT_SPAN:I = 0xe

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TextUtils"

.field public static final greylist-max-o TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final greylist-max-o TTS_SPAN:I = 0x18

.field public static final greylist-max-o TYPEFACE_SPAN:I = 0xd

.field public static final greylist-max-o UNDERLINE_SPAN:I = 0x6

.field public static final greylist-max-o URL_SPAN:I = 0xb

.field private static greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sTemp:[C


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 858
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2617
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 2619
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "p":Landroid/text/TextPaint;
    .end local p2    # "avail":F
    .end local p3    # "oneMore":Ljava/lang/String;
    .end local p4    # "more":Ljava/lang/String;
    .local v0, "text":Ljava/lang/CharSequence;
    .local v1, "p":Landroid/text/TextPaint;
    .local v2, "avail":F
    .local v3, "oneMore":Ljava/lang/String;
    .local v4, "more":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .registers 25
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1591
    const/4 v6, 0x0

    .line 1592
    .local v6, "mt":Landroid/text/MeasuredParagraph;
    const/4 v7, 0x0

    .line 1594
    .local v7, "tempMt":Landroid/text/MeasuredParagraph;
    :try_start_2
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_105

    .line 1595
    .local v4, "len":I
    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    :try_start_d
    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0

    move-object v6, v0

    .line 1596
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_103

    .line 1597
    .local v0, "width":F
    cmpg-float v1, v0, p2

    if-gtz v1, :cond_26

    .line 1598
    nop

    .line 1650
    if-eqz v6, :cond_20

    .line 1651
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1653
    :cond_20
    if-eqz v7, :cond_25

    .line 1654
    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1598
    :cond_25
    return-object v2

    .line 1601
    :cond_26
    :try_start_26
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v1

    .line 1603
    .local v1, "buf":[C
    const/4 v3, 0x0

    .line 1604
    .local v3, "commaCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2c
    const/16 v14, 0x2c

    if-ge v5, v4, :cond_39

    .line 1605
    aget-char v8, v1, v5

    if-ne v8, v14, :cond_36

    .line 1606
    add-int/lit8 v3, v3, 0x1

    .line 1604
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 1610
    .end local v5    # "i":I
    :cond_39
    add-int/lit8 v5, v3, 0x1

    .line 1612
    .local v5, "remaining":I
    const/4 v8, 0x0

    .line 1613
    .local v8, "ok":I
    const-string v9, ""

    .line 1615
    .local v9, "okFormat":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1616
    .local v10, "w":I
    const/4 v11, 0x0

    .line 1617
    .local v11, "count":I
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getWidths()Landroid/text/AutoGrowArray$FloatArray;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v12
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_103

    move-object v15, v12

    .line 1619
    .local v15, "widths":[F
    const/4 v12, 0x0

    move-object v13, v7

    move v7, v8

    move v8, v12

    .local v7, "ok":I
    .local v8, "i":I
    .local v13, "tempMt":Landroid/text/MeasuredParagraph;
    :goto_4d
    if-ge v8, v4, :cond_e5

    .line 1620
    int-to-float v12, v10

    :try_start_50
    aget v16, v15, v8

    add-float v12, v12, v16

    float-to-int v10, v12

    .line 1622
    aget-char v12, v1, v8
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_100

    if-ne v12, v14, :cond_d3

    .line 1623
    add-int/lit8 v16, v11, 0x1

    .line 1628
    .end local v11    # "count":I
    .local v16, "count":I
    add-int/lit8 v5, v5, -0x1

    const-string v11, " "

    const/4 v12, 0x1

    if-ne v5, v12, :cond_7f

    .line 1629
    :try_start_62
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_7a

    move-object/from16 v12, p3

    :try_start_6d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v17, v10

    move-object/from16 v10, p4

    .local v11, "format":Ljava/lang/String;
    goto :goto_a2

    .line 1650
    .end local v0    # "width":F
    .end local v1    # "buf":[C
    .end local v3    # "commaCount":I
    .end local v4    # "len":I
    .end local v5    # "remaining":I
    .end local v7    # "ok":I
    .end local v8    # "i":I
    .end local v9    # "okFormat":Ljava/lang/String;
    .end local v10    # "w":I
    .end local v11    # "format":Ljava/lang/String;
    .end local v15    # "widths":[F
    .end local v16    # "count":I
    :catchall_7a
    move-exception v0

    move-object/from16 v12, p3

    goto/16 :goto_101

    .line 1631
    .restart local v0    # "width":F
    .restart local v1    # "buf":[C
    .restart local v3    # "commaCount":I
    .restart local v4    # "len":I
    .restart local v5    # "remaining":I
    .restart local v7    # "ok":I
    .restart local v8    # "i":I
    .restart local v9    # "okFormat":Ljava/lang/String;
    .restart local v10    # "w":I
    .restart local v15    # "widths":[F
    .restart local v16    # "count":I
    :cond_7f
    move-object/from16 v12, p3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    move/from16 v17, v10

    move-object/from16 v10, p4

    .end local v10    # "w":I
    .local v17, "w":I
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1635
    .restart local v11    # "format":Ljava/lang/String;
    :goto_a2
    nop

    .line 1636
    move-object v14, v9

    move-object v9, v11

    .end local v11    # "format":Ljava/lang/String;
    .local v9, "format":Ljava/lang/String;
    .local v14, "okFormat":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 1635
    const/4 v10, 0x0

    move-object/from16 v12, p5

    move-object/from16 v18, v1

    move/from16 v1, v17

    move/from16 v17, v0

    move-object v0, v14

    move v14, v8

    move-object/from16 v8, p1

    .end local v8    # "i":I
    .local v0, "okFormat":Ljava/lang/String;
    .local v1, "w":I
    .local v14, "i":I
    .local v17, "width":F
    .local v18, "buf":[C
    invoke-static/range {v8 .. v13}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v10
    :try_end_ba
    .catchall {:try_start_6d .. :try_end_ba} :catchall_100

    .line 1637
    .end local v13    # "tempMt":Landroid/text/MeasuredParagraph;
    .local v10, "tempMt":Landroid/text/MeasuredParagraph;
    :try_start_ba
    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v8
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_d0

    .line 1639
    .local v8, "moreWid":F
    int-to-float v11, v1

    add-float/2addr v11, v8

    cmpg-float v11, v11, p2

    if-gtz v11, :cond_cb

    .line 1640
    add-int/lit8 v7, v14, 0x1

    .line 1641
    move-object v0, v9

    move-object v13, v10

    move/from16 v11, v16

    goto :goto_da

    .line 1639
    :cond_cb
    move-object v9, v0

    move-object v13, v10

    move/from16 v11, v16

    goto :goto_da

    .line 1650
    .end local v0    # "okFormat":Ljava/lang/String;
    .end local v1    # "w":I
    .end local v3    # "commaCount":I
    .end local v4    # "len":I
    .end local v5    # "remaining":I
    .end local v7    # "ok":I
    .end local v8    # "moreWid":F
    .end local v9    # "format":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "widths":[F
    .end local v16    # "count":I
    .end local v17    # "width":F
    .end local v18    # "buf":[C
    :catchall_d0
    move-exception v0

    move-object v7, v10

    goto :goto_108

    .line 1622
    .local v0, "width":F
    .local v1, "buf":[C
    .restart local v3    # "commaCount":I
    .restart local v4    # "len":I
    .restart local v5    # "remaining":I
    .restart local v7    # "ok":I
    .local v8, "i":I
    .local v9, "okFormat":Ljava/lang/String;
    .local v10, "w":I
    .local v11, "count":I
    .restart local v13    # "tempMt":Landroid/text/MeasuredParagraph;
    .restart local v15    # "widths":[F
    :cond_d3
    move/from16 v17, v0

    move-object/from16 v18, v1

    move v14, v8

    move-object v0, v9

    move v1, v10

    .line 1619
    .end local v0    # "width":F
    .end local v8    # "i":I
    .end local v10    # "w":I
    .local v1, "w":I
    .restart local v14    # "i":I
    .restart local v17    # "width":F
    .restart local v18    # "buf":[C
    :goto_da
    add-int/lit8 v8, v14, 0x1

    move v10, v1

    move/from16 v0, v17

    move-object/from16 v1, v18

    const/16 v14, 0x2c

    .end local v14    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_4d

    .end local v17    # "width":F
    .end local v18    # "buf":[C
    .restart local v0    # "width":F
    .local v1, "buf":[C
    .restart local v10    # "w":I
    :cond_e5
    move/from16 v17, v0

    move-object/from16 v18, v1

    move v14, v8

    move-object v0, v9

    .line 1646
    .end local v1    # "buf":[C
    .end local v8    # "i":I
    .end local v9    # "okFormat":Ljava/lang/String;
    .local v0, "okFormat":Ljava/lang/String;
    .restart local v17    # "width":F
    .restart local v18    # "buf":[C
    :try_start_eb
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1647
    .local v1, "out":Landroid/text/SpannableStringBuilder;
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v2, v8, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_f4
    .catchall {:try_start_eb .. :try_end_f4} :catchall_100

    .line 1648
    nop

    .line 1650
    if-eqz v6, :cond_fa

    .line 1651
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1653
    :cond_fa
    if-eqz v13, :cond_ff

    .line 1654
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1648
    :cond_ff
    return-object v1

    .line 1650
    .end local v0    # "okFormat":Ljava/lang/String;
    .end local v1    # "out":Landroid/text/SpannableStringBuilder;
    .end local v3    # "commaCount":I
    .end local v4    # "len":I
    .end local v5    # "remaining":I
    .end local v7    # "ok":I
    .end local v10    # "w":I
    .end local v11    # "count":I
    .end local v15    # "widths":[F
    .end local v17    # "width":F
    .end local v18    # "buf":[C
    :catchall_100
    move-exception v0

    :goto_101
    move-object v7, v13

    goto :goto_108

    .end local v13    # "tempMt":Landroid/text/MeasuredParagraph;
    .local v7, "tempMt":Landroid/text/MeasuredParagraph;
    :catchall_103
    move-exception v0

    goto :goto_108

    :catchall_105
    move-exception v0

    move-object/from16 v2, p0

    :goto_108
    if-eqz v6, :cond_10d

    .line 1651
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1653
    :cond_10d
    if-eqz v7, :cond_112

    .line 1654
    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1656
    :cond_112
    throw v0
.end method

.method public static varargs whitelist concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "text"    # [Ljava/lang/CharSequence;

    .line 1768
    array-length v0, p0

    if-nez v0, :cond_6

    .line 1769
    const-string v0, ""

    return-object v0

    .line 1772
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 1773
    aget-object v0, p0, v1

    return-object v0

    .line 1776
    :cond_e
    const/4 v0, 0x0

    .line 1777
    .local v0, "spanned":Z
    array-length v2, p0

    move v3, v1

    :goto_11
    if-ge v3, v2, :cond_1e

    aget-object v4, p0, v3

    .line 1778
    .local v4, "piece":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_1b

    .line 1779
    const/4 v0, 0x1

    .line 1780
    goto :goto_1e

    .line 1777
    .end local v4    # "piece":Ljava/lang/CharSequence;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1784
    :cond_1e
    :goto_1e
    if-eqz v0, :cond_3c

    .line 1785
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1786
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    array-length v3, p0

    :goto_26
    if-ge v1, v3, :cond_36

    aget-object v4, p0, v1

    .line 1790
    .restart local v4    # "piece":Ljava/lang/CharSequence;
    if-nez v4, :cond_2f

    const-string v5, "null"

    goto :goto_30

    :cond_2f
    move-object v5, v4

    :goto_30
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1786
    .end local v4    # "piece":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1792
    :cond_36
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 1794
    .end local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1795
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    :goto_42
    if-ge v1, v3, :cond_4c

    aget-object v4, p0, v1

    .line 1796
    .restart local v4    # "piece":Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1795
    .end local v4    # "piece":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 1798
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .registers 14
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    .line 1230
    if-nez p3, :cond_4

    .line 1231
    const-class p3, Ljava/lang/Object;

    .line 1234
    :cond_4
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1236
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_32

    .line 1237
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1238
    .local v2, "st":I
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1239
    .local v3, "en":I
    aget-object v4, v0, v1

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 1241
    .local v4, "fl":I
    if-ge v2, p1, :cond_21

    .line 1242
    move v2, p1

    .line 1243
    :cond_21
    if-le v3, p2, :cond_24

    .line 1244
    move v3, p2

    .line 1246
    :cond_24
    aget-object v5, v0, v1

    sub-int v6, v2, p1

    add-int/2addr v6, p5

    sub-int v7, v3, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1236
    .end local v2    # "st":I
    .end local v3    # "en":I
    .end local v4    # "fl":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1249
    .end local v1    # "i":I
    :cond_32
    return-void
.end method

.method static greylist-max-o couldAffectRtl(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 1666
    const/16 v0, 0x590

    if-gt v0, p0, :cond_8

    const/16 v0, 0x8ff

    if-le p0, v0, :cond_41

    :cond_8
    const/16 v0, 0x200e

    if-eq p0, v0, :cond_41

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_41

    const/16 v0, 0x202a

    if-gt v0, p0, :cond_18

    const/16 v0, 0x202e

    if-le p0, v0, :cond_41

    :cond_18
    const/16 v0, 0x2066

    if-gt v0, p0, :cond_20

    const/16 v0, 0x2069

    if-le p0, v0, :cond_41

    :cond_20
    const v0, 0xd800

    if-gt v0, p0, :cond_2a

    const v0, 0xdfff

    if-le p0, v0, :cond_41

    :cond_2a
    const v0, 0xfb1d

    if-gt v0, p0, :cond_34

    const v0, 0xfdff

    if-le p0, v0, :cond_41

    :cond_34
    const v0, 0xfe70

    if-gt v0, p0, :cond_3f

    const v0, 0xfefe

    if-gt p0, v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v0, 0x1

    :goto_42
    return v0
.end method

.method public static greylist-max-o delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .registers 9
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .line 2017
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3a

    .line 2020
    :cond_e
    const/4 v0, -0x1

    .line 2021
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2022
    .local v2, "length":I
    :goto_13
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_39

    .line 2023
    if-lez v0, :cond_28

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_28

    .line 2024
    goto :goto_13

    .line 2026
    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 2027
    .local v3, "expectedDelimiterPos":I
    const/4 v4, 0x1

    if-ne v3, v2, :cond_31

    .line 2029
    return v4

    .line 2031
    :cond_31
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_38

    .line 2032
    return v4

    .line 2034
    .end local v3    # "expectedDelimiterPos":I
    :cond_38
    goto :goto_13

    .line 2035
    :cond_39
    return v1

    .line 2018
    .end local v0    # "pos":I
    .end local v2    # "length":I
    :cond_3a
    :goto_3a
    return v1
.end method

.method static greylist-max-o doesNotNeedBidi([CII)Z
    .registers 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .line 1682
    add-int v0, p1, p2

    .line 1683
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_12

    .line 1684
    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1685
    const/4 v2, 0x0

    return v2

    .line 1683
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1688
    .end local v1    # "i":I
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1031
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_8a

    .line 1032
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 1033
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1035
    .local v1, "os":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v3, v1

    if-ge v2, v3, :cond_89

    .line 1036
    aget-object v3, v1, v2

    .line 1037
    .local v3, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1038
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1037
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1039
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1040
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1041
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1042
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1037
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1035
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1044
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "os":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_89
    goto :goto_a4

    .line 1045
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": (no spans)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1047
    :goto_a4
    return-void
.end method

.method public static whitelist ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    .line 1349
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "p":Landroid/text/TextPaint;
    .end local p2    # "avail":F
    .end local p3    # "where":Landroid/text/TextUtils$TruncateAt;
    .local v0, "text":Ljava/lang/CharSequence;
    .local v1, "p":Landroid/text/TextPaint;
    .local v2, "avail":F
    .local v3, "where":Landroid/text/TextUtils$TruncateAt;
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .registers 14
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    .line 1369
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 1371
    invoke-static {p3}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v7

    .line 1369
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "paint":Landroid/text/TextPaint;
    .end local p2    # "avail":F
    .end local p3    # "where":Landroid/text/TextUtils$TruncateAt;
    .end local p4    # "preserveLength":Z
    .end local p5    # "callback":Landroid/text/TextUtils$EllipsizeCallback;
    .local v0, "text":Ljava/lang/CharSequence;
    .local v1, "paint":Landroid/text/TextPaint;
    .local v2, "avail":F
    .local v3, "where":Landroid/text/TextUtils$TruncateAt;
    .local v4, "preserveLength":Z
    .local v5, "callback":Landroid/text/TextUtils$EllipsizeCallback;
    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 29
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    .line 1394
    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 1396
    .local v10, "len":I
    const/4 v6, 0x0

    .line 1398
    .local v6, "mt":Landroid/text/MeasuredParagraph;
    :try_start_b
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_17f

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p6

    :try_start_16
    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_17b

    move-object v11, v2

    move-object v6, v0

    .line 1399
    :try_start_1c
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_172

    move v12, v0

    .line 1401
    .local v12, "width":F
    cmpg-float v0, v12, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_3b

    .line 1402
    if-eqz v8, :cond_34

    .line 1403
    :try_start_28
    invoke-interface {v8, v1, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_34

    .line 1472
    .end local v12    # "width":F
    :catchall_2c
    move-exception v0

    move-object/from16 v13, p1

    move/from16 v15, p2

    move v1, v10

    goto/16 :goto_187

    .line 1406
    .restart local v12    # "width":F
    :cond_34
    :goto_34
    nop

    .line 1472
    if-eqz v6, :cond_3a

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1406
    :cond_3a
    return-object v11

    .line 1411
    :cond_3b
    move-object/from16 v13, p1

    :try_start_3d
    invoke-virtual {v13, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_16b

    move v14, v0

    .line 1412
    .local v14, "ellipsiswid":F
    sub-float v2, p2, v14

    .line 1414
    .end local p2    # "avail":F
    .local v2, "avail":F
    const/4 v0, 0x0

    .line 1415
    .local v0, "left":I
    move v3, v10

    .line 1416
    .local v3, "right":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4e

    move v15, v2

    move v2, v3

    goto :goto_88

    .line 1418
    :cond_4e
    :try_start_4e
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_165

    if-ne v7, v4, :cond_60

    .line 1419
    :try_start_52
    invoke-virtual {v6, v10, v1, v2}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v4
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_5b

    sub-int v3, v10, v4

    move v15, v2

    move v2, v3

    goto :goto_88

    .line 1472
    .end local v0    # "left":I
    .end local v3    # "right":I
    .end local v12    # "width":F
    .end local v14    # "ellipsiswid":F
    :catchall_5b
    move-exception v0

    move v15, v2

    move v1, v10

    goto/16 :goto_187

    .line 1420
    .restart local v0    # "left":I
    .restart local v3    # "right":I
    .restart local v12    # "width":F
    .restart local v14    # "ellipsiswid":F
    :cond_60
    :try_start_60
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_165

    const/4 v5, 0x1

    if-eq v7, v4, :cond_81

    :try_start_65
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v4, :cond_6a

    goto :goto_81

    .line 1423
    :cond_6a
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    invoke-virtual {v6, v10, v1, v4}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v4

    sub-int v3, v10, v4

    .line 1424
    invoke-virtual {v6, v3, v10}, Landroid/text/MeasuredParagraph;->measure(II)F

    move-result v4

    sub-float/2addr v2, v4

    .line 1425
    invoke-virtual {v6, v3, v5, v2}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v4
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_5b

    move v0, v4

    move v15, v2

    move v2, v3

    goto :goto_88

    .line 1421
    :cond_81
    :goto_81
    :try_start_81
    invoke-virtual {v6, v10, v5, v2}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v4
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_165

    move v0, v4

    move v15, v2

    move v2, v3

    .line 1428
    .end local v3    # "right":I
    .local v2, "right":I
    .local v15, "avail":F
    :goto_88
    if-eqz v8, :cond_92

    .line 1429
    :try_start_8a
    invoke-interface {v8, v0, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    .line 1472
    .end local v0    # "left":I
    .end local v2    # "right":I
    .end local v12    # "width":F
    .end local v14    # "ellipsiswid":F
    :catchall_8e
    move-exception v0

    move v1, v10

    goto/16 :goto_187

    .line 1432
    .restart local v0    # "left":I
    .restart local v2    # "right":I
    .restart local v12    # "width":F
    .restart local v14    # "ellipsiswid":F
    :cond_92
    :goto_92
    :try_start_92
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v3

    .line 1433
    .local v3, "buf":[C
    instance-of v4, v11, Landroid/text/Spanned;
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_160

    if-eqz v4, :cond_9e

    :try_start_9a
    move-object v4, v11

    check-cast v4, Landroid/text/Spanned;

    goto :goto_9f

    :cond_9e
    const/4 v4, 0x0

    .line 1435
    .local v4, "sp":Landroid/text/Spanned;
    :goto_9f
    sub-int v5, v2, v0

    .line 1436
    .local v5, "removed":I
    sub-int v16, v10, v5

    .line 1437
    .local v16, "remaining":I
    if-eqz p4, :cond_111

    .line 1438
    if-lez v16, :cond_bf

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v5, v1, :cond_bf

    .line 1439
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 p2, v4

    const/4 v4, 0x0

    .end local v4    # "sp":Landroid/text/Spanned;
    .local p2, "sp":Landroid/text/Spanned;
    invoke-virtual {v9, v4, v1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1440
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v18, v0

    goto :goto_c3

    .line 1438
    .end local p2    # "sp":Landroid/text/Spanned;
    .restart local v4    # "sp":Landroid/text/Spanned;
    :cond_bf
    move-object/from16 p2, v4

    .line 1442
    .end local v4    # "sp":Landroid/text/Spanned;
    .restart local p2    # "sp":Landroid/text/Spanned;
    move/from16 v18, v0

    .end local v0    # "left":I
    .local v18, "left":I
    :goto_c3
    move/from16 v0, v18

    .local v0, "i":I
    :goto_c5
    if-ge v0, v2, :cond_cf

    .line 1443
    const v1, 0xfeff

    aput-char v1, v3, v0
    :try_end_cc
    .catchall {:try_start_9a .. :try_end_cc} :catchall_8e

    .line 1442
    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    .line 1445
    .end local v0    # "i":I
    :cond_cf
    :try_start_cf
    new-instance v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v10}, Ljava/lang/String;-><init>([CII)V
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_160

    .line 1446
    .local v0, "s":Ljava/lang/String;
    if-nez p2, :cond_de

    .line 1447
    nop

    .line 1472
    if-eqz v6, :cond_dd

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1447
    :cond_dd
    return-object v0

    .line 1449
    :cond_de
    :try_start_de
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1450
    .local v4, "ss":Landroid/text/SpannableString;
    move-object v1, v3

    .end local v3    # "buf":[C
    .local v1, "buf":[C
    const-class v3, Ljava/lang/Object;
    :try_end_e6
    .catchall {:try_start_de .. :try_end_e6} :catchall_160

    move/from16 v17, v5

    .end local v5    # "removed":I
    .local v17, "removed":I
    const/4 v5, 0x0

    move-object/from16 v19, v1

    .end local v1    # "buf":[C
    .local v19, "buf":[C
    const/4 v1, 0x0

    move/from16 v20, v10

    move v10, v2

    move/from16 v2, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    move/from16 v20, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    .end local p2    # "sp":Landroid/text/Spanned;
    .local v0, "sp":Landroid/text/Spanned;
    .local v2, "len":I
    .local v6, "buf":[C
    .local v10, "right":I
    .local v17, "s":Ljava/lang/String;
    .local v19, "mt":Landroid/text/MeasuredParagraph;
    .local v20, "removed":I
    :try_start_fd
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_10b

    move-object v1, v4

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    .line 1451
    .end local v2    # "len":I
    .local v0, "ss":Landroid/text/SpannableString;
    .local v1, "len":I
    .local v4, "sp":Landroid/text/Spanned;
    nop

    .line 1472
    if-eqz v19, :cond_10a

    .line 1473
    invoke-virtual/range {v19 .. v19}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1451
    :cond_10a
    return-object v0

    .line 1472
    .end local v0    # "ss":Landroid/text/SpannableString;
    .end local v1    # "len":I
    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v6    # "buf":[C
    .end local v10    # "right":I
    .end local v12    # "width":F
    .end local v14    # "ellipsiswid":F
    .end local v16    # "remaining":I
    .end local v17    # "s":Ljava/lang/String;
    .end local v18    # "left":I
    .end local v20    # "removed":I
    .restart local v2    # "len":I
    :catchall_10b
    move-exception v0

    move v1, v2

    move-object/from16 v6, v19

    .end local v2    # "len":I
    .restart local v1    # "len":I
    goto/16 :goto_187

    .line 1454
    .end local v1    # "len":I
    .end local v19    # "mt":Landroid/text/MeasuredParagraph;
    .local v0, "left":I
    .local v2, "right":I
    .restart local v3    # "buf":[C
    .restart local v4    # "sp":Landroid/text/Spanned;
    .restart local v5    # "removed":I
    .local v6, "mt":Landroid/text/MeasuredParagraph;
    .local v10, "len":I
    .restart local v12    # "width":F
    .restart local v14    # "ellipsiswid":F
    .restart local v16    # "remaining":I
    :cond_111
    move/from16 v20, v5

    move-object/from16 v19, v6

    move v1, v10

    move v10, v2

    move-object v6, v3

    .end local v2    # "right":I
    .end local v3    # "buf":[C
    .end local v5    # "removed":I
    .restart local v1    # "len":I
    .local v6, "buf":[C
    .local v10, "right":I
    .restart local v19    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v20    # "removed":I
    if-nez v16, :cond_127

    .line 1455
    :try_start_11a
    const-string v2, ""
    :try_end_11c
    .catchall {:try_start_11a .. :try_end_11c} :catchall_122

    .line 1472
    if-eqz v19, :cond_121

    .line 1473
    invoke-virtual/range {v19 .. v19}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1455
    :cond_121
    return-object v2

    .line 1472
    .end local v0    # "left":I
    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v6    # "buf":[C
    .end local v10    # "right":I
    .end local v12    # "width":F
    .end local v14    # "ellipsiswid":F
    .end local v16    # "remaining":I
    .end local v20    # "removed":I
    :catchall_122
    move-exception v0

    move-object/from16 v6, v19

    goto/16 :goto_187

    .line 1458
    .restart local v0    # "left":I
    .restart local v4    # "sp":Landroid/text/Spanned;
    .restart local v6    # "buf":[C
    .restart local v10    # "right":I
    .restart local v12    # "width":F
    .restart local v14    # "ellipsiswid":F
    .restart local v16    # "remaining":I
    .restart local v20    # "removed":I
    :cond_127
    if-nez v4, :cond_14a

    .line 1459
    :try_start_129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int v3, v16, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1460
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    sub-int v3, v1, v10

    invoke-virtual {v2, v6, v10, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_144
    .catchall {:try_start_129 .. :try_end_144} :catchall_122

    .line 1472
    if-eqz v19, :cond_149

    .line 1473
    invoke-virtual/range {v19 .. v19}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1463
    :cond_149
    return-object v3

    .line 1466
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_14a
    :try_start_14a
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1467
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1468
    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1469
    invoke-virtual {v2, v11, v10, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_159
    .catchall {:try_start_14a .. :try_end_159} :catchall_122

    .line 1470
    nop

    .line 1472
    if-eqz v19, :cond_15f

    .line 1473
    invoke-virtual/range {v19 .. v19}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1470
    :cond_15f
    return-object v2

    .line 1472
    .end local v0    # "left":I
    .end local v1    # "len":I
    .end local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v12    # "width":F
    .end local v14    # "ellipsiswid":F
    .end local v16    # "remaining":I
    .end local v19    # "mt":Landroid/text/MeasuredParagraph;
    .end local v20    # "removed":I
    .local v6, "mt":Landroid/text/MeasuredParagraph;
    .local v10, "len":I
    :catchall_160
    move-exception v0

    move-object/from16 v19, v6

    move v1, v10

    .end local v6    # "mt":Landroid/text/MeasuredParagraph;
    .end local v10    # "len":I
    .restart local v1    # "len":I
    .restart local v19    # "mt":Landroid/text/MeasuredParagraph;
    goto :goto_187

    .end local v1    # "len":I
    .end local v15    # "avail":F
    .end local v19    # "mt":Landroid/text/MeasuredParagraph;
    .local v2, "avail":F
    .restart local v6    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "len":I
    :catchall_165
    move-exception v0

    move-object/from16 v19, v6

    move v1, v10

    move v15, v2

    .end local v6    # "mt":Landroid/text/MeasuredParagraph;
    .end local v10    # "len":I
    .restart local v1    # "len":I
    .restart local v19    # "mt":Landroid/text/MeasuredParagraph;
    goto :goto_187

    .end local v1    # "len":I
    .end local v2    # "avail":F
    .end local v19    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v6    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "len":I
    .local p2, "avail":F
    :catchall_16b
    move-exception v0

    move-object/from16 v19, v6

    move v1, v10

    move/from16 v15, p2

    .end local v6    # "mt":Landroid/text/MeasuredParagraph;
    .end local v10    # "len":I
    .restart local v1    # "len":I
    .restart local v19    # "mt":Landroid/text/MeasuredParagraph;
    goto :goto_187

    .end local v1    # "len":I
    .end local v19    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v6    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "len":I
    :catchall_172
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v19, v6

    move v1, v10

    move/from16 v15, p2

    .end local v6    # "mt":Landroid/text/MeasuredParagraph;
    .end local v10    # "len":I
    .restart local v1    # "len":I
    .restart local v19    # "mt":Landroid/text/MeasuredParagraph;
    goto :goto_187

    .end local v1    # "len":I
    .end local v19    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v6    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "len":I
    :catchall_17b
    move-exception v0

    move-object v13, v1

    move-object v11, v2

    goto :goto_184

    :catchall_17f
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v13, p1

    :goto_184
    move v1, v10

    move/from16 v15, p2

    .end local v10    # "len":I
    .end local p2    # "avail":F
    .restart local v1    # "len":I
    .restart local v15    # "avail":F
    :goto_187
    if-eqz v6, :cond_18c

    .line 1473
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1475
    :cond_18c
    throw v0
.end method

.method public static greylist-max-o emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 606
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method public static whitelist equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 657
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 659
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v2

    .local v3, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v2, v4, :cond_33

    .line 660
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_21

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 661
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 663
    :cond_21
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v3, :cond_32

    .line 664
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2f

    return v1

    .line 663
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 666
    .end local v2    # "i":I
    :cond_32
    return v0

    .line 669
    .end local v3    # "length":I
    :cond_33
    return v1
.end method

.method public static varargs whitelist expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .line 1101
    array-length v0, p1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_98

    .line 1105
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1108
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 1109
    .local v1, "i":I
    :goto_b
    :try_start_b
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_95

    .line 1110
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_91

    .line 1111
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    .line 1112
    .local v2, "next":C
    if-ne v2, v3, :cond_2b

    .line 1113
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1114
    add-int/lit8 v1, v1, 0x1

    .line 1115
    goto :goto_b

    .line 1116
    :cond_2b
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 1117
    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3
    :try_end_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_35} :catch_96

    add-int/lit8 v3, v3, -0x1

    .line 1118
    .local v3, "which":I
    const-string/jumbo v4, "template requests value ^"

    if-ltz v3, :cond_78

    .line 1122
    :try_start_3c
    array-length v5, p1

    if-ge v3, v5, :cond_4e

    .line 1127
    add-int/lit8 v4, v1, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v0, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1128
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 1129
    goto :goto_b

    .line 1123
    :cond_4e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; only "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " provided"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local p0    # "template":Ljava/lang/CharSequence;
    .end local p1    # "values":[Ljava/lang/CharSequence;
    throw v5

    .line 1119
    .restart local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .restart local p0    # "template":Ljava/lang/CharSequence;
    .restart local p1    # "values":[Ljava/lang/CharSequence;
    :cond_78
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local p0    # "template":Ljava/lang/CharSequence;
    .end local p1    # "values":[Ljava/lang/CharSequence;
    throw v5
    :try_end_91
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c .. :try_end_91} :catch_96

    .line 1132
    .end local v2    # "next":C
    .end local v3    # "which":I
    .restart local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .restart local p0    # "template":Ljava/lang/CharSequence;
    .restart local p1    # "values":[Ljava/lang/CharSequence;
    :cond_91
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 1136
    .end local v1    # "i":I
    :cond_95
    goto :goto_97

    .line 1134
    :catch_96
    move-exception v1

    .line 1137
    :goto_97
    return-object v0

    .line 1102
    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max of 9 values are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 611
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p0

    goto :goto_e

    :cond_8
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_e
    return-object v0
.end method

.method public static varargs blacklist formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 15
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 2166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2167
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2168
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_11b

    .line 2169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_117

    .line 2170
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 2173
    .local v3, "code":C
    const/4 v4, 0x0

    .line 2174
    .local v4, "prefixChar":C
    const/4 v5, 0x0

    .line 2175
    .local v5, "prefixLen":I
    const/4 v6, 0x2

    .line 2176
    .local v6, "consume":I
    :goto_1e
    const/16 v7, 0x30

    const/4 v8, 0x1

    if-gt v7, v3, :cond_42

    const/16 v9, 0x39

    if-gt v3, v9, :cond_42

    .line 2177
    if-nez v4, :cond_2f

    .line 2178
    if-ne v3, v7, :cond_2c

    goto :goto_2e

    :cond_2c
    const/16 v7, 0x20

    :goto_2e
    move v4, v7

    .line 2180
    :cond_2f
    mul-int/lit8 v5, v5, 0xa

    .line 2181
    const/16 v7, 0xa

    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v5, v7

    .line 2182
    add-int/lit8 v6, v6, 0x1

    .line 2183
    add-int v7, v2, v6

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    goto :goto_1e

    .line 2187
    :cond_42
    const/4 v9, 0x0

    const-string v10, "Too few arguments"

    sparse-switch v3, :sswitch_data_12c

    .line 2231
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported format code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2212
    :sswitch_61
    array-length v11, p1

    if-eq v1, v11, :cond_a8

    .line 2215
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .local v10, "j":I
    aget-object v1, p1, v1

    .line 2216
    .local v1, "arg":Ljava/lang/Object;
    instance-of v11, v1, Ljava/lang/Integer;

    if-eqz v11, :cond_7a

    .line 2217
    move-object v11, v1

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move v1, v10

    .local v11, "repl":Ljava/lang/String;
    goto/16 :goto_ed

    .line 2218
    .end local v11    # "repl":Ljava/lang/String;
    :cond_7a
    instance-of v11, v1, Ljava/lang/Long;

    if-eqz v11, :cond_8b

    .line 2219
    move-object v11, v1

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    move v1, v10

    .restart local v11    # "repl":Ljava/lang/String;
    goto :goto_ed

    .line 2221
    .end local v11    # "repl":Ljava/lang/String;
    :cond_8b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported hex type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2213
    .end local v10    # "j":I
    .local v1, "j":I
    :cond_a8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2204
    :sswitch_ae
    array-length v11, p1

    if-eq v1, v11, :cond_bb

    .line 2207
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .restart local v10    # "j":I
    aget-object v1, p1, v1

    .line 2208
    .local v1, "arg":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2209
    .restart local v11    # "repl":Ljava/lang/String;
    move v1, v10

    goto :goto_ed

    .line 2205
    .end local v10    # "j":I
    .end local v11    # "repl":Ljava/lang/String;
    .local v1, "j":I
    :cond_bb
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2189
    :sswitch_c1
    array-length v11, p1

    if-eq v1, v11, :cond_e4

    .line 2192
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "j":I
    .restart local v10    # "j":I
    aget-object v1, p1, v1

    .line 2193
    .local v1, "arg":Ljava/lang/Object;
    instance-of v11, v1, Ljava/lang/Boolean;

    if-eqz v11, :cond_d9

    .line 2194
    move-object v11, v1

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    move v1, v10

    .restart local v11    # "repl":Ljava/lang/String;
    goto :goto_ed

    .line 2196
    .end local v11    # "repl":Ljava/lang/String;
    :cond_d9
    if-eqz v1, :cond_dd

    move v11, v8

    goto :goto_de

    :cond_dd
    move v11, v9

    :goto_de
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 2198
    .restart local v11    # "repl":Ljava/lang/String;
    move v1, v10

    goto :goto_ed

    .line 2190
    .end local v10    # "j":I
    .end local v11    # "repl":Ljava/lang/String;
    .local v1, "j":I
    :cond_e4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2227
    :sswitch_ea
    const-string v11, "%"

    .line 2228
    .restart local v11    # "repl":Ljava/lang/String;
    nop

    .line 2235
    :goto_ed
    add-int v10, v2, v6

    invoke-virtual {v0, v2, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    if-ne v4, v7, :cond_fd

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_fd

    goto :goto_fe

    :cond_fd
    move v8, v9

    .line 2239
    .local v8, "prefixInsert":I
    :goto_fe
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "k":I
    :goto_102
    if-ge v7, v5, :cond_10c

    .line 2240
    add-int v9, v2, v8

    invoke-virtual {v0, v9, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2239
    add-int/lit8 v7, v7, 0x1

    goto :goto_102

    .line 2242
    .end local v7    # "k":I
    :cond_10c
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v2, v7

    .line 2243
    .end local v3    # "code":C
    .end local v4    # "prefixChar":C
    .end local v5    # "prefixLen":I
    .end local v6    # "consume":I
    .end local v8    # "prefixInsert":I
    .end local v11    # "repl":Ljava/lang/String;
    goto/16 :goto_7

    .line 2244
    :cond_117
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 2247
    .end local v2    # "i":I
    :cond_11b
    array-length v2, p1

    if-ne v1, v2, :cond_123

    .line 2250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2248
    :cond_123
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many arguments"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_12c
    .sparse-switch
        0x25 -> :sswitch_ea
        0x62 -> :sswitch_c1
        0x63 -> :sswitch_ae
        0x64 -> :sswitch_ae
        0x66 -> :sswitch_ae
        0x73 -> :sswitch_ae
        0x78 -> :sswitch_61
    .end sparse-switch
.end method

.method public static whitelist getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .line 1921
    if-gez p1, :cond_4

    .line 1922
    const/4 v0, 0x0

    return v0

    .line 1927
    :cond_4
    const/4 v0, 0x0

    .line 1929
    .local v0, "mode":I
    and-int/lit16 v1, p2, 0x1000

    if-eqz v1, :cond_b

    .line 1930
    or-int/lit16 v0, v0, 0x1000

    .line 1932
    :cond_b
    and-int/lit16 v1, p2, 0x6000

    if-nez v1, :cond_10

    .line 1933
    return v0

    .line 1938
    :cond_10
    move v1, p1

    .local v1, "i":I
    :goto_11
    const/16 v2, 0x27

    const/16 v3, 0x22

    if-lez v1, :cond_2d

    .line 1939
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1941
    .local v4, "c":C
    if-eq v4, v3, :cond_2a

    if-eq v4, v2, :cond_2a

    .line 1942
    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_2a

    .line 1943
    goto :goto_2d

    .line 1938
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 1949
    .end local v4    # "c":C
    :cond_2d
    :goto_2d
    move v4, v1

    .line 1950
    .local v4, "j":I
    :goto_2e
    if-lez v4, :cond_42

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    const/16 v7, 0x20

    if-eq v5, v7, :cond_3f

    const/16 v5, 0x9

    if-ne v6, v5, :cond_42

    .line 1951
    :cond_3f
    add-int/lit8 v4, v4, -0x1

    goto :goto_2e

    .line 1953
    .end local v6    # "c":C
    :cond_42
    if-eqz v4, :cond_a2

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4f

    goto :goto_a2

    .line 1959
    :cond_4f
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_58

    .line 1960
    if-eq v1, v4, :cond_57

    or-int/lit16 v0, v0, 0x2000

    .line 1961
    :cond_57
    return v0

    .line 1966
    :cond_58
    if-ne v1, v4, :cond_5b

    .line 1967
    return v0

    .line 1972
    :cond_5b
    :goto_5b
    if-lez v4, :cond_73

    .line 1973
    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1975
    .local v5, "c":C
    if-eq v5, v3, :cond_70

    if-eq v5, v2, :cond_70

    .line 1976
    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_70

    .line 1977
    goto :goto_73

    .line 1972
    :cond_70
    add-int/lit8 v4, v4, -0x1

    goto :goto_5b

    .line 1981
    .end local v5    # "c":C
    :cond_73
    :goto_73
    if-lez v4, :cond_a1

    .line 1982
    add-int/lit8 v2, v4, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1984
    .local v2, "c":C
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_87

    const/16 v5, 0x3f

    if-eq v2, v5, :cond_87

    const/16 v5, 0x21

    if-ne v2, v5, :cond_a1

    .line 1988
    :cond_87
    if-ne v2, v3, :cond_9e

    .line 1989
    add-int/lit8 v5, v4, -0x2

    .local v5, "k":I
    :goto_8b
    if-ltz v5, :cond_9e

    .line 1990
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1992
    if-ne v2, v3, :cond_94

    .line 1993
    return v0

    .line 1996
    :cond_94
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 1997
    goto :goto_9e

    .line 1989
    :cond_9b
    add-int/lit8 v5, v5, -0x1

    goto :goto_8b

    .line 2002
    .end local v5    # "k":I
    :cond_9e
    :goto_9e
    or-int/lit16 v3, v0, 0x4000

    return v3

    .line 2006
    .end local v2    # "c":C
    :cond_a1
    return v0

    .line 1954
    :cond_a2
    :goto_a2
    or-int/lit16 v2, v0, 0x2000

    return v2
.end method

.method public static whitelist getChars(Ljava/lang/CharSequence;II[CI)V
    .registers 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .line 152
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 154
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    .line 155
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_3f

    .line 156
    :cond_f
    const-class v1, Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_1a

    .line 157
    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_3f

    .line 158
    :cond_1a
    const-class v1, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_25

    .line 159
    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_3f

    .line 160
    :cond_25
    instance-of v1, p0, Landroid/text/GetChars;

    if-eqz v1, :cond_30

    .line 161
    move-object v1, p0

    check-cast v1, Landroid/text/GetChars;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_3f

    .line 163
    :cond_30
    move v1, p1

    .local v1, "i":I
    :goto_31
    if-ge v1, p2, :cond_3f

    .line 164
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "destoff":I
    .local v2, "destoff":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 163
    add-int/lit8 v1, v1, 0x1

    move p4, v2

    goto :goto_31

    .line 166
    .end local v1    # "i":I
    .end local v2    # "destoff":I
    .restart local p4    # "destoff":I
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static greylist-max-o getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;
    .registers 2
    .param p0, "method"    # Landroid/text/TextUtils$TruncateAt;

    .line 145
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "\u2025"

    goto :goto_b

    :cond_8
    const-string/jumbo v0, "\u2026"

    :goto_b
    return-object v0
.end method

.method public static whitelist getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 2132
    if-eqz p0, :cond_14

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2133
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2135
    :cond_14
    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_force_rtl()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2136
    :cond_29
    const/4 v1, 0x1

    goto :goto_2c

    .line 2137
    :cond_2b
    nop

    .line 2132
    :goto_2c
    return v1
.end method

.method public static whitelist getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 1176
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1178
    .local v0, "len":I
    if-ne p1, v0, :cond_7

    .line 1179
    return v0

    .line 1180
    :cond_7
    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_c

    .line 1181
    return v0

    .line 1183
    :cond_c
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1185
    .local v1, "c":C
    const v2, 0xd800

    if-lt v1, v2, :cond_30

    const v2, 0xdbff

    if-gt v1, v2, :cond_30

    .line 1186
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1188
    .local v2, "c1":C
    const v3, 0xdc00

    if-lt v2, v3, :cond_2d

    const v3, 0xdfff

    if-gt v2, v3, :cond_2d

    .line 1189
    add-int/lit8 p1, p1, 0x2

    goto :goto_2f

    .line 1191
    :cond_2d
    add-int/lit8 p1, p1, 0x1

    .line 1192
    .end local v2    # "c1":C
    :goto_2f
    goto :goto_32

    .line 1193
    :cond_30
    add-int/lit8 p1, p1, 0x1

    .line 1196
    :goto_32
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_5f

    .line 1197
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 1200
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    array-length v4, v2

    if-ge v3, v4, :cond_5f

    .line 1201
    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1202
    .local v4, "start":I
    move-object v5, p0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1204
    .local v5, "end":I
    if-ge v4, p1, :cond_5c

    if-le v5, p1, :cond_5c

    .line 1205
    move p1, v5

    .line 1200
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1209
    .end local v2    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v3    # "i":I
    :cond_5f
    return p1
.end method

.method public static whitelist getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 1141
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1142
    return v0

    .line 1143
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 1144
    return v0

    .line 1146
    :cond_8
    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1148
    .local v0, "c":C
    const v1, 0xdc00

    if-lt v0, v1, :cond_2e

    const v1, 0xdfff

    if-gt v0, v1, :cond_2e

    .line 1149
    add-int/lit8 v1, p1, -0x2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1151
    .local v1, "c1":C
    const v2, 0xd800

    if-lt v1, v2, :cond_2b

    const v2, 0xdbff

    if-gt v1, v2, :cond_2b

    .line 1152
    add-int/lit8 p1, p1, -0x2

    goto :goto_2d

    .line 1154
    :cond_2b
    add-int/lit8 p1, p1, -0x1

    .line 1155
    .end local v1    # "c1":C
    :goto_2d
    goto :goto_30

    .line 1156
    :cond_2e
    add-int/lit8 p1, p1, -0x1

    .line 1159
    :goto_30
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_5d

    .line 1160
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v1, p1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ReplacementSpan;

    .line 1163
    .local v1, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    array-length v3, v1

    if-ge v2, v3, :cond_5d

    .line 1164
    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1165
    .local v3, "start":I
    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v1, v2

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1167
    .local v4, "end":I
    if-ge v3, p1, :cond_5a

    if-le v4, p1, :cond_5a

    .line 1168
    move p1, v3

    .line 1163
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 1172
    .end local v1    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v2    # "i":I
    :cond_5d
    return p1
.end method

.method public static whitelist getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static whitelist getTrimmedLength(Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 633
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 635
    .local v0, "len":I
    const/4 v1, 0x0

    .line 636
    .local v1, "start":I
    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 640
    :cond_12
    move v3, v0

    .line 641
    .local v3, "end":I
    :goto_13
    if-le v3, v1, :cond_20

    add-int/lit8 v4, v3, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v2, :cond_20

    .line 642
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 645
    :cond_20
    sub-int v2, v3, v1

    return v2
.end method

.method public static greylist-max-o hasStyleSpan(Landroid/text/Spanned;)Z
    .registers 9
    .param p0, "spanned"    # Landroid/text/Spanned;

    .line 2258
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2259
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/text/style/CharacterStyle;

    aput-object v3, v2, v1

    const-class v3, Landroid/text/style/ParagraphStyle;

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-class v4, Landroid/text/style/UpdateAppearance;

    aput-object v4, v2, v3

    .line 2261
    .local v2, "styleClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    move v4, v1

    :goto_1c
    if-ge v4, v3, :cond_33

    aget-object v5, v2, v4

    .line 2262
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, -0x1

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ge v6, v7, :cond_30

    .line 2263
    return v0

    .line 2261
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 2266
    :cond_33
    return v1
.end method

.method public static whitelist htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1722
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 1723
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1724
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_3e

    .line 1745
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 1729
    :sswitch_17
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    goto :goto_35

    .line 1726
    :sswitch_1d
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    goto :goto_35

    .line 1739
    :sswitch_23
    const-string v3, "&#39;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    goto :goto_35

    .line 1732
    :sswitch_29
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    goto :goto_35

    .line 1742
    :sswitch_2f
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    nop

    .line 1722
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1748
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_3e
    .sparse-switch
        0x22 -> :sswitch_2f
        0x26 -> :sswitch_29
        0x27 -> :sswitch_23
        0x3c -> :sswitch_1d
        0x3e -> :sswitch_17
    .end sparse-switch
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 169
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .line 173
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_10

    .line 176
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    return v1

    .line 178
    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;CII)I
    .registers 12
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 182
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v1, p0, Landroid/text/GetChars;

    const/4 v2, -0x1

    if-nez v1, :cond_24

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_24

    const-class v1, Ljava/lang/StringBuilder;

    if-eq v0, v1, :cond_24

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_16

    goto :goto_24

    .line 211
    :cond_16
    move v1, p2

    .local v1, "i":I
    :goto_17
    if-ge v1, p3, :cond_23

    .line 212
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_20

    .line 213
    return v1

    .line 211
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 215
    .end local v1    # "i":I
    :cond_23
    return v2

    .line 186
    :cond_24
    :goto_24
    const/16 v1, 0x1f4

    .line 187
    .local v1, "INDEX_INCREMENT":I
    const/16 v3, 0x1f4

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v3

    .line 189
    .local v3, "temp":[C
    :goto_2c
    if-ge p2, p3, :cond_4b

    .line 190
    add-int/lit16 v4, p2, 0x1f4

    .line 191
    .local v4, "segend":I
    if-le v4, p3, :cond_33

    .line 192
    move v4, p3

    .line 194
    :cond_33
    const/4 v5, 0x0

    invoke-static {p0, p2, v4, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 196
    sub-int v5, v4, p2

    .line 197
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3a
    if-ge v6, v5, :cond_49

    .line 198
    aget-char v7, v3, v6

    if-ne v7, p1, :cond_46

    .line 199
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    .line 200
    add-int v2, v6, p2

    return v2

    .line 197
    :cond_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 204
    .end local v6    # "i":I
    :cond_49
    move p2, v4

    .line 205
    .end local v4    # "segend":I
    .end local v5    # "count":I
    goto :goto_2c

    .line 207
    :cond_4b
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    .line 208
    return v2
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    .line 277
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 281
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static whitelist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 286
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 287
    .local v0, "nlen":I
    if-nez v0, :cond_7

    .line 288
    return p2

    .line 290
    :cond_7
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 293
    .local v2, "c":C
    :goto_c
    invoke-static {p0, v2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 294
    sub-int v3, p3, v0

    const/4 v4, -0x1

    if-le p2, v3, :cond_17

    .line 295
    nop

    .line 308
    return v4

    .line 298
    :cond_17
    if-gez p2, :cond_1a

    .line 299
    return v4

    .line 302
    :cond_1a
    invoke-static {p0, p2, p1, v1, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 303
    return p2

    .line 306
    :cond_21
    add-int/lit8 p2, p2, 0x1

    goto :goto_c
.end method

.method public static whitelist isDigitsOnly(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1846
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1847
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 1848
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1849
    .local v2, "cp":I
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1850
    const/4 v3, 0x0

    return v3

    .line 1847
    :cond_13
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_5

    .line 1853
    .end local v1    # "i":I
    .end local v2    # "cp":I
    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 596
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static whitelist isGraphic(C)Z
    .registers 3
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1832
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1833
    .local v0, "gc":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_20

    const/16 v1, 0x10

    if-eq v0, v1, :cond_20

    const/16 v1, 0x13

    if-eq v0, v1, :cond_20

    if-eqz v0, :cond_20

    const/16 v1, 0xd

    if-eq v0, v1, :cond_20

    const/16 v1, 0xe

    if-eq v0, v1, :cond_20

    const/16 v1, 0xc

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method

.method public static whitelist isGraphic(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1806
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1807
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 1808
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1809
    .local v2, "cp":I
    invoke-static {v2}, Ljava/lang/Character;->getType(I)I

    move-result v3

    .line 1810
    .local v3, "gc":I
    const/16 v4, 0xf

    if-eq v3, v4, :cond_2b

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2b

    const/16 v4, 0x13

    if-eq v3, v4, :cond_2b

    if-eqz v3, :cond_2b

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2b

    const/16 v4, 0xe

    if-eq v3, v4, :cond_2b

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2b

    .line 1817
    const/4 v4, 0x1

    return v4

    .line 1807
    .end local v3    # "gc":I
    :cond_2b
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_5

    .line 1820
    .end local v1    # "i":I
    .end local v2    # "cp":I
    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isNewline(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 2355
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2356
    .local v0, "type":I
    const/16 v1, 0xe

    if-eq v0, v1, :cond_13

    const/16 v1, 0xd

    if-eq v0, v1, :cond_13

    const/16 v1, 0xa

    if-ne p0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public static greylist-max-o isPrintableAscii(C)Z
    .registers 4
    .param p0, "c"    # C

    .line 1860
    const/16 v0, 0x20

    .line 1861
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1862
    .local v1, "asciiLast":I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_c

    const/16 v2, 0x7e

    if-le p0, v2, :cond_17

    :cond_c
    const/16 v2, 0xd

    if-eq p0, v2, :cond_17

    const/16 v2, 0xa

    if-ne p0, v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    :goto_18
    return v2
.end method

.method public static greylist isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1870
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1871
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1872
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1873
    const/4 v2, 0x0

    return v2

    .line 1871
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1876
    .end local v1    # "i":I
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isPunctuation(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 2372
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2373
    .local v0, "type":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_23

    const/16 v1, 0x14

    if-eq v0, v1, :cond_23

    const/16 v1, 0x16

    if-eq v0, v1, :cond_23

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_23

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_23

    const/16 v1, 0x18

    if-eq v0, v1, :cond_23

    const/16 v1, 0x15

    if-ne v0, v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    :goto_24
    return v1
.end method

.method public static blacklist isWhitespace(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 2362
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static blacklist isWhitespaceExceptNewline(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .line 2367
    invoke-static {p0}, Landroid/text/TextUtils;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Landroid/text/TextUtils;->isNewline(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .line 439
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 440
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 441
    const-string v1, ""

    return-object v1

    .line 443
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 446
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 449
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    .line 416
    array-length v0, p1

    .line 417
    .local v0, "length":I
    if-nez v0, :cond_6

    .line 418
    const-string v1, ""

    return-object v1

    .line 420
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_1f

    .line 423
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 424
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 426
    .end local v2    # "i":I
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;C)I
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 219
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;CI)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    .line 223
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 225
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_10

    .line 226
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    return v1

    .line 228
    :cond_10
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static whitelist lastIndexOf(Ljava/lang/CharSequence;CII)I
    .registers 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    .line 233
    const/4 v0, -0x1

    if-gez p3, :cond_4

    .line 234
    return v0

    .line 235
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p3, v1, :cond_10

    .line 236
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 238
    :cond_10
    add-int/lit8 v1, p3, 0x1

    .line 240
    .local v1, "end":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 242
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v3, p0, Landroid/text/GetChars;

    if-nez v3, :cond_36

    const-class v3, Ljava/lang/StringBuffer;

    if-eq v2, v3, :cond_36

    const-class v3, Ljava/lang/StringBuilder;

    if-eq v2, v3, :cond_36

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_27

    goto :goto_36

    .line 269
    :cond_27
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_29
    if-lt v3, p2, :cond_35

    .line 270
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_32

    .line 271
    return v3

    .line 269
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 273
    .end local v3    # "i":I
    :cond_35
    return v0

    .line 244
    :cond_36
    :goto_36
    const/16 v3, 0x1f4

    .line 245
    .local v3, "INDEX_INCREMENT":I
    const/16 v4, 0x1f4

    invoke-static {v4}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v4

    .line 247
    .local v4, "temp":[C
    :goto_3e
    if-ge p2, v1, :cond_5e

    .line 248
    add-int/lit16 v5, v1, -0x1f4

    .line 249
    .local v5, "segstart":I
    if-ge v5, p2, :cond_45

    .line 250
    move v5, p2

    .line 252
    :cond_45
    const/4 v6, 0x0

    invoke-static {p0, v5, v1, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 254
    sub-int v6, v1, v5

    .line 255
    .local v6, "count":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_4d
    if-ltz v7, :cond_5c

    .line 256
    aget-char v8, v4, v7

    if-ne v8, p1, :cond_59

    .line 257
    invoke-static {v4}, Landroid/text/TextUtils;->recycle([C)V

    .line 258
    add-int v0, v7, v5

    return v0

    .line 255
    :cond_59
    add-int/lit8 v7, v7, -0x1

    goto :goto_4d

    .line 262
    .end local v7    # "i":I
    :cond_5c
    move v1, v5

    .line 263
    .end local v5    # "segstart":I
    .end local v6    # "count":I
    goto :goto_3e

    .line 265
    :cond_5e
    invoke-static {v4}, Landroid/text/TextUtils;->recycle([C)V

    .line 266
    return v0
.end method

.method public static greylist-max-o length(Ljava/lang/String;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 616
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static whitelist listEllipsize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/text/TextPaint;FI)Ljava/lang/CharSequence;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "avail"    # F
    .param p5, "moreId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1510
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p1

    const-string v1, ""

    if-nez v0, :cond_7

    .line 1511
    return-object v1

    .line 1513
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1514
    .local v2, "totalLen":I
    if-nez v2, :cond_e

    .line 1515
    return-object v1

    .line 1520
    :cond_e
    const/4 v3, 0x0

    if-nez p0, :cond_17

    .line 1521
    const/4 v4, 0x0

    .line 1522
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    .local v5, "bidiFormatter":Landroid/text/BidiFormatter;
    goto :goto_2b

    .line 1524
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1525
    .restart local v4    # "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v5

    .line 1528
    .restart local v5    # "bidiFormatter":Landroid/text/BidiFormatter;
    :goto_2b
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1529
    .local v6, "output":Landroid/text/SpannableStringBuilder;
    new-array v7, v2, [I

    .line 1530
    .local v7, "endIndexes":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_33
    if-ge v8, v2, :cond_57

    .line 1531
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v5, v9}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1532
    add-int/lit8 v9, v2, -0x1

    if-eq v8, v9, :cond_4c

    .line 1533
    move-object/from16 v9, p2

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4e

    .line 1532
    :cond_4c
    move-object/from16 v9, p2

    .line 1535
    :goto_4e
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    aput v10, v7, v8

    .line 1530
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    :cond_57
    move-object/from16 v9, p2

    .line 1538
    .end local v8    # "i":I
    add-int/lit8 v8, v2, -0x1

    .restart local v8    # "i":I
    :goto_5b
    if-ltz v8, :cond_9f

    .line 1540
    aget v10, v7, v8

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1542
    sub-int v10, v2, v8

    add-int/lit8 v10, v10, -0x1

    .line 1543
    .local v10, "remainingElements":I
    if-lez v10, :cond_8b

    .line 1544
    if-nez v4, :cond_74

    .line 1545
    const-string/jumbo v11, "\u2026"

    move/from16 v12, p5

    goto :goto_82

    .line 1546
    :cond_74
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    move/from16 v12, p5

    invoke-virtual {v4, v12, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_82
    nop

    .line 1547
    .local v11, "morePiece":Ljava/lang/CharSequence;
    invoke-virtual {v5, v11}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1548
    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8d

    .line 1543
    .end local v11    # "morePiece":Ljava/lang/CharSequence;
    :cond_8b
    move/from16 v12, p5

    .line 1551
    :goto_8d
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    move-object/from16 v13, p3

    invoke-virtual {v13, v6, v3, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v11

    .line 1552
    .local v11, "width":F
    cmpg-float v14, v11, p4

    if-gtz v14, :cond_9c

    .line 1553
    return-object v6

    .line 1538
    .end local v10    # "remainingElements":I
    .end local v11    # "width":F
    :cond_9c
    add-int/lit8 v8, v8, -0x1

    goto :goto_5b

    :cond_9f
    move-object/from16 v13, p3

    move/from16 v12, p5

    .line 1556
    .end local v8    # "i":I
    return-object v1
.end method

.method public static whitelist makeSafeForPresentation(Ljava/lang/String;IFI)Ljava/lang/CharSequence;
    .registers 23
    .param p0, "unclean"    # Ljava/lang/String;
    .param p1, "maxCharactersToConsider"    # I
    .param p2, "ellipsizeDip"    # F
    .param p3, "flags"    # I

    .line 2422
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_e

    move v3, v4

    goto :goto_f

    :cond_e
    move v3, v5

    .line 2423
    .local v3, "onlyKeepFirstLine":Z
    :goto_f
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_15

    move v6, v4

    goto :goto_16

    :cond_15
    move v6, v5

    .line 2424
    .local v6, "forceSingleLine":Z
    :goto_16
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_1c

    move v7, v4

    goto :goto_1d

    :cond_1c
    move v7, v5

    .line 2426
    .local v7, "trim":Z
    :goto_1d
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 2428
    const-string v8, "ellipsizeDip"

    invoke-static {v1, v8}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    .line 2429
    const/4 v8, 0x7

    invoke-static {v2, v8}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2431
    if-eqz v3, :cond_32

    if-nez v6, :cond_31

    goto :goto_32

    :cond_31
    move v4, v5

    :cond_32
    :goto_32
    const-string v8, "Cannot set SAFE_STRING_FLAG_SINGLE_LINE and SAFE_STRING_FLAG_FIRST_LINE at thesame time"

    invoke-static {v4, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2436
    if-lez v0, :cond_48

    .line 2437
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v8, p0

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "shortString":Ljava/lang/String;
    goto :goto_4c

    .line 2439
    .end local v4    # "shortString":Ljava/lang/String;
    :cond_48
    move-object/from16 v8, p0

    move-object/from16 v4, p0

    .line 2452
    .restart local v4    # "shortString":Ljava/lang/String;
    :goto_4c
    new-instance v9, Landroid/text/TextUtils$StringWithRemovedChars;

    .line 2453
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/TextUtils$StringWithRemovedChars;-><init>(Ljava/lang/String;)V

    .line 2455
    .local v9, "gettingCleaned":Landroid/text/TextUtils$StringWithRemovedChars;
    const/4 v10, -0x1

    .line 2456
    .local v10, "firstNonWhiteSpace":I
    const/4 v11, -0x1

    .line 2459
    .local v11, "firstTrailingWhiteSpace":I
    invoke-virtual {v9}, Landroid/text/TextUtils$StringWithRemovedChars;->length()I

    move-result v12

    .line 2460
    .local v12, "uncleanLength":I
    const/4 v13, 0x0

    .local v13, "offset":I
    :goto_60
    if-ge v13, v12, :cond_a2

    .line 2461
    invoke-virtual {v9, v13}, Landroid/text/TextUtils$StringWithRemovedChars;->codePointAt(I)I

    move-result v15

    .line 2462
    .local v15, "codePoint":I
    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v5

    .line 2463
    .local v5, "type":I
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v17

    .line 2464
    .local v17, "codePointLen":I
    invoke-static {v15}, Landroid/text/TextUtils;->isNewline(I)Z

    move-result v18

    .line 2466
    .local v18, "isNewline":Z
    if-eqz v3, :cond_7a

    if-eqz v18, :cond_7a

    .line 2467
    invoke-virtual {v9, v13}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    .line 2468
    goto :goto_a2

    .line 2469
    :cond_7a
    if-eqz v6, :cond_84

    if-eqz v18, :cond_84

    .line 2470
    add-int v14, v13, v17

    invoke-virtual {v9, v13, v14}, Landroid/text/TextUtils$StringWithRemovedChars;->removeRange(II)V

    goto :goto_9e

    .line 2471
    :cond_84
    const/16 v14, 0xf

    if-ne v5, v14, :cond_90

    if-nez v18, :cond_90

    .line 2472
    add-int v14, v13, v17

    invoke-virtual {v9, v13, v14}, Landroid/text/TextUtils$StringWithRemovedChars;->removeRange(II)V

    goto :goto_9e

    .line 2473
    :cond_90
    if-eqz v7, :cond_9e

    invoke-static {v15}, Landroid/text/TextUtils;->isWhitespace(I)Z

    move-result v14

    if-nez v14, :cond_9e

    .line 2475
    const/4 v14, -0x1

    if-ne v10, v14, :cond_9c

    .line 2476
    move v10, v13

    .line 2478
    :cond_9c
    add-int v11, v13, v17

    .line 2481
    :cond_9e
    :goto_9e
    add-int v13, v13, v17

    .line 2482
    .end local v5    # "type":I
    .end local v15    # "codePoint":I
    .end local v17    # "codePointLen":I
    .end local v18    # "isNewline":Z
    const/4 v5, 0x0

    goto :goto_60

    .line 2484
    .end local v13    # "offset":I
    :cond_a2
    :goto_a2
    if-eqz v7, :cond_b6

    .line 2486
    const/4 v14, -0x1

    if-ne v10, v14, :cond_ac

    .line 2488
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    goto :goto_b6

    .line 2490
    :cond_ac
    if-lez v10, :cond_b1

    .line 2491
    invoke-virtual {v9, v10}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharBefore(I)V

    .line 2493
    :cond_b1
    if-ge v11, v12, :cond_b6

    .line 2494
    invoke-virtual {v9, v11}, Landroid/text/TextUtils$StringWithRemovedChars;->removeAllCharAfter(I)V

    .line 2499
    :cond_b6
    :goto_b6
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-nez v5, :cond_c0

    .line 2500
    invoke-virtual {v9}, Landroid/text/TextUtils$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2502
    :cond_c0
    const/high16 v5, 0x42280000    # 42.0f

    .line 2503
    .local v5, "assumedFontSizePx":F
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_113

    .line 2509
    const v13, 0x3f11eb85    # 0.57f

    .line 2510
    .local v13, "assumedCharWidthInEm":F
    const v14, 0x41bf851f    # 23.94f

    .line 2513
    .local v14, "assumedCharWidthInPx":F
    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v15, v1

    const v16, 0x41bf851f    # 23.94f

    div-float v15, v15, v16

    float-to-int v15, v15

    .line 2515
    .local v15, "charCount":I
    invoke-virtual {v9}, Landroid/text/TextUtils$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2516
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_110

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v15, :cond_ee

    move-object/from16 v17, v0

    goto :goto_112

    .line 2519
    :cond_ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v15}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "text":Ljava/lang/String;
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 2520
    invoke-static {v2}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2519
    return-object v0

    .line 2516
    .end local v17    # "text":Ljava/lang/String;
    .restart local v0    # "text":Ljava/lang/String;
    :cond_110
    move-object/from16 v17, v0

    .line 2517
    .end local v0    # "text":Ljava/lang/String;
    .restart local v17    # "text":Ljava/lang/String;
    :goto_112
    return-object v17

    .line 2524
    .end local v13    # "assumedCharWidthInEm":F
    .end local v14    # "assumedCharWidthInPx":F
    .end local v15    # "charCount":I
    .end local v17    # "text":Ljava/lang/String;
    :cond_113
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 2525
    .local v0, "paint":Landroid/text/TextPaint;
    const/high16 v2, 0x42280000    # 42.0f

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2527
    invoke-virtual {v9}, Landroid/text/TextUtils$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v0, v1, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 601
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method static greylist-max-o obtain(I)[C
    .registers 4
    .param p0, "len"    # I

    .line 1694
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1695
    :try_start_3
    sget-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1696
    .local v1, "buf":[C
    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1697
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 1699
    if-eqz v1, :cond_e

    array-length v0, v1

    if-ge v0, p0, :cond_12

    .line 1700
    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    .line 1702
    :cond_12
    return-object v1

    .line 1697
    .end local v1    # "buf":[C
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static greylist packRangeInLong(II)J
    .registers 6
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 2096
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static greylist-max-o readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 6
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .line 1213
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1214
    return-void
.end method

.method static greylist-max-o recycle([C)V
    .registers 3
    .param p0, "temp"    # [C

    .line 1706
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    .line 1707
    return-void

    .line 1709
    :cond_6
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1710
    :try_start_9
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1711
    monitor-exit v0

    .line 1712
    return-void

    .line 1711
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static whitelist regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 11
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .line 314
    mul-int/lit8 v0, p4, 0x2

    .line 315
    .local v0, "tempLen":I
    if-lt v0, p4, :cond_28

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 321
    .local v1, "temp":[C
    add-int v2, p1, p4

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 322
    add-int v2, p3, p4

    invoke-static {p2, p3, v2, v1, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 324
    const/4 v2, 0x1

    .line 325
    .local v2, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, p4, :cond_24

    .line 326
    aget-char v4, v1, v3

    add-int v5, v3, p4

    aget-char v5, v1, v5

    if-eq v4, v5, :cond_21

    .line 327
    const/4 v2, 0x0

    .line 328
    goto :goto_24

    .line 325
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 332
    .end local v3    # "i":I
    :cond_24
    :goto_24
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 333
    return v2

    .line 317
    .end local v1    # "temp":[C
    .end local v2    # "match":Z
    :cond_28
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static greylist-max-o removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 11
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2057
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 2058
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 2060
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2d

    .line 2061
    aget-object v3, p0, v2

    .line 2062
    .local v3, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 2063
    .local v5, "start":I
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 2065
    .local v6, "end":I
    if-ne v5, v6, :cond_24

    .line 2066
    if-nez v0, :cond_2a

    .line 2067
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 2068
    invoke-static {p0, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2069
    move v1, v2

    goto :goto_2a

    .line 2072
    :cond_24
    if-eqz v0, :cond_2a

    .line 2073
    aput-object v3, v0, v1

    .line 2074
    add-int/lit8 v1, v1, 0x1

    .line 2060
    .end local v3    # "span":Ljava/lang/Object;, "TT;"
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2079
    .end local v2    # "i":I
    :cond_2d
    if-eqz v0, :cond_39

    .line 2080
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2081
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2082
    return-object v2

    .line 2084
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_39
    return-object p0
.end method

.method public static whitelist replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    .line 1056
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1058
    .local v0, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 1059
    aget-object v2, p1, v1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    .line 1061
    .local v2, "where":I
    if-ltz v2, :cond_1f

    .line 1062
    aget-object v3, p1, v1

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1058
    .end local v2    # "where":I
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1066
    .end local v1    # "i":I
    :cond_22
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_23
    array-length v2, p1

    if-ge v1, v2, :cond_3c

    .line 1067
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1068
    .local v2, "start":I
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1070
    .local v3, "end":I
    if-ltz v2, :cond_39

    .line 1071
    aget-object v4, p2, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1066
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1075
    .end local v1    # "i":I
    :cond_3c
    return-object v0
.end method

.method public static greylist-max-o safeIntern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 624
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static whitelist split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 472
    sget-object v0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 474
    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .registers 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 496
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 497
    sget-object v0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 499
    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 580
    if-nez p0, :cond_4

    .line 581
    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_4
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_9

    .line 583
    return-object p0

    .line 584
    :cond_9
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_13

    .line 585
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 587
    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 344
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 345
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 346
    :cond_c
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_18

    .line 347
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 348
    :cond_18
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_24

    .line 349
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :cond_24
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 352
    .local v0, "temp":[C
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 353
    new-instance v2, Ljava/lang/String;

    sub-int v3, p2, p1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 354
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 356
    return-object v2
.end method

.method public static greylist-max-o toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 19
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "copySpans"    # Z

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/icu/text/Edits;

    invoke-direct {v2}, Landroid/icu/text/Edits;-><init>()V

    .line 1264
    .local v2, "edits":Landroid/icu/text/Edits;
    if-nez p2, :cond_24

    .line 1265
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    .line 1267
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v4

    if-eqz v4, :cond_22

    move-object v4, v3

    goto :goto_23

    :cond_22
    move-object v4, v1

    :goto_23
    return-object v4

    .line 1270
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :cond_24
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    .line 1272
    .local v3, "result":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1274
    return-object v1

    .line 1277
    :cond_3a
    invoke-virtual {v2}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v4

    .line 1278
    .local v4, "iterator":Landroid/icu/text/Edits$Iterator;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1279
    .local v5, "sourceLength":I
    move-object v6, v1

    check-cast v6, Landroid/text/Spanned;

    .line 1280
    .local v6, "spanned":Landroid/text/Spanned;
    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v6, v8, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 1281
    .local v7, "spans":[Ljava/lang/Object;
    array-length v9, v7

    :goto_4d
    if-ge v8, v9, :cond_7b

    aget-object v10, v7, v8

    .line 1282
    .local v10, "span":Ljava/lang/Object;
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1283
    .local v11, "sourceStart":I
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 1284
    .local v12, "sourceEnd":I
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    .line 1287
    .local v13, "flags":I
    if-ne v11, v5, :cond_64

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    goto :goto_68

    .line 1288
    :cond_64
    invoke-static {v4, v11}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v14

    :goto_68
    nop

    .line 1289
    .local v14, "destStart":I
    if-ne v12, v5, :cond_70

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    goto :goto_74

    .line 1290
    :cond_70
    invoke-static {v4, v12}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v15

    :goto_74
    nop

    .line 1291
    .local v15, "destEnd":I
    invoke-virtual {v3, v10, v14, v15, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1281
    .end local v10    # "span":Ljava/lang/Object;
    .end local v11    # "sourceStart":I
    .end local v12    # "sourceEnd":I
    .end local v13    # "flags":I
    .end local v14    # "destStart":I
    .end local v15    # "destEnd":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 1293
    :cond_7b
    return-object v3
.end method

.method private static greylist-max-o toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I
    .registers 4
    .param p0, "iterator"    # Landroid/icu/text/Edits$Iterator;
    .param p1, "sourceIndex"    # I

    .line 1299
    invoke-virtual {p0, p1}, Landroid/icu/text/Edits$Iterator;->findSourceIndex(I)Z

    .line 1300
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 1301
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    return v0

    .line 1312
    :cond_e
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1313
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1316
    :cond_1e
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 2278
    if-eqz p0, :cond_c

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_c

    .line 2280
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 2282
    :cond_c
    return-object p0
.end method

.method public static blacklist trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2346
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0, p1}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2347
    .local v0, "trimmed":Ljava/lang/CharSequence;, "TT;"
    if-eqz p0, :cond_27

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 2348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2350
    :cond_27
    return-object v0
.end method

.method public static greylist-max-o trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2310
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    const v0, 0x186a0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2325
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    const/4 v0, 0x0

    if-lez p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2326
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, p1, :cond_16

    goto :goto_33

    .line 2327
    :cond_16
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2328
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2329
    add-int/lit8 p1, p1, -0x1

    .line 2331
    :cond_2e
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2326
    :cond_33
    :goto_33
    return-object p0
.end method

.method public static blacklist truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxbytes"    # I

    .line 379
    if-ltz p1, :cond_46

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "bytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_8
    if-ge v1, v2, :cond_45

    .line 385
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 386
    .local v3, "c":C
    const/16 v4, 0x80

    const/4 v5, 0x0

    if-ge v3, v4, :cond_16

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 388
    :cond_16
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1d

    .line 389
    add-int/lit8 v0, v0, 0x2

    goto :goto_3b

    .line 390
    :cond_1d
    const v4, 0xd800

    if-lt v3, v4, :cond_39

    const v4, 0xdfff

    if-gt v3, v4, :cond_39

    .line 392
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/high16 v6, 0x10000

    if-ge v4, v6, :cond_30

    goto :goto_39

    .line 395
    :cond_30
    add-int/lit8 v0, v0, 0x4

    .line 396
    if-le v0, p1, :cond_36

    move v4, v5

    goto :goto_37

    :cond_36
    const/4 v4, 0x1

    :goto_37
    add-int/2addr v1, v4

    goto :goto_3b

    .line 393
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x3

    .line 398
    :goto_3b
    if-le v0, p1, :cond_42

    .line 399
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 384
    .end local v3    # "c":C
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 402
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_45
    return-object p0

    .line 380
    .end local v0    # "bytes":I
    :cond_46
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static greylist unpackRangeEndFromLong(J)I
    .registers 4
    .param p0, "range"    # J

    .line 2118
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static greylist unpackRangeStartFromLong(J)I
    .registers 4
    .param p0, "range"    # J

    .line 2107
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist withoutPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 2385
    if-eqz p0, :cond_16

    if-nez p1, :cond_5

    goto :goto_16

    .line 2386
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, p1

    :goto_15
    return-object v0

    .line 2385
    :cond_16
    :goto_16
    return-object p1
.end method

.method public static greylist-max-o wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 2291
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2293
    return-void
.end method

.method public static whitelist writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .registers 14
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 806
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_79

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 810
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    .line 811
    .local v2, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 818
    .local v3, "os":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    array-length v5, v3

    if-ge v4, v5, :cond_75

    .line 819
    aget-object v5, v3, v4

    .line 820
    .local v5, "o":Ljava/lang/Object;
    aget-object v6, v3, v4

    .line 822
    .local v6, "prop":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_30

    .line 823
    move-object v7, v6

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 826
    :cond_30
    instance-of v7, v6, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_72

    .line 827
    move-object v7, v6

    check-cast v7, Landroid/text/ParcelableSpan;

    .line 828
    .local v7, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v7}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v8

    .line 829
    .local v8, "spanTypeId":I
    if-lt v8, v1, :cond_4c

    const/16 v9, 0x1f

    if-le v8, v9, :cond_42

    goto :goto_4c

    .line 834
    :cond_42
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-interface {v7, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 836
    invoke-static {p1, v2, v5}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_72

    .line 830
    :cond_4c
    :goto_4c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "External class \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Landroid/text/ParcelableSpan;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is attempting to use the frameworks-only ParcelableSpan interface"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TextUtils"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "prop":Ljava/lang/Object;
    .end local v7    # "ps":Landroid/text/ParcelableSpan;
    .end local v8    # "spanTypeId":I
    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 841
    .end local v4    # "i":I
    :cond_75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v3    # "os":[Ljava/lang/Object;
    goto :goto_8a

    .line 843
    :cond_79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    if-eqz p0, :cond_86

    .line 845
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_8a

    .line 847
    :cond_86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 850
    :goto_8a
    return-void
.end method

.method private static greylist-max-o writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .registers 4
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    .line 853
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    return-void
.end method
