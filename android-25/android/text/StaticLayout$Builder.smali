.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlignment:Landroid/text/Layout$Alignment;

.field mBreakStrategy:I

.field mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mEnd:I

.field mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field mHyphenationFrequency:I

.field mIncludePad:Z

.field mLeftIndents:[I

.field mLocale:Ljava/util/Locale;

.field mMaxLines:I

.field mMeasuredText:Landroid/text/MeasuredText;

.field mNativePtr:J

.field mPaint:Landroid/text/TextPaint;

.field mRightIndents:[I

.field mSpacingAdd:F

.field mSpacingMult:F

.field mStart:I

.field mText:Ljava/lang/CharSequence;

.field mTextDir:Landroid/text/TextDirectionHeuristic;

.field mWidth:I


# direct methods
.method static synthetic -wrap0(Landroid/text/StaticLayout$Builder;)V
    .locals 0
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    #@0
    .prologue
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->setLocale(Ljava/util/Locale;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 415
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@6
    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@8
    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 408
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    #@8
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    #@a
    .line 61
    invoke-static {}, Landroid/text/StaticLayout;->-wrap1()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@10
    .line 60
    return-void
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 76
    sget-object v1, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@4
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/text/StaticLayout$Builder;

    #@a
    .line 77
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-nez v0, :cond_0

    #@c
    .line 78
    new-instance v0, Landroid/text/StaticLayout$Builder;

    #@e
    .end local v0    # "b":Landroid/text/StaticLayout$Builder;
    invoke-direct {v0}, Landroid/text/StaticLayout$Builder;-><init>()V

    #@11
    .line 82
    .restart local v0    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@13
    .line 83
    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    #@15
    .line 84
    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    #@17
    .line 85
    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    #@19
    .line 86
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    #@1b
    .line 87
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@1d
    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    #@1f
    .line 88
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@21
    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@23
    .line 89
    const/high16 v1, 0x3f800000    # 1.0f

    #@25
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    #@27
    .line 90
    const/4 v1, 0x0

    #@28
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    #@2a
    .line 91
    const/4 v1, 0x1

    #@2b
    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@2d
    .line 92
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@2f
    .line 93
    iput-object v3, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@31
    .line 94
    const v1, 0x7fffffff

    #@34
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    #@36
    .line 95
    iput v2, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    #@38
    .line 96
    iput v2, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    #@3a
    .line 98
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    #@3d
    move-result-object v1

    #@3e
    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    #@40
    .line 99
    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .locals 2
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    #@3
    .line 104
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@5
    .line 105
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    #@7
    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@a
    .line 106
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    #@c
    .line 107
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    #@e
    .line 108
    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    #@10
    .line 109
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@12
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap4(J)V

    #@15
    .line 110
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@17
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@1a
    .line 102
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    #@2
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 345
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@a
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 346
    invoke-static {p1}, Landroid/text/Hyphenator;->get(Ljava/util/Locale;)Landroid/text/Hyphenator;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/text/Hyphenator;->getNativePtr()J

    #@15
    move-result-wide v4

    #@16
    .line 345
    invoke-static {v0, v1, v2, v4, v5}, Landroid/text/StaticLayout;->-wrap7(JLjava/lang/String;J)V

    #@19
    .line 347
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    #@1b
    .line 343
    :cond_0
    return-void
.end method


# virtual methods
.method addMeasuredRun(II[F)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F

    #@0
    .prologue
    .line 357
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->-wrap2(JII[F)V

    #@5
    .line 356
    return-void
.end method

.method addReplacementRun(IIF)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "width"    # F

    #@0
    .prologue
    .line 361
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->-wrap3(JIIF)V

    #@5
    .line 360
    return-void
.end method

.method addStyleRun(Landroid/text/TextPaint;IIZ)F
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "isRtl"    # Z

    #@0
    .prologue
    .line 352
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2
    invoke-virtual {p1}, Landroid/text/TextPaint;->getNativeInstance()J

    #@5
    move-result-wide v2

    #@6
    iget-wide v4, p1, Landroid/text/TextPaint;->mNativeTypeface:J

    #@8
    move v6, p2

    #@9
    move v7, p3

    #@a
    move v8, p4

    #@b
    invoke-static/range {v0 .. v8}, Landroid/text/StaticLayout;->-wrap0(JJJIIZ)F

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public build()Landroid/text/StaticLayout;
    .locals 2

    #@0
    .prologue
    .line 374
    new-instance v0, Landroid/text/StaticLayout;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V

    #@6
    .line 375
    .local v0, "result":Landroid/text/StaticLayout;
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    #@9
    .line 376
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    :try_start_0
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap5(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 380
    return-void

    #@9
    .line 383
    :catchall_0
    move-exception v0

    #@a
    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 383
    throw v0
.end method

.method finish()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@3
    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap4(J)V

    #@6
    .line 116
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@8
    .line 117
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    #@a
    .line 118
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    #@c
    .line 119
    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    #@e
    .line 120
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    #@10
    invoke-virtual {v0}, Landroid/text/MeasuredText;->finish()V

    #@13
    .line 114
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    #@0
    .prologue
    .line 182
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    #@2
    .line 183
    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "breakStrategy"    # I

    #@0
    .prologue
    .line 282
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    #@2
    .line 283
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    .line 256
    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "ellipsizedWidth"    # I

    #@0
    .prologue
    .line 238
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@2
    .line 239
    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    #@0
    .prologue
    .line 295
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    #@2
    .line 296
    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "includePad"    # Z

    #@0
    .prologue
    .line 224
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@2
    .line 225
    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .locals 8
    .param p1, "leftIndents"    # [I
    .param p2, "rightIndents"    # [I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 308
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    #@3
    .line 309
    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    #@5
    .line 310
    if-nez p1, :cond_0

    #@7
    const/4 v2, 0x0

    #@8
    .line 311
    .local v2, "leftLen":I
    :goto_0
    if-nez p2, :cond_1

    #@a
    move v4, v6

    #@b
    .line 312
    .local v4, "rightLen":I
    :goto_1
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v7

    #@f
    new-array v1, v7, [I

    #@11
    .line 313
    .local v1, "indents":[I
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_2
    array-length v7, v1

    #@13
    if-ge v0, v7, :cond_4

    #@15
    .line 314
    if-ge v0, v2, :cond_2

    #@17
    aget v3, p1, v0

    #@19
    .line 315
    .local v3, "leftMargin":I
    :goto_3
    if-ge v0, v4, :cond_3

    #@1b
    aget v5, p2, v0

    #@1d
    .line 316
    .local v5, "rightMargin":I
    :goto_4
    add-int v7, v3, v5

    #@1f
    aput v7, v1, v0

    #@21
    .line 313
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_2

    #@24
    .line 310
    .end local v0    # "i":I
    .end local v1    # "indents":[I
    .end local v2    # "leftLen":I
    .end local v3    # "leftMargin":I
    .end local v4    # "rightLen":I
    .end local v5    # "rightMargin":I
    :cond_0
    array-length v2, p1

    #@25
    .restart local v2    # "leftLen":I
    goto :goto_0

    #@26
    .line 311
    :cond_1
    array-length v4, p2

    #@27
    goto :goto_1

    #@28
    .line 314
    .restart local v0    # "i":I
    .restart local v1    # "indents":[I
    .restart local v4    # "rightLen":I
    :cond_2
    const/4 v3, 0x0

    #@29
    .restart local v3    # "leftMargin":I
    goto :goto_3

    #@2a
    :cond_3
    move v5, v6

    #@2b
    .line 315
    goto :goto_4

    #@2c
    .line 318
    .end local v3    # "leftMargin":I
    :cond_4
    iget-wide v6, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2e
    invoke-static {v6, v7, v1}, Landroid/text/StaticLayout;->-wrap6(J[I)V

    #@31
    .line 319
    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    #@0
    .prologue
    .line 209
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    #@2
    .line 210
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    #@4
    .line 211
    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "maxLines"    # I

    #@0
    .prologue
    .line 269
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    #@2
    .line 270
    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 155
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    #@2
    .line 156
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 140
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@2
    .line 141
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    #@4
    .line 142
    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    #@6
    .line 143
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 195
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@2
    .line 196
    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 1
    .param p1, "width"    # I

    #@0
    .prologue
    .line 168
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    #@2
    .line 169
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 170
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@8
    .line 172
    :cond_0
    return-object p0
.end method
