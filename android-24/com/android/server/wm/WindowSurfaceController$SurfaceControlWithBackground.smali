.class Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "WindowSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field private mAppForcedInvisible:Z

.field private mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field public mLayer:I

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowSurfaceController;Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/AppWindowToken;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/server/wm/WindowSurfaceController;
    .param p2, "s"    # Landroid/view/SurfaceSession;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "format"    # I
    .param p7, "flags"    # I
    .param p8, "token"    # Lcom/android/server/wm/AppWindowToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    #@0
    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->this$0:Lcom/android/server/wm/WindowSurfaceController;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p2

    #@4
    move-object v2, p3

    #@5
    move v3, p4

    #@6
    move v4, p5

    #@7
    move v5, p6

    #@8
    move v6, p7

    #@9
    .line 770
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@c
    .line 760
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    #@f
    .line 761
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    #@12
    .line 763
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    #@15
    .line 764
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    #@18
    .line 771
    new-instance v0, Landroid/view/SurfaceControl;

    #@1a
    .line 772
    const/high16 v1, 0x20000

    #@1c
    or-int v6, p7, v1

    #@1e
    const/4 v5, -0x1

    #@1f
    move-object v1, p2

    #@20
    move-object v2, p3

    #@21
    move v3, p4

    #@22
    move v4, p5

    #@23
    .line 771
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@26
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@28
    .line 773
    and-int/lit16 v0, p7, 0x400

    #@2a
    if-eqz v0, :cond_0

    #@2c
    const/4 v0, 0x1

    #@2d
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    #@2f
    .line 774
    iput-object p8, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@31
    .line 776
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@33
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->addSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    #@36
    .line 769
    return-void

    #@37
    .line 773
    :cond_0
    const/4 v0, 0x0

    #@38
    goto :goto_0
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    #@0
    .prologue
    .line 882
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    #@3
    .line 883
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    #@8
    .line 881
    return-void
.end method

.method public destroy()V
    .locals 1

    #@0
    .prologue
    .line 863
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    #@3
    .line 864
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    #@8
    .line 865
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@a
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeSurfaceViewBackground(Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;)V

    #@d
    .line 862
    return-void
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 845
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    #@3
    .line 846
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 847
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    #@a
    .line 848
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    #@f
    .line 844
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 870
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    #@3
    .line 871
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    #@8
    .line 869
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 781
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@3
    .line 782
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@8
    .line 780
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 815
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    #@3
    .line 816
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    #@8
    .line 814
    return-void
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    #@0
    .prologue
    .line 787
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@3
    .line 788
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    add-int/lit8 v1, p1, -0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@a
    .line 789
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    #@c
    if-eq v0, p1, :cond_0

    #@e
    .line 790
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mLayer:I

    #@10
    .line 791
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@12
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    #@15
    .line 786
    :cond_0
    return-void
.end method

.method public setLayerStack(I)V
    .locals 1
    .param p1, "layerStack"    # I

    #@0
    .prologue
    .line 821
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@3
    .line 822
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@8
    .line 820
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    #@0
    .prologue
    .line 839
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@3
    .line 840
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@8
    .line 838
    return-void
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    #@0
    .prologue
    .line 827
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    #@3
    .line 828
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    #@5
    .line 829
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->updateBackgroundVisibility(Z)V

    #@a
    .line 826
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 797
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@3
    .line 798
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@8
    .line 796
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    #@3
    .line 833
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 803
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@3
    .line 804
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@8
    .line 802
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 876
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    #@3
    .line 877
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    #@8
    .line 875
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 809
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    #@3
    .line 810
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@5
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    #@8
    .line 808
    return-void
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 854
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    #@3
    .line 855
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 856
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    #@a
    .line 857
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@c
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateSurfaceViewBackgroundVisibilities()V

    #@f
    .line 853
    :cond_0
    return-void
.end method

.method updateBackgroundVisibility(Z)V
    .locals 1
    .param p1, "forcedInvisible"    # Z

    #@0
    .prologue
    .line 887
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    #@2
    .line 888
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mOpaque:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mVisible:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mAppForcedInvisible:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@10
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    #@13
    .line 886
    :goto_0
    return-void

    #@14
    .line 889
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    #@16
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    #@19
    goto :goto_0
.end method
