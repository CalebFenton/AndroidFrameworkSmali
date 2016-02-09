.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field private mBuilder:Landroid/text/StaticLayout$Builder;

.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    #@5
    .line 49
    const/4 v0, 0x3

    #@6
    new-array v0, v0, [Landroid/text/MeasuredText;

    #@8
    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    #@a
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Landroid/text/TextPaint;

    #@5
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    #@8
    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    #@a
    .line 44
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    #@0
    .prologue
    .line 53
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 54
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    #@5
    array-length v0, v2

    #@6
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@8
    if-ltz v0, :cond_1

    #@a
    .line 55
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    #@c
    aget-object v2, v2, v0

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 56
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    #@12
    aget-object v1, v2, v0

    #@14
    .line 57
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v3

    #@1a
    .line 58
    return-object v1

    #@1b
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3

    #@1c
    .line 62
    new-instance v1, Landroid/text/MeasuredText;

    #@1e
    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    #@21
    .line 66
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    return-object v1

    #@22
    .line 53
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .param p0, "mt"    # Landroid/text/MeasuredText;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 70
    invoke-virtual {p0}, Landroid/text/MeasuredText;->finish()V

    #@4
    .line 71
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 72
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    #@a
    array-length v1, v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 73
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    #@f
    aget-object v1, v1, v0

    #@11
    if-nez v1, :cond_1

    #@13
    .line 74
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    #@15
    aput-object p0, v1, v0

    #@17
    .line 75
    const/4 v1, 0x0

    #@18
    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 80
    return-object v3

    #@1c
    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 71
    :catchall_0
    move-exception v1

    #@20
    monitor-exit v2

    #@21
    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 24
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 164
    if-eqz p3, :cond_0

    #@2
    .line 165
    move-object/from16 v0, p1

    #@4
    move-object/from16 v1, p3

    #@6
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@9
    .line 168
    :cond_0
    move-object/from16 v0, p0

    #@b
    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    #@d
    .line 169
    .local v4, "p":I
    add-int v2, v4, p2

    #@f
    move-object/from16 v0, p0

    #@11
    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    #@13
    .line 173
    const/4 v9, 0x0

    #@14
    .line 174
    .local v9, "widths":[F
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@18
    if-eqz v2, :cond_1

    #@1a
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v2

    #@1e
    const-class v3, Landroid/text/TextPaint;

    #@20
    if-eq v2, v3, :cond_2

    #@22
    .line 175
    :cond_1
    move-object/from16 v0, p0

    #@24
    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    #@26
    .line 177
    .end local v9    # "widths":[F
    :cond_2
    move-object/from16 v0, p0

    #@28
    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    #@2a
    if-eqz v2, :cond_6

    #@2c
    .line 178
    move-object/from16 v0, p0

    #@2e
    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    #@30
    const/4 v3, 0x1

    #@31
    if-eq v2, v3, :cond_4

    #@33
    const/4 v8, 0x1

    #@34
    .line 179
    .local v8, "isRtl":Z
    :goto_0
    const/16 v23, 0x0

    #@36
    .line 180
    .local v23, "width":F
    if-eqz v9, :cond_5

    #@38
    .line 181
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    #@3c
    move-object/from16 v2, p1

    #@3e
    move/from16 v5, p2

    #@40
    move v6, v4

    #@41
    move/from16 v7, p2

    #@43
    move v10, v4

    #@44
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    #@47
    move-result v23

    #@48
    .line 182
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 183
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@52
    add-int v3, v4, p2

    #@54
    invoke-virtual {v2, v4, v3, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    #@57
    .line 188
    :cond_3
    :goto_1
    return v23

    #@58
    .line 178
    .end local v8    # "isRtl":Z
    .end local v23    # "width":F
    :cond_4
    const/4 v8, 0x0

    #@59
    .restart local v8    # "isRtl":Z
    goto :goto_0

    #@5a
    .line 186
    .restart local v23    # "width":F
    :cond_5
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@5e
    add-int v3, v4, p2

    #@60
    move-object/from16 v0, p1

    #@62
    invoke-virtual {v2, v0, v4, v3, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    #@65
    move-result v23

    #@66
    goto :goto_1

    #@67
    .line 191
    .end local v8    # "isRtl":Z
    .end local v23    # "width":F
    :cond_6
    const/16 v22, 0x0

    #@69
    .line 192
    .local v22, "totalAdvance":F
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    #@6d
    aget-byte v21, v2, v4

    #@6f
    .line 193
    .local v21, "level":I
    move v12, v4

    #@70
    .local v12, "q":I
    add-int/lit8 v20, v4, 0x1

    #@72
    .local v20, "i":I
    add-int v19, v4, p2

    #@74
    .line 194
    .local v19, "e":I
    :goto_2
    move/from16 v0, v20

    #@76
    move/from16 v1, v19

    #@78
    if-eq v0, v1, :cond_7

    #@7a
    move-object/from16 v0, p0

    #@7c
    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    #@7e
    aget-byte v2, v2, v20

    #@80
    move/from16 v0, v21

    #@82
    if-eq v2, v0, :cond_c

    #@84
    .line 195
    :cond_7
    and-int/lit8 v2, v21, 0x1

    #@86
    if-eqz v2, :cond_9

    #@88
    const/4 v8, 0x1

    #@89
    .line 196
    .restart local v8    # "isRtl":Z
    :goto_3
    if-eqz v9, :cond_a

    #@8b
    .line 198
    move-object/from16 v0, p0

    #@8d
    iget-object v11, v0, Landroid/text/MeasuredText;->mChars:[C

    #@8f
    sub-int v13, v20, v12

    #@91
    sub-int v15, v20, v12

    #@93
    move-object/from16 v10, p1

    #@95
    move v14, v12

    #@96
    move/from16 v16, v8

    #@98
    move-object/from16 v17, v9

    #@9a
    move/from16 v18, v12

    #@9c
    invoke-virtual/range {v10 .. v18}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    #@9f
    move-result v2

    #@a0
    .line 197
    add-float v22, v22, v2

    #@a2
    .line 199
    move-object/from16 v0, p0

    #@a4
    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@a6
    if-eqz v2, :cond_8

    #@a8
    .line 200
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@ac
    move/from16 v0, v20

    #@ae
    invoke-virtual {v2, v12, v0, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    #@b1
    .line 205
    :cond_8
    :goto_4
    move/from16 v0, v20

    #@b3
    move/from16 v1, v19

    #@b5
    if-ne v0, v1, :cond_b

    #@b7
    .line 212
    return v22

    #@b8
    .line 195
    .end local v8    # "isRtl":Z
    :cond_9
    const/4 v8, 0x0

    #@b9
    .restart local v8    # "isRtl":Z
    goto :goto_3

    #@ba
    .line 203
    :cond_a
    move-object/from16 v0, p0

    #@bc
    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@be
    move-object/from16 v0, p1

    #@c0
    move/from16 v1, v20

    #@c2
    invoke-virtual {v2, v0, v12, v1, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    #@c5
    move-result v2

    #@c6
    add-float v22, v22, v2

    #@c8
    goto :goto_4

    #@c9
    .line 208
    :cond_b
    move/from16 v12, v20

    #@cb
    .line 209
    move-object/from16 v0, p0

    #@cd
    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    #@cf
    aget-byte v21, v2, v20

    #@d1
    .line 193
    .end local v8    # "isRtl":Z
    :cond_c
    add-int/lit8 v20, v20, 0x1

    #@d3
    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 218
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    #@3
    .line 219
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@6
    .line 221
    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    #@8
    .line 223
    const/4 v0, 0x0

    #@9
    .line 224
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    #@a
    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v7, "i":I
    :goto_0
    array-length v2, p2

    #@b
    if-ge v7, v2, :cond_1

    #@d
    .line 225
    aget-object v8, p2, v7

    #@f
    .line 226
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    #@11
    if-eqz v2, :cond_0

    #@13
    move-object v0, v8

    #@14
    .line 227
    check-cast v0, Landroid/text/style/ReplacementSpan;

    #@16
    .line 224
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@18
    goto :goto_0

    #@19
    .line 229
    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    #@1c
    goto :goto_1

    #@1d
    .line 234
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v0, :cond_3

    #@1f
    .line 235
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    #@22
    move-result v10

    #@23
    .line 251
    .local v10, "wid":F
    :goto_2
    if-eqz p4, :cond_2

    #@25
    .line 252
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    #@27
    if-gez v2, :cond_6

    #@29
    .line 253
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@2b
    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    #@2d
    add-int/2addr v2, v3

    #@2e
    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@30
    .line 254
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@32
    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    #@34
    add-int/2addr v2, v3

    #@35
    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@37
    .line 261
    :cond_2
    :goto_3
    return v10

    #@38
    .line 238
    .end local v10    # "wid":F
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    #@3a
    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    #@3c
    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    #@3e
    add-int/2addr v3, v4

    #@3f
    .line 239
    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    #@41
    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    #@43
    add-int/2addr v4, v5

    #@44
    add-int/2addr v4, p3

    #@45
    move-object v5, p4

    #@46
    .line 238
    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    #@49
    move-result v2

    #@4a
    int-to-float v10, v2

    #@4b
    .line 240
    .restart local v10    # "wid":F
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@4d
    if-nez v2, :cond_4

    #@4f
    .line 241
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    #@51
    .line 242
    .local v9, "w":[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    #@53
    aput v10, v9, v2

    #@55
    .line 243
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    #@57
    add-int/lit8 v7, v2, 0x1

    #@59
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    #@5b
    add-int v6, v2, p3

    #@5d
    .local v6, "e":I
    :goto_4
    if-ge v7, v6, :cond_5

    #@5f
    .line 244
    const/4 v2, 0x0

    #@60
    aput v2, v9, v7

    #@62
    .line 243
    add-int/lit8 v7, v7, 0x1

    #@64
    goto :goto_4

    #@65
    .line 246
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_4
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@67
    iget v3, p0, Landroid/text/MeasuredText;->mPos:I

    #@69
    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    #@6b
    add-int/2addr v4, p3

    #@6c
    invoke-virtual {v2, v3, v4, v10}, Landroid/text/StaticLayout$Builder;->addReplacementRun(IIF)V

    #@6f
    .line 248
    :cond_5
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    #@71
    add-int/2addr v2, p3

    #@72
    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    #@74
    goto :goto_2

    #@75
    .line 256
    :cond_6
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@77
    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    #@79
    add-int/2addr v2, v3

    #@7a
    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@7c
    .line 257
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@7e
    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    #@80
    add-int/2addr v2, v3

    #@81
    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@83
    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 5
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    const/4 v3, 0x0

    #@3
    .line 265
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    #@5
    .line 266
    .local v1, "w":[F
    if-eqz p2, :cond_3

    #@7
    .line 267
    const/4 v0, 0x0

    #@8
    .line 268
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@a
    .line 269
    aget v2, v1, v0

    #@c
    sub-float/2addr p3, v2

    #@d
    .line 270
    cmpg-float v2, p3, v3

    #@f
    if-gez v2, :cond_1

    #@11
    .line 273
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    #@13
    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    #@15
    add-int/lit8 v3, v0, -0x1

    #@17
    aget-char v2, v2, v3

    #@19
    if-ne v2, v4, :cond_2

    #@1b
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_1

    #@1e
    .line 271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 274
    :cond_2
    return v0

    #@22
    .line 276
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    #@24
    .line 277
    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    #@26
    .line 278
    aget v2, v1, v0

    #@28
    sub-float/2addr p3, v2

    #@29
    .line 279
    cmpg-float v2, p3, v3

    #@2b
    if-gez v2, :cond_5

    #@2d
    .line 282
    :cond_4
    :goto_3
    add-int/lit8 v2, p1, -0x1

    #@2f
    if-ge v0, v2, :cond_6

    #@31
    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    #@33
    add-int/lit8 v3, v0, 0x1

    #@35
    aget-char v2, v2, v3

    #@37
    if-ne v2, v4, :cond_6

    #@39
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_3

    #@3c
    .line 280
    :cond_5
    add-int/lit8 v0, v0, -0x1

    #@3e
    goto :goto_2

    #@3f
    .line 283
    :cond_6
    sub-int v2, p1, v0

    #@41
    add-int/lit8 v2, v2, -0x1

    #@43
    return v2
.end method

.method finish()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 84
    iput-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    #@3
    .line 85
    iput-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@5
    .line 86
    iget v0, p0, Landroid/text/MeasuredText;->mLen:I

    #@7
    const/16 v1, 0x3e8

    #@9
    if-le v0, v1, :cond_0

    #@b
    .line 87
    iput-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    #@d
    .line 88
    iput-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    #@f
    .line 89
    iput-object v2, p0, Landroid/text/MeasuredText;->mLevels:[B

    #@11
    .line 83
    :cond_0
    return-void
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 288
    const/4 v2, 0x0

    #@1
    .line 289
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    #@3
    .line 290
    .local v1, "w":[F
    move v0, p1

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@6
    .line 291
    aget v3, v1, v0

    #@8
    add-float/2addr v2, v3

    #@9
    .line 290
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 293
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "builder"    # Landroid/text/StaticLayout$Builder;

    #@0
    .prologue
    .line 102
    move-object/from16 v0, p5

    #@2
    iput-object v0, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    #@4
    .line 103
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    #@6
    .line 104
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    #@8
    .line 106
    sub-int v6, p3, p2

    #@a
    .line 107
    .local v6, "len":I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    #@c
    .line 108
    const/4 v10, 0x0

    #@d
    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    #@f
    .line 110
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    #@11
    if-eqz v10, :cond_0

    #@13
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    #@15
    array-length v10, v10

    #@16
    if-ge v10, v6, :cond_1

    #@18
    .line 111
    :cond_0
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    #@1b
    move-result-object v10

    #@1c
    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    #@1e
    .line 113
    :cond_1
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    #@20
    if-eqz v10, :cond_2

    #@22
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    #@24
    array-length v10, v10

    #@25
    if-ge v10, v6, :cond_3

    #@27
    .line 114
    :cond_2
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    #@2a
    move-result-object v10

    #@2b
    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    #@2d
    .line 116
    :cond_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    #@2f
    const/4 v11, 0x0

    #@30
    move/from16 v0, p3

    #@32
    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@35
    .line 118
    instance-of v10, p1, Landroid/text/Spanned;

    #@37
    if-eqz v10, :cond_7

    #@39
    move-object v7, p1

    #@3a
    .line 119
    check-cast v7, Landroid/text/Spanned;

    #@3c
    .line 121
    .local v7, "spanned":Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    #@3e
    .line 120
    move/from16 v0, p3

    #@40
    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@43
    move-result-object v8

    #@44
    check-cast v8, [Landroid/text/style/ReplacementSpan;

    #@46
    .line 123
    .local v8, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    #@47
    .local v3, "i":I
    :goto_0
    array-length v10, v8

    #@48
    if-ge v3, v10, :cond_7

    #@4a
    .line 124
    aget-object v10, v8, v3

    #@4c
    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@4f
    move-result v10

    #@50
    sub-int v9, v10, p2

    #@52
    .line 125
    .local v9, "startInPara":I
    aget-object v10, v8, v3

    #@54
    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@57
    move-result v10

    #@58
    sub-int v2, v10, p2

    #@5a
    .line 127
    .local v2, "endInPara":I
    if-gez v9, :cond_4

    #@5c
    const/4 v9, 0x0

    #@5d
    .line 128
    :cond_4
    if-le v2, v6, :cond_5

    #@5f
    move v2, v6

    #@60
    .line 129
    :cond_5
    move v5, v9

    #@61
    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_6

    #@63
    .line 130
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    #@65
    const v11, 0xfffc

    #@68
    aput-char v11, v10, v5

    #@6a
    .line 129
    add-int/lit8 v5, v5, 0x1

    #@6c
    goto :goto_1

    #@6d
    .line 123
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 135
    .end local v2    # "endInPara":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v7    # "spanned":Landroid/text/Spanned;
    .end local v8    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v9    # "startInPara":I
    :cond_7
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@72
    move-object/from16 v0, p4

    #@74
    if-eq v0, v10, :cond_8

    #@76
    .line 136
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@78
    move-object/from16 v0, p4

    #@7a
    if-ne v0, v10, :cond_9

    #@7c
    .line 138
    :cond_8
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    #@7e
    const/4 v11, 0x0

    #@7f
    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    #@82
    move-result v10

    #@83
    .line 135
    if-eqz v10, :cond_a

    #@85
    .line 139
    const/4 v10, 0x1

    #@86
    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    #@88
    .line 140
    const/4 v10, 0x1

    #@89
    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    #@8b
    .line 101
    :goto_2
    return-void

    #@8c
    .line 137
    :cond_9
    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    #@8e
    move-object/from16 v0, p4

    #@90
    if-eq v0, v10, :cond_8

    #@92
    .line 142
    :cond_a
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    #@94
    if-eqz v10, :cond_b

    #@96
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    #@98
    array-length v10, v10

    #@99
    if-ge v10, v6, :cond_c

    #@9b
    .line 143
    :cond_b
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    #@9e
    move-result-object v10

    #@9f
    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    #@a1
    .line 146
    :cond_c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@a3
    move-object/from16 v0, p4

    #@a5
    if-ne v0, v10, :cond_d

    #@a7
    .line 147
    const/4 v1, 0x1

    #@a8
    .line 158
    .local v1, "bidiRequest":I
    :goto_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    #@aa
    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    #@ac
    const/4 v12, 0x0

    #@ad
    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    #@b0
    move-result v10

    #@b1
    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    #@b3
    .line 159
    const/4 v10, 0x0

    #@b4
    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    #@b6
    goto :goto_2

    #@b7
    .line 148
    .end local v1    # "bidiRequest":I
    :cond_d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@b9
    move-object/from16 v0, p4

    #@bb
    if-ne v0, v10, :cond_e

    #@bd
    .line 149
    const/4 v1, -0x1

    #@be
    .restart local v1    # "bidiRequest":I
    goto :goto_3

    #@bf
    .line 150
    .end local v1    # "bidiRequest":I
    :cond_e
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@c1
    move-object/from16 v0, p4

    #@c3
    if-ne v0, v10, :cond_f

    #@c5
    .line 151
    const/4 v1, 0x2

    #@c6
    .restart local v1    # "bidiRequest":I
    goto :goto_3

    #@c7
    .line 152
    .end local v1    # "bidiRequest":I
    :cond_f
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@c9
    move-object/from16 v0, p4

    #@cb
    if-ne v0, v10, :cond_10

    #@cd
    .line 153
    const/4 v1, -0x2

    #@ce
    .restart local v1    # "bidiRequest":I
    goto :goto_3

    #@cf
    .line 155
    .end local v1    # "bidiRequest":I
    :cond_10
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    #@d1
    const/4 v11, 0x0

    #@d2
    move-object/from16 v0, p4

    #@d4
    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    #@d7
    move-result v4

    #@d8
    .line 156
    .local v4, "isRtl":Z
    if-eqz v4, :cond_11

    #@da
    const/4 v1, -0x1

    #@db
    .restart local v1    # "bidiRequest":I
    goto :goto_3

    #@dc
    .end local v1    # "bidiRequest":I
    :cond_11
    const/4 v1, 0x1

    #@dd
    .restart local v1    # "bidiRequest":I
    goto :goto_3
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 94
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    #@2
    sub-int v0, p1, v0

    #@4
    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    #@6
    .line 93
    return-void
.end method
