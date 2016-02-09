.class final Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p2, "displayId"    # I
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;

    #@0
    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 713
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@5
    .line 714
    iput p2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    #@7
    .line 715
    iput-object p3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@9
    .line 716
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@b
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    #@e
    .line 712
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    #@0
    .prologue
    .line 720
    monitor-enter p0

    #@1
    .line 721
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 723
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@7
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    #@a
    .line 719
    return-void

    #@b
    .line 720
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public onDisplayTransaction()V
    .locals 6

    #@0
    .prologue
    .line 728
    monitor-enter p0

    #@1
    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 730
    return-void

    #@7
    .line 733
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    #@9
    iget v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    #@b
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    #@e
    move-result-object v0

    #@f
    .line 734
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    packed-switch v1, :pswitch_data_0

    #@14
    :goto_0
    monitor-exit p0

    #@15
    .line 727
    return-void

    #@16
    .line 736
    :pswitch_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@18
    const/4 v2, 0x0

    #@19
    const/4 v3, 0x0

    #@1a
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@1d
    .line 737
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@1f
    const/high16 v2, 0x3f800000    # 1.0f

    #@21
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x0

    #@23
    const/high16 v5, 0x3f800000    # 1.0f

    #@25
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 728
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1

    #@2c
    .line 740
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_1
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@2e
    const/4 v2, 0x0

    #@2f
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@31
    int-to-float v3, v3

    #@32
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@35
    .line 741
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@37
    const/4 v2, 0x0

    #@38
    const/high16 v3, -0x40800000    # -1.0f

    #@3a
    const/high16 v4, 0x3f800000    # 1.0f

    #@3c
    const/4 v5, 0x0

    #@3d
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@40
    goto :goto_0

    #@41
    .line 744
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@43
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@45
    int-to-float v2, v2

    #@46
    .line 745
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    #@48
    int-to-float v3, v3

    #@49
    .line 744
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@4c
    .line 746
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@4e
    const/high16 v2, -0x40800000    # -1.0f

    #@50
    const/4 v3, 0x0

    #@51
    const/4 v4, 0x0

    #@52
    const/high16 v5, -0x40800000    # -1.0f

    #@54
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@57
    goto :goto_0

    #@58
    .line 749
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@5a
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    #@5c
    int-to-float v2, v2

    #@5d
    const/4 v3, 0x0

    #@5e
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@61
    .line 750
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    #@63
    const/4 v2, 0x0

    #@64
    const/high16 v3, 0x3f800000    # 1.0f

    #@66
    const/high16 v4, -0x40800000    # -1.0f

    #@68
    const/4 v5, 0x0

    #@69
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    goto :goto_0

    #@6d
    .line 734
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
