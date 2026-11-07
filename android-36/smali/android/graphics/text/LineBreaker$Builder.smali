.class public final Landroid/graphics/text/LineBreaker$Builder;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBreakStrategy:I

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIndents:[I

.field private blacklist mJustificationMode:I

.field private blacklist mUseBoundsForWidth:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    .line 197
    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    .line 198
    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    .line 200
    iput-boolean v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/text/LineBreaker;
    .registers 8

    .line 277
    new-instance v0, Landroid/graphics/text/LineBreaker;

    iget v1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    iget v2, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    iget v3, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    iget-object v4, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    iget-boolean v5, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/graphics/text/LineBreaker;-><init>(III[IZLandroid/graphics/text/LineBreaker-IA;)V

    return-object v0
.end method

.method public whitelist setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2
    .param p1, "breakStrategy"    # I

    .line 209
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    .line 210
    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2
    .param p1, "hyphenationFrequency"    # I

    .line 221
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    .line 222
    return-object p0
.end method

.method public whitelist setIndents([I)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2
    .param p1, "indents"    # [I

    .line 245
    iput-object p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    .line 246
    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2
    .param p1, "justificationMode"    # I

    .line 233
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    .line 234
    return-object p0
.end method

.method public whitelist setUseBoundsForWidth(Z)Landroid/graphics/text/LineBreaker$Builder;
    .registers 2
    .param p1, "useBoundsForWidth"    # Z

    .line 267
    iput-boolean p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    .line 268
    return-object p0
.end method
