.class Landroid/media/Cea708CCWidget$CCLayout;
.super Landroid/media/Cea708CCWidget$ScaledLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/media/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCLayout"
.end annotation


# static fields
.field private static final SAFE_TITLE_AREA_SCALE_END_X:F = 0.9f

.field private static final SAFE_TITLE_AREA_SCALE_END_Y:F = 0.9f

.field private static final SAFE_TITLE_AREA_SCALE_START_X:F = 0.1f

.field private static final SAFE_TITLE_AREA_SCALE_START_Y:F = 0.1f


# instance fields
.field private final mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const v3, 0x3f666666    # 0.9f

    #@3
    const v2, 0x3dcccccd    # 0.1f

    #@6
    .line 1320
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;-><init>(Landroid/content/Context;)V

    #@9
    .line 1322
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout;

    #@b
    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;-><init>(Landroid/content/Context;)V

    #@e
    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@10
    .line 1323
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@12
    new-instance v1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@14
    invoke-direct {v1, v2, v3, v2, v3}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    #@17
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@1a
    .line 1319
    return-void
.end method


# virtual methods
.method public addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V
    .locals 2
    .param p1, "captionWindowLayout"    # Landroid/media/Cea708CCWidget$CCWindowLayout;
    .param p2, "scaledLayoutParams"    # Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    #@0
    .prologue
    .line 1330
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@2
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    .line 1331
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 1332
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@a
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@d
    .line 1333
    return-void

    #@e
    .line 1335
    :cond_0
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@10
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@13
    .line 1329
    return-void
.end method

.method public removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V
    .locals 1
    .param p1, "captionWindowLayout"    # Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@0
    .prologue
    .line 1339
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@5
    .line 1338
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@0
    .prologue
    .line 1343
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v0

    #@6
    .line 1344
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 1346
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@b
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@11
    .line 1347
    .local v2, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    #@14
    .line 1344
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1342
    .end local v2    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 4
    .param p1, "fontScale"    # F

    #@0
    .prologue
    .line 1352
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    #@5
    move-result v0

    #@6
    .line 1353
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@9
    .line 1355
    iget-object v3, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    #@b
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    #@11
    .line 1356
    .local v2, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setFontScale(F)V

    #@14
    .line 1353
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1351
    .end local v2    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    :cond_0
    return-void
.end method
