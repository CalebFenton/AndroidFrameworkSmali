.class public final Landroid/view/DisplayCutout$Builder;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBoundingRectBottom:Landroid/graphics/Rect;

.field private final blacklist mBoundingRectLeft:Landroid/graphics/Rect;

.field private final blacklist mBoundingRectRight:Landroid/graphics/Rect;

.field private final blacklist mBoundingRectTop:Landroid/graphics/Rect;

.field private blacklist mCutoutPath:Landroid/graphics/Path;

.field private blacklist mSafeInsets:Landroid/graphics/Insets;

.field private blacklist mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1598
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    .line 1599
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 1601
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    .line 1602
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    .line 1603
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    .line 1604
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    .line 1610
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/DisplayCutout;
    .registers 13

    .line 1618
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    if-eqz v0, :cond_29

    .line 1621
    new-instance v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const-string/jumbo v7, "test"

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 1622
    .local v1, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    invoke-static {}, Landroid/view/DisplayCutout;->-$$Nest$sfgetCACHE_LOCK()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1623
    :try_start_1b
    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$sfputsCachedCutoutPathParserInfo(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V

    .line 1624
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    invoke-static {v0}, Landroid/view/DisplayCutout;->-$$Nest$sfputsCachedCutoutPath(Landroid/graphics/Path;)V

    .line 1625
    monitor-exit v2

    move-object v9, v1

    goto :goto_2b

    :catchall_26
    move-exception v0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v0

    .line 1627
    .end local v1    # "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    :cond_29
    const/4 v1, 0x0

    move-object v9, v1

    .line 1629
    .local v9, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    :goto_2b
    new-instance v2, Landroid/view/DisplayCutout;

    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v5, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;ZLandroid/view/DisplayCutout-IA;)V

    return-object v2
.end method

.method public whitelist setBoundingRectBottom(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .registers 3
    .param p1, "boundingRectBottom"    # Landroid/graphics/Rect;

    .line 1689
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectBottom:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1690
    return-object p0
.end method

.method public whitelist setBoundingRectLeft(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .registers 3
    .param p1, "boundingRectLeft"    # Landroid/graphics/Rect;

    .line 1659
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectLeft:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1660
    return-object p0
.end method

.method public whitelist setBoundingRectRight(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .registers 3
    .param p1, "boundingRectRight"    # Landroid/graphics/Rect;

    .line 1679
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectRight:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1680
    return-object p0
.end method

.method public whitelist setBoundingRectTop(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;
    .registers 3
    .param p1, "boundingRectTop"    # Landroid/graphics/Rect;

    .line 1669
    iget-object v0, p0, Landroid/view/DisplayCutout$Builder;->mBoundingRectTop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1670
    return-object p0
.end method

.method public whitelist setCutoutPath(Landroid/graphics/Path;)Landroid/view/DisplayCutout$Builder;
    .registers 2
    .param p1, "cutoutPath"    # Landroid/graphics/Path;

    .line 1701
    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mCutoutPath:Landroid/graphics/Path;

    .line 1702
    return-object p0
.end method

.method public whitelist setSafeInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;
    .registers 2
    .param p1, "safeInsets"    # Landroid/graphics/Insets;

    .line 1639
    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mSafeInsets:Landroid/graphics/Insets;

    .line 1640
    return-object p0
.end method

.method public whitelist setWaterfallInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;
    .registers 2
    .param p1, "waterfallInsets"    # Landroid/graphics/Insets;

    .line 1649
    iput-object p1, p0, Landroid/view/DisplayCutout$Builder;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 1650
    return-object p0
.end method
