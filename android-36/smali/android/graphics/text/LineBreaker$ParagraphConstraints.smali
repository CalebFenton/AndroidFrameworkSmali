.class public Landroid/graphics/text/LineBreaker$ParagraphConstraints;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParagraphConstraints"
.end annotation


# instance fields
.field private blacklist mDefaultTabStop:F

.field private blacklist mFirstWidth:F

.field private blacklist mFirstWidthLineCount:I

.field private blacklist mVariableTabStops:[F

.field private blacklist mWidth:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDefaultTabStop(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mDefaultTabStop:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidth:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstWidthLineCount(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)I
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidthLineCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVariableTabStops(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)[F
    .registers 1

    iget-object p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mVariableTabStops:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mWidth:F

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mWidth:F

    .line 287
    iput v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidth:F

    .line 288
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidthLineCount:I

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mVariableTabStops:[F

    .line 290
    iput v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mDefaultTabStop:F

    .line 292
    return-void
.end method


# virtual methods
.method public whitelist getDefaultTabStop()F
    .registers 2

    .line 373
    iget v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mDefaultTabStop:F

    return v0
.end method

.method public whitelist getFirstWidth()F
    .registers 2

    .line 346
    iget v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidth:F

    return v0
.end method

.method public whitelist getFirstWidthLineCount()I
    .registers 2

    .line 355
    iget v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidthLineCount:I

    return v0
.end method

.method public whitelist getTabStops()[F
    .registers 2

    .line 364
    iget-object v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mVariableTabStops:[F

    return-object v0
.end method

.method public whitelist getWidth()F
    .registers 2

    .line 337
    iget v0, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mWidth:F

    return v0
.end method

.method public whitelist setIndent(FI)V
    .registers 3
    .param p1, "firstWidth"    # F
    .param p2, "firstWidthLineCount"    # I

    .line 313
    iput p1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidth:F

    .line 314
    iput p2, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mFirstWidthLineCount:I

    .line 315
    return-void
.end method

.method public whitelist setTabStops([FF)V
    .registers 3
    .param p1, "tabStops"    # [F
    .param p2, "defaultTabStop"    # F

    .line 327
    iput-object p1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mVariableTabStops:[F

    .line 328
    iput p2, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mDefaultTabStop:F

    .line 329
    return-void
.end method

.method public whitelist setWidth(F)V
    .registers 2
    .param p1, "width"    # F

    .line 300
    iput p1, p0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->mWidth:F

    .line 301
    return-void
.end method
