.class public final Landroid/graphics/text/PositionedGlyphs;
.super Ljava/lang/Object;
.source "PositionedGlyphs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/PositionedGlyphs$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final whitelist NO_OVERRIDE:F = 1.4E-45f


# instance fields
.field private final blacklist mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLayoutPtr:J

.field private final blacklist mXOffset:F

.field private final blacklist mYOffset:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnReleaseFunc()J
    .registers 2

    invoke-static {}, Landroid/graphics/text/PositionedGlyphs;->nReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor blacklist <init>(JFF)V
    .registers 13
    .param p1, "layoutPtr"    # J
    .param p3, "xOffset"    # F
    .param p4, "yOffset"    # F

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-wide p1, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    .line 253
    iput p3, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    .line 254
    iput p4, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    .line 256
    invoke-static {}, Lcom/android/text/flags/Flags;->typefaceRedesignReadonly()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 257
    invoke-static {p1, p2}, Landroid/graphics/text/PositionedGlyphs;->nGetFontCount(J)I

    move-result v0

    .line 258
    .local v0, "fontCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v0, :cond_2e

    .line 260
    iget-object v2, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/fonts/Font;

    invoke-static {p1, p2, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetFontRef(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/fonts/Font;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 262
    .end local v0    # "fontCount":I
    .end local v1    # "i":I
    :cond_2e
    goto :goto_57

    .line 263
    :cond_2f
    invoke-static {p1, p2}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphCount(J)I

    move-result v0

    .line 264
    .local v0, "glyphCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    .line 266
    const-wide/16 v1, 0x0

    .line 267
    .local v1, "prevPtr":J
    const/4 v3, 0x0

    .line 268
    .local v3, "prevFont":Landroid/graphics/fonts/Font;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3e
    if-ge v4, v0, :cond_57

    .line 269
    invoke-static {p1, p2, v4}, Landroid/graphics/text/PositionedGlyphs;->nGetFont(JI)J

    move-result-wide v5

    .line 270
    .local v5, "ptr":J
    cmp-long v7, v1, v5

    if-eqz v7, :cond_4f

    .line 271
    move-wide v1, v5

    .line 272
    new-instance v7, Landroid/graphics/fonts/Font;

    invoke-direct {v7, v5, v6}, Landroid/graphics/fonts/Font;-><init>(J)V

    move-object v3, v7

    .line 274
    :cond_4f
    iget-object v7, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v5    # "ptr":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 278
    .end local v0    # "glyphCount":I
    .end local v1    # "prevPtr":J
    .end local v3    # "prevFont":Landroid/graphics/fonts/Font;
    .end local v4    # "i":I
    :cond_57
    :goto_57
    invoke-static {}, Landroid/graphics/text/PositionedGlyphs$NoImagePreloadHolder;->-$$Nest$sfgetREGISTRY()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 279
    return-void
.end method

.method private static native blacklist nGetAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFakeBold(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFakeItalic(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFont(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontId(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontRef(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetGlyphCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetGlyphId(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetItalicOverride(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTotalAdvance(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetWeightOverride(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetX(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetY(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 316
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 317
    :cond_4
    instance-of v1, p1, Landroid/graphics/text/PositionedGlyphs;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 318
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/graphics/text/PositionedGlyphs;

    .line 320
    .local v1, "that":Landroid/graphics/text/PositionedGlyphs;
    iget v3, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    iget v4, v1, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_68

    iget v3, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    iget v4, v1, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1e

    goto :goto_68

    .line 321
    :cond_1e
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v4

    if-eq v3, v4, :cond_29

    return v2

    .line 323
    :cond_29
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v4

    if-ge v3, v4, :cond_67

    .line 324
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v5

    if-eq v4, v5, :cond_3b

    return v2

    .line 325
    :cond_3b
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_48

    return v2

    .line 326
    :cond_48
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_55

    return v2

    .line 327
    :cond_55
    invoke-virtual {p0, v3}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/fonts/Font;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    return v2

    .line 323
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 330
    .end local v3    # "i":I
    :cond_67
    return v0

    .line 320
    :cond_68
    :goto_68
    return v2
.end method

.method public whitelist getAdvance()F
    .registers 3

    .line 73
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetTotalAdvance(J)F

    move-result v0

    return v0
.end method

.method public whitelist getAscent()F
    .registers 3

    .line 85
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetAscent(J)F

    move-result v0

    return v0
.end method

.method public whitelist getDescent()F
    .registers 3

    .line 97
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetDescent(J)F

    move-result v0

    return v0
.end method

.method public whitelist getFakeBold(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 185
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 186
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetFakeBold(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist getFakeItalic(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 197
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 198
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetFakeItalic(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist getFont(I)Landroid/graphics/fonts/Font;
    .registers 5
    .param p1, "index"    # I

    .line 136
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/android/text/flags/Flags;->typefaceRedesignReadonly()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 138
    iget-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    iget-wide v1, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v1, v2, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetFontId(JI)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    return-object v0

    .line 140
    :cond_22
    iget-object v0, p0, Landroid/graphics/text/PositionedGlyphs;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    return-object v0
.end method

.method public whitelist getGlyphId(I)I
    .registers 5
    .param p1, "index"    # I

    .line 151
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 152
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphId(JI)I

    move-result v0

    return v0
.end method

.method public whitelist getGlyphX(I)F
    .registers 5
    .param p1, "index"    # I

    .line 162
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 163
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetX(JI)F

    move-result v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public whitelist getGlyphY(I)F
    .registers 5
    .param p1, "index"    # I

    .line 173
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 174
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetY(JI)F

    move-result v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public whitelist getItalicOverride(I)F
    .registers 5
    .param p1, "index"    # I

    .line 235
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 236
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetItalicOverride(JI)F

    move-result v0

    .line 237
    .local v0, "value":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1b

    .line 238
    const/4 v1, 0x1

    return v1

    .line 240
    :cond_1b
    return v0
.end method

.method public whitelist getOffsetX()F
    .registers 2

    .line 106
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    return v0
.end method

.method public whitelist getOffsetY()F
    .registers 2

    .line 115
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    return v0
.end method

.method public whitelist getWeightOverride(I)F
    .registers 5
    .param p1, "index"    # I

    .line 217
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 218
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/PositionedGlyphs;->nGetWeightOverride(JI)F

    move-result v0

    .line 219
    .local v0, "value":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1b

    .line 220
    const/4 v1, 0x1

    return v1

    .line 222
    :cond_1b
    return v0
.end method

.method public whitelist glyphCount()I
    .registers 3

    .line 125
    iget-wide v0, p0, Landroid/graphics/text/PositionedGlyphs;->mLayoutPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/PositionedGlyphs;->nGetGlyphCount(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 335
    iget v0, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 336
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 338
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 337
    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 340
    .end local v1    # "i":I
    :cond_46
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 347
    if-eqz v1, :cond_15

    .line 348
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 351
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") font = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {p0, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 354
    .end local v1    # "i":I
    :cond_62
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PositionedGlyphs{glyphs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mXOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/text/PositionedGlyphs;->mXOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mYOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/text/PositionedGlyphs;->mYOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    return-object v1
.end method
