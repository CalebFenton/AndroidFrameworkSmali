.class public Landroid/graphics/text/TextRunShaper;
.super Ljava/lang/Object;
.source "TextRunShaper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist nativeShapeTextRun(Ljava/lang/String;IIIIZJ)J
.end method

.method private static native blacklist nativeShapeTextRun([CIIIIZJ)J
.end method

.method public static whitelist shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;
    .registers 20
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextCount"    # I
    .param p5, "xOffset"    # F
    .param p6, "yOffset"    # F
    .param p7, "isRtl"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 99
    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 102
    new-instance v10, Landroid/graphics/text/PositionedGlyphs;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 103
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun(Ljava/lang/String;IIIIZJ)J

    move-result-wide v6

    invoke-direct {v10, v6, v7, v8, v9}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    .line 102
    return-object v10

    .line 108
    :cond_25
    move v4, p4

    new-array v0, v4, [C

    .line 109
    .local v0, "buf":[C
    add-int v1, p3, v4

    const/4 v2, 0x0

    invoke-static {p0, p3, v1, v0, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 110
    new-instance v10, Landroid/graphics/text/PositionedGlyphs;

    sub-int v1, p1, p3

    .line 113
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 111
    const/4 v3, 0x0

    move v2, p2

    move/from16 v5, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun([CIIIIZJ)J

    move-result-wide v6

    invoke-direct {v10, v6, v7, v8, v9}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    .line 110
    return-object v10
.end method

.method public static whitelist shapeTextRun([CIIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;
    .registers 18
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextCount"    # I
    .param p5, "xOffset"    # F
    .param p6, "yOffset"    # F
    .param p7, "isRtl"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 69
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/graphics/text/PositionedGlyphs;

    .line 73
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    .line 72
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p7

    invoke-static/range {v1 .. v8}, Landroid/graphics/text/TextRunShaper;->nativeShapeTextRun([CIIIIZJ)J

    move-result-wide v7

    invoke-direct {v0, v7, v8, p5, p6}, Landroid/graphics/text/PositionedGlyphs;-><init>(JFF)V

    .line 71
    return-object v0
.end method
