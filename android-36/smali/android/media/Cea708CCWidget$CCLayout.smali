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
.field private static final greylist-max-o SAFE_TITLE_AREA_SCALE_END_X:F = 0.9f

.field private static final greylist-max-o SAFE_TITLE_AREA_SCALE_END_Y:F = 0.9f

.field private static final greylist-max-o SAFE_TITLE_AREA_SCALE_START_X:F = 0.1f

.field private static final greylist-max-o SAFE_TITLE_AREA_SCALE_START_Y:F = 0.1f


# instance fields
.field private final greylist-max-o mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1320
    invoke-direct {p0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;-><init>(Landroid/content/Context;)V

    .line 1322
    new-instance v0, Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-direct {v0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 1323
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    new-instance v1, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3, v2, v3}, Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(FFFF)V

    invoke-virtual {p0, v0, v1}, Landroid/media/Cea708CCWidget$CCLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1326
    return-void
.end method


# virtual methods
.method public greylist-max-o addOrUpdateViewToSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V
    .registers 5
    .param p1, "captionWindowLayout"    # Landroid/media/Cea708CCWidget$CCWindowLayout;
    .param p2, "scaledLayoutParams"    # Landroid/media/Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    .line 1330
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1331
    .local v0, "index":I
    if-gez v0, :cond_e

    .line 1332
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v1, p1, p2}, Landroid/media/Cea708CCWidget$ScaledLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    return-void

    .line 1335
    :cond_e
    iget-object v1, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v1, p1, p2}, Landroid/media/Cea708CCWidget$ScaledLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1336
    return-void
.end method

.method public greylist-max-o removeViewFromSafeTitleArea(Landroid/media/Cea708CCWidget$CCWindowLayout;)V
    .registers 3
    .param p1, "captionWindowLayout"    # Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1339
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroid/media/Cea708CCWidget$ScaledLayout;->removeView(Landroid/view/View;)V

    .line 1340
    return-void
.end method

.method public greylist-max-o setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 5
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1343
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v0

    .line 1344
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1345
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 1346
    invoke-virtual {v2, v1}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1347
    .local v2, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1344
    .end local v2    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1349
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public greylist-max-o setFontScale(F)V
    .registers 5
    .param p1, "fontScale"    # F

    .line 1352
    iget-object v0, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v0

    .line 1353
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1354
    iget-object v2, p0, Landroid/media/Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroid/media/Cea708CCWidget$ScaledLayout;

    .line 1355
    invoke-virtual {v2, v1}, Landroid/media/Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/media/Cea708CCWidget$CCWindowLayout;

    .line 1356
    .local v2, "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v2, p1}, Landroid/media/Cea708CCWidget$CCWindowLayout;->setFontScale(F)V

    .line 1353
    .end local v2    # "windowLayout":Landroid/media/Cea708CCWidget$CCWindowLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1358
    .end local v1    # "i":I
    :cond_17
    return-void
.end method
