.class public final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$StyleIDs;,
        Landroid/content/res/StringBlock$Height;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AssetManager"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private greylist-max-o mNative:J

.field private blacklist mOpen:Z

.field private final greylist-max-o mOwnsNative:Z

.field private greylist-max-o mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStrings:[Ljava/lang/CharSequence;

.field greylist-max-o mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final greylist-max-o mUseSparse:Z


# direct methods
.method public constructor greylist <init>(JZ)V
    .registers 5
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 610
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 611
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 615
    return-void
.end method

.method public constructor greylist-max-o <init>([BIIZ)V
    .registers 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 91
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 92
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 93
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 96
    return-void
.end method

.method public constructor greylist-max-o <init>([BZ)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 83
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 84
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 85
    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 88
    return-void
.end method

.method private static greylist-max-o addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 488
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 490
    .local v0, "len":I
    const/16 v1, 0xa

    if-eqz p2, :cond_1f

    if-eq p2, v0, :cond_1f

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1f

    .line 491
    :cond_12
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1f

    .line 492
    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_12

    .line 493
    nop

    .line 498
    :cond_1f
    if-eqz p3, :cond_38

    if-eq p3, v0, :cond_38

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_38

    .line 499
    :cond_2b
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v0, :cond_38

    .line 500
    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2b

    .line 501
    nop

    .line 506
    :cond_38
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 507
    return-void
.end method

.method private greylist-max-o applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .registers 22
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;

    .line 243
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v1

    if-nez v2, :cond_8

    .line 244
    return-object v0

    .line 246
    :cond_8
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 247
    .local v2, "buffer":Landroid/text/SpannableString;
    const/4 v3, 0x0

    .line 248
    .local v3, "i":I
    :goto_e
    array-length v4, v1

    if-ge v3, v4, :cond_35f

    .line 249
    aget v4, v1, v3

    .line 254
    .local v4, "type":I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    const/16 v6, 0x21

    const/4 v7, 0x1

    if-ne v4, v5, :cond_40

    .line 255
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    .line 256
    .local v5, "application":Landroid/app/Application;
    nop

    .line 257
    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 258
    .local v8, "fontWeightAdjustment":I
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v7, v8}, Landroid/text/style/StyleSpan;-><init>(II)V

    add-int/lit8 v10, v3, 0x1

    aget v10, v1, v10

    add-int/lit8 v11, v3, 0x2

    aget v11, v1, v11

    add-int/2addr v11, v7

    invoke-virtual {v2, v9, v10, v11, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 261
    .end local v5    # "application":Landroid/app/Application;
    .end local v8    # "fontWeightAdjustment":I
    move-object/from16 v5, p0

    goto/16 :goto_358

    :cond_40
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_5c

    .line 262
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 265
    :cond_5c
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_77

    .line 266
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 269
    :cond_77
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_95

    .line 270
    new-instance v5, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v8, "monospace"

    invoke-direct {v5, v8}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 273
    :cond_95
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_b2

    .line 274
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-direct {v5, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 277
    :cond_b2
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_d0

    .line 278
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v5, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 281
    :cond_d0
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_eb

    .line 282
    new-instance v5, Landroid/text/style/SubscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 285
    :cond_eb
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_106

    .line 286
    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 289
    :cond_106
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_121

    .line 290
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v8, v3, 0x1

    aget v8, v1, v8

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v8, v9, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 293
    :cond_121
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_13e

    .line 294
    new-instance v5, Landroid/text/style/BulletSpan;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v6, v3, 0x1

    aget v6, v1, v6

    add-int/lit8 v8, v3, 0x2

    aget v8, v1, v8

    add-int/2addr v8, v7

    invoke-static {v2, v5, v6, v8}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 296
    :cond_13e
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_158

    .line 297
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v6, v3, 0x1

    aget v6, v1, v6

    add-int/lit8 v8, v3, 0x2

    aget v8, v1, v8

    add-int/2addr v8, v7

    const/16 v7, 0x12

    invoke-virtual {v2, v5, v6, v8, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 300
    :cond_158
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmNoBreakId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    const/16 v8, 0x11

    if-ne v4, v5, :cond_174

    .line 301
    invoke-static {}, Landroid/text/style/LineBreakConfigSpan;->createNoBreakSpan()Landroid/text/style/LineBreakConfigSpan;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget v6, v1, v6

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v6, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 304
    :cond_174
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmNoHyphenId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_18e

    .line 305
    invoke-static {}, Landroid/text/style/LineBreakConfigSpan;->createNoHyphenationSpan()Landroid/text/style/LineBreakConfigSpan;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget v6, v1, v6

    add-int/lit8 v9, v3, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v5, v6, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v5, p0

    goto/16 :goto_358

    .line 309
    :cond_18e
    move-object/from16 v5, p0

    iget-wide v8, v5, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v4}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, "tag":Ljava/lang/String;
    if-nez v8, :cond_19a

    .line 311
    const/4 v6, 0x0

    return-object v6

    .line 313
    :cond_19a
    const-string v9, "font;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_240

    .line 316
    const-string v9, ";height="

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, "sub":Ljava/lang/String;
    if-eqz v9, :cond_1bf

    .line 318
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 319
    .local v10, "size":I
    new-instance v11, Landroid/content/res/StringBlock$Height;

    invoke-direct {v11, v10}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v12, v3, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v7

    invoke-static {v2, v11, v12, v13}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 323
    .end local v10    # "size":I
    :cond_1bf
    const-string v10, ";size="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 324
    if-eqz v9, :cond_1dc

    .line 325
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 326
    .restart local v10    # "size":I
    new-instance v11, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v11, v10, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v12, v3, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v7

    invoke-virtual {v2, v11, v12, v13, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 331
    .end local v10    # "size":I
    :cond_1dc
    const-string v10, ";fgcolor="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    if-eqz v9, :cond_1f4

    .line 333
    invoke-static {v9, v7}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 338
    :cond_1f4
    const-string v10, ";color="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 339
    if-eqz v9, :cond_20c

    .line 340
    invoke-static {v9, v7}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 345
    :cond_20c
    const-string v10, ";bgcolor="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 346
    if-eqz v9, :cond_225

    .line 347
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 352
    :cond_225
    const-string v10, ";face="

    invoke-static {v8, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 353
    if-eqz v9, :cond_23e

    .line 354
    new-instance v10, Landroid/text/style/TypefaceSpan;

    invoke-direct {v10, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 358
    .end local v9    # "sub":Ljava/lang/String;
    :cond_23e
    goto/16 :goto_358

    :cond_240
    const-string v9, "a;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_263

    .line 361
    const-string v9, ";href="

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 362
    .restart local v9    # "sub":Ljava/lang/String;
    if-eqz v9, :cond_261

    .line 363
    new-instance v10, Landroid/text/style/URLSpan;

    invoke-direct {v10, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v3, 0x1

    aget v11, v1, v11

    add-int/lit8 v12, v3, 0x2

    aget v12, v1, v12

    add-int/2addr v12, v7

    invoke-virtual {v2, v10, v11, v12, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 367
    .end local v9    # "sub":Ljava/lang/String;
    :cond_261
    goto/16 :goto_358

    :cond_263
    const-string v9, "annotation;"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b0

    .line 368
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 371
    .local v9, "len":I
    const/16 v10, 0x3b

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, "t":I
    :goto_275
    if-ge v11, v9, :cond_357

    .line 372
    const/16 v12, 0x3d

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 373
    .local v12, "eq":I
    if-gez v12, :cond_281

    .line 374
    goto/16 :goto_357

    .line 377
    :cond_281
    invoke-virtual {v8, v10, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 378
    .local v13, "next":I
    if-gez v13, :cond_288

    .line 379
    move v13, v9

    .line 382
    :cond_288
    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 383
    .local v14, "key":Ljava/lang/String;
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v8, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 385
    .local v15, "value":Ljava/lang/String;
    move/from16 v16, v7

    new-instance v7, Landroid/text/Annotation;

    invoke-direct {v7, v14, v15}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v17, v3, 0x1

    aget v10, v1, v17

    add-int/lit8 v17, v3, 0x2

    aget v17, v1, v17

    add-int/lit8 v0, v17, 0x1

    invoke-virtual {v2, v7, v10, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 371
    .end local v12    # "eq":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    move v11, v13

    move-object/from16 v0, p1

    move/from16 v7, v16

    const/16 v10, 0x3b

    goto :goto_275

    .line 389
    .end local v9    # "len":I
    .end local v11    # "t":I
    .end local v13    # "next":I
    :cond_2b0
    move/from16 v16, v7

    const-string/jumbo v0, "lineBreakConfig;"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_357

    .line 390
    const-string v0, ";style="

    invoke-static {v8, v0}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "lbStyleStr":Ljava/lang/String;
    const/4 v7, -0x1

    .line 392
    .local v7, "lbStyle":I
    const-string v9, "AssetManager"

    const-string/jumbo v10, "none"

    if-eqz v0, :cond_308

    .line 393
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d1

    .line 394
    const/4 v7, 0x0

    goto :goto_308

    .line 395
    :cond_2d1
    const-string/jumbo v11, "normal"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2dc

    .line 396
    const/4 v7, 0x2

    goto :goto_308

    .line 397
    :cond_2dc
    const-string/jumbo v11, "loose"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e7

    .line 398
    const/4 v7, 0x1

    goto :goto_308

    .line 399
    :cond_2e7
    const-string/jumbo v11, "strict"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f2

    .line 400
    const/4 v7, 0x3

    goto :goto_308

    .line 402
    :cond_2f2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown LineBreakConfig style: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_308
    :goto_308
    const-string v11, ";wordStyle="

    invoke-static {v8, v11}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 407
    .local v11, "lbWordStyleStr":Ljava/lang/String;
    const/4 v12, -0x1

    .line 408
    .local v12, "lbWordStyle":I
    if-eqz v11, :cond_33a

    .line 409
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_319

    .line 410
    const/4 v12, 0x0

    goto :goto_33a

    .line 411
    :cond_319
    const-string/jumbo v10, "phrase"

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_324

    .line 412
    const/4 v12, 0x1

    goto :goto_33a

    .line 414
    :cond_324
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown LineBreakConfig word style: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_33a
    :goto_33a
    const/4 v9, -0x1

    if-ne v7, v9, :cond_33f

    if-eq v12, v9, :cond_358

    .line 421
    :cond_33f
    new-instance v10, Landroid/text/style/LineBreakConfigSpan;

    new-instance v13, Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v13, v7, v12, v9}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    invoke-direct {v10, v13}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    add-int/lit8 v9, v3, 0x1

    aget v9, v1, v9

    add-int/lit8 v13, v3, 0x2

    aget v13, v1, v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2, v10, v9, v13, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_358

    .line 389
    .end local v0    # "lbStyleStr":Ljava/lang/String;
    .end local v7    # "lbStyle":I
    .end local v11    # "lbWordStyleStr":Ljava/lang/String;
    .end local v12    # "lbWordStyle":I
    :cond_357
    :goto_357
    nop

    .line 430
    .end local v8    # "tag":Ljava/lang/String;
    :cond_358
    :goto_358
    nop

    .end local v4    # "type":I
    add-int/lit8 v3, v3, 0x3

    .line 431
    move-object/from16 v0, p1

    goto/16 :goto_e

    .line 432
    :cond_35f
    move-object/from16 v5, p0

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static greylist-max-o getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .registers 13
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .line 450
    const/high16 v1, -0x1000000

    .line 452
    .local v1, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 453
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 454
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 455
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "name":Ljava/lang/String;
    const-string v3, "color"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 457
    .local v3, "colorRes":I
    if-eqz v3, :cond_38

    .line 458
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 459
    .local v9, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_34

    .line 460
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v5

    .line 462
    :cond_34
    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 465
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "colorRes":I
    .end local v9    # "colors":Landroid/content/res/ColorStateList;
    :cond_38
    goto :goto_42

    .line 467
    :cond_39
    :try_start_39
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_3d} :catch_3f

    move v1, v0

    .line 470
    goto :goto_42

    .line 468
    :catch_3f
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/high16 v1, -0x1000000

    .line 474
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_42
    :goto_42
    if-eqz p1, :cond_4a

    .line 475
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v0

    .line 477
    :cond_4a
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v0
.end method

.method private static native greylist-max-o nativeCreate([BII)J
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeGetSize(J)I
.end method

.method private static native greylist-max-o nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetStyle(JI)[I
.end method

.method private static greylist-max-o subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 510
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 511
    .local v0, "start":I
    if-gez v0, :cond_8

    .line 512
    const/4 v1, 0x0

    return-object v1

    .line 515
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 518
    .local v1, "end":I
    if-gez v1, :cond_1a

    .line 519
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 521
    :cond_1a
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 213
    monitor-enter p0

    .line 214
    :try_start_1
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    if-eqz v0, :cond_15

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOpen:Z

    .line 217
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_11

    .line 218
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 220
    :cond_11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 222
    :cond_15
    monitor-exit p0

    .line 223
    return-void

    .line 222
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 205
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 207
    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    .line 208
    nop

    .line 209
    return-void

    .line 207
    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/StringBlock;->close()V

    .line 208
    throw v0
.end method

.method public greylist get(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "idx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 106
    .local v0, "seq":Ljava/lang/CharSequence;
    if-nez v0, :cond_9

    const-string v1, ""

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    return-object v1
.end method

.method public blacklist getSequence(I)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "idx"    # I

    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 113
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    .line 114
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_d

    .line 115
    monitor-exit p0

    return-object v0

    .line 117
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_d
    goto :goto_39

    :cond_e
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v0, :cond_1f

    .line 118
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 119
    .restart local v0    # "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1e

    .line 120
    monitor-exit p0

    return-object v0

    .line 122
    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_1e
    goto :goto_39

    .line 123
    :cond_1f
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    .line 124
    .local v0, "num":I
    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v1, :cond_35

    const/16 v1, 0xfa

    if-le v0, v1, :cond_35

    .line 125
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    goto :goto_39

    .line 127
    :cond_35
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    .line 130
    .end local v0    # "num":I
    :goto_39
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 132
    monitor-exit p0

    return-object v1

    .line 134
    :cond_44
    move-object v2, v0

    .line 135
    .local v2, "res":Ljava/lang/CharSequence;
    iget-wide v3, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v3, v4, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v3

    .line 138
    .local v3, "style":[I
    if-eqz v3, :cond_192

    .line 139
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v4, :cond_58

    .line 140
    new-instance v4, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v4}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 145
    :cond_58
    const/4 v4, 0x0

    .local v4, "styleIndex":I
    :goto_59
    array-length v5, v3

    if-ge v4, v5, :cond_18b

    .line 146
    aget v5, v3, v4

    .line 148
    .local v5, "styleId":I
    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetboldId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetitalicId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetunderlineId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetttId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetbigId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsmallId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsubId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetsupId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetstrikeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetlistItemId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-eq v5, v6, :cond_187

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fgetmarqueeId(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_b8

    .line 155
    goto/16 :goto_187

    .line 158
    :cond_b8
    iget-wide v6, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v6, v7, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "styleTag":Ljava/lang/String;
    if-nez v6, :cond_c2

    .line 160
    monitor-exit p0

    return-object v1

    .line 163
    :cond_c2
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 164
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputboldId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_187

    .line 165
    :cond_d1
    const-string/jumbo v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 166
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputitalicId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_187

    .line 167
    :cond_e1
    const-string/jumbo v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 168
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputunderlineId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_187

    .line 169
    :cond_f1
    const-string/jumbo v7, "tt"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_101

    .line 170
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputttId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_187

    .line 171
    :cond_101
    const-string v7, "big"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_110

    .line 172
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputbigId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto/16 :goto_187

    .line 173
    :cond_110
    const-string/jumbo v7, "small"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 174
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsmallId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_187

    .line 175
    :cond_11f
    const-string/jumbo v7, "sup"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12e

    .line 176
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsupId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_187

    .line 177
    :cond_12e
    const-string/jumbo v7, "sub"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13d

    .line 178
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputsubId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_187

    .line 179
    :cond_13d
    const-string/jumbo v7, "strike"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 180
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputstrikeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_187

    .line 181
    :cond_14c
    const-string/jumbo v7, "li"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15b

    .line 182
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputlistItemId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_187

    .line 183
    :cond_15b
    const-string/jumbo v7, "marquee"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16a

    .line 184
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmarqueeId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_187

    .line 185
    :cond_16a
    const-string/jumbo v7, "nobreak"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_179

    .line 186
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmNoBreakId(Landroid/content/res/StringBlock$StyleIDs;I)V

    goto :goto_187

    .line 187
    :cond_179
    const-string/jumbo v7, "nohyphen"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_187

    .line 188
    iget-object v7, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v7, v5}, Landroid/content/res/StringBlock$StyleIDs;->-$$Nest$fputmNoHyphenId(Landroid/content/res/StringBlock$StyleIDs;I)V

    .line 145
    .end local v5    # "styleId":I
    .end local v6    # "styleTag":Ljava/lang/String;
    :cond_187
    :goto_187
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_59

    .line 192
    .end local v4    # "styleIndex":I
    :cond_18b
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v0, v3, v1}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    .line 194
    :cond_192
    if-eqz v2, :cond_1a2

    .line 195
    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_19d

    iget-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v2, v1, p1

    goto :goto_1a2

    .line 196
    :cond_19d
    iget-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    :cond_1a2
    :goto_1a2
    monitor-exit p0

    return-object v2

    .line 199
    .end local v0    # "str":Ljava/lang/String;
    .end local v2    # "res":Ljava/lang/CharSequence;
    .end local v3    # "style":[I
    :catchall_1a4
    move-exception v0

    monitor-exit p0
    :try_end_1a6
    .catchall {:try_start_1 .. :try_end_1a6} :catchall_1a4

    throw v0
.end method
