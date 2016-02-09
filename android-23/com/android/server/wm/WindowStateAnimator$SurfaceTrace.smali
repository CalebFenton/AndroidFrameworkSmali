.class Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
.super Landroid/view/SurfaceControl;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowStateAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SurfaceTrace"
.end annotation


# static fields
.field private static final SURFACE_TAG:Ljava/lang/String; = "SurfaceTrace"

.field private static final logSurfaceTrace:Z

.field static final sSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDsdx:F

.field private mDsdy:F

.field private mDtdx:F

.field private mDtdy:F

.field private mIsOpaque:Z

.field private mLayer:I

.field private mLayerStack:I

.field private final mName:Ljava/lang/String;

.field private final mPosition:Landroid/graphics/PointF;

.field private mShown:Z

.field private final mSize:Landroid/graphics/Point;

.field private mSurfaceTraceAlpha:F

.field private final mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 555
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@7
    .line 552
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "s"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 571
    invoke-direct/range {p0 .. p6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    #@4
    .line 557
    const/4 v0, 0x0

    #@5
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    #@7
    .line 559
    new-instance v0, Landroid/graphics/PointF;

    #@9
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    #@c
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    #@e
    .line 560
    new-instance v0, Landroid/graphics/Point;

    #@10
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@13
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@15
    .line 561
    new-instance v0, Landroid/graphics/Rect;

    #@17
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    #@1c
    .line 562
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    #@1e
    .line 572
    if-eqz p2, :cond_0

    #@20
    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mName:Ljava/lang/String;

    #@22
    .line 573
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@24
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Point;->set(II)V

    #@27
    .line 576
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@29
    monitor-enter v1

    #@2a
    .line 577
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@2c
    const/4 v2, 0x0

    #@2d
    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v1

    #@31
    .line 570
    return-void

    #@32
    .line 572
    .restart local p2    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, "Not named"

    #@35
    goto :goto_0

    #@36
    .line 576
    .end local p2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    #@37
    monitor-exit v1

    #@38
    throw v0
.end method

.method static dumpAllSurfaces(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 726
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 727
    :try_start_0
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .line 728
    .local v0, "N":I
    if-gtz v0, :cond_0

    #@b
    monitor-exit v4

    #@c
    .line 729
    return-void

    #@d
    .line 731
    :cond_0
    if-eqz p1, :cond_1

    #@f
    .line 732
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 734
    :cond_1
    const-string/jumbo v3, "WINDOW MANAGER SURFACES (dumpsys window surfaces)"

    #@15
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 735
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@1b
    .line 736
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    #@23
    .line 737
    .local v2, "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    const-string/jumbo v3, "  Surface #"

    #@26
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2c
    const-string/jumbo v3, ": #"

    #@2f
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    .line 738
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@35
    move-result v3

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    .line 739
    const-string/jumbo v3, " "

    #@40
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mName:Ljava/lang/String;

    #@45
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@48
    .line 740
    const-string/jumbo v3, "    mLayerStack="

    #@4b
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayerStack:I

    #@50
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@53
    .line 741
    const-string/jumbo v3, " mLayer="

    #@56
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@59
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    #@5b
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    #@5e
    .line 742
    const-string/jumbo v3, "    mShown="

    #@61
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    iget-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    #@66
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    #@69
    const-string/jumbo v3, " mAlpha="

    #@6c
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    .line 743
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    #@71
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    #@74
    const-string/jumbo v3, " mIsOpaque="

    #@77
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    .line 744
    iget-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mIsOpaque:Z

    #@7c
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Z)V

    #@7f
    .line 745
    const-string/jumbo v3, "    mPosition="

    #@82
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@85
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    #@87
    iget v3, v3, Landroid/graphics/PointF;->x:F

    #@89
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    #@8c
    const-string/jumbo v3, ","

    #@8f
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@92
    .line 746
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    #@94
    iget v3, v3, Landroid/graphics/PointF;->y:F

    #@96
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    #@99
    .line 747
    const-string/jumbo v3, " mSize="

    #@9c
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@a1
    iget v3, v3, Landroid/graphics/Point;->x:I

    #@a3
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@a6
    const-string/jumbo v3, "x"

    #@a9
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ac
    .line 748
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@ae
    iget v3, v3, Landroid/graphics/Point;->y:I

    #@b0
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    #@b3
    .line 749
    const-string/jumbo v3, "    mCrop="

    #@b6
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b9
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    #@bb
    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    #@be
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@c1
    .line 750
    const-string/jumbo v3, "    Transform: ("

    #@c4
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c7
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdx:F

    #@c9
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    #@cc
    const-string/jumbo v3, ", "

    #@cf
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    .line 751
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdx:F

    #@d4
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    #@d7
    const-string/jumbo v3, ", "

    #@da
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dd
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdy:F

    #@df
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    #@e2
    .line 752
    const-string/jumbo v3, ", "

    #@e5
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e8
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdy:F

    #@ea
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    #@ed
    const-string/jumbo v3, ")"

    #@f0
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f3
    .line 735
    add-int/lit8 v1, v1, 0x1

    #@f5
    goto/16 :goto_0

    #@f7
    .end local v2    # "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    :cond_2
    monitor-exit v4

    #@f8
    .line 725
    return-void

    #@f9
    .line 726
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@fa
    monitor-exit v4

    #@fb
    throw v3
.end method


# virtual methods
.method public destroy()V
    .locals 2

    #@0
    .prologue
    .line 707
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    #@3
    .line 710
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    .line 711
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 706
    return-void

    #@d
    .line 710
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public hide()V
    .locals 1

    #@0
    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 690
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    #@7
    .line 692
    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    #@a
    .line 686
    return-void
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 717
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    #@3
    .line 720
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@5
    monitor-enter v1

    #@6
    .line 721
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 716
    return-void

    #@d
    .line 720
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 583
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 586
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    #@8
    .line 588
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    #@b
    .line 582
    return-void
.end method

.method public setLayer(I)V
    .locals 5
    .param p1, "zorder"    # I

    #@0
    .prologue
    .line 593
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    #@2
    if-eq p1, v2, :cond_0

    #@4
    .line 596
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    #@6
    .line 598
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    #@9
    .line 600
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@b
    monitor-enter v3

    #@c
    .line 601
    :try_start_0
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@11
    .line 603
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v2

    #@17
    add-int/lit8 v0, v2, -0x1

    #@19
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@1b
    .line 604
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    #@23
    .line 605
    .local v1, "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    iget v2, v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    #@25
    if-ge v2, p1, :cond_2

    #@27
    .line 609
    .end local v1    # "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    :cond_1
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    #@29
    add-int/lit8 v4, v0, 0x1

    #@2b
    invoke-virtual {v2, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit v3

    #@2f
    .line 592
    return-void

    #@30
    .line 603
    .restart local v1    # "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@32
    goto :goto_0

    #@33
    .line 600
    .end local v0    # "i":I
    .end local v1    # "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    :catchall_0
    move-exception v2

    #@34
    monitor-exit v3

    #@35
    throw v2
.end method

.method public setLayerStack(I)V
    .locals 1
    .param p1, "layerStack"    # I

    #@0
    .prologue
    .line 648
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayerStack:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 651
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayerStack:I

    #@6
    .line 653
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    #@9
    .line 647
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
    .line 673
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdx:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdx:F

    #@8
    cmpl-float v0, p2, v0

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 677
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdx:F

    #@e
    .line 678
    iput p2, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdx:F

    #@10
    .line 679
    iput p3, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdy:F

    #@12
    .line 680
    iput p4, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdy:F

    #@14
    .line 682
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    #@17
    .line 672
    return-void

    #@18
    .line 673
    :cond_2
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdy:F

    #@1a
    cmpl-float v0, p3, v0

    #@1c
    if-nez v0, :cond_0

    #@1e
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdy:F

    #@20
    cmpl-float v0, p4, v0

    #@22
    if-eqz v0, :cond_1

    #@24
    goto :goto_0
.end method

.method public setOpaque(Z)V
    .locals 1
    .param p1, "isOpaque"    # Z

    #@0
    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mIsOpaque:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 661
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mIsOpaque:Z

    #@6
    .line 663
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    #@9
    .line 657
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    #@2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    #@4
    cmpl-float v0, p1, v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    #@a
    iget v0, v0, Landroid/graphics/PointF;->y:F

    #@c
    cmpl-float v0, p2, v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    #@12
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    #@15
    .line 620
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    #@18
    .line 614
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    #@0
    .prologue
    .line 668
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    #@3
    .line 667
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@2
    iget v0, v0, Landroid/graphics/Point;->x:I

    #@4
    if-ne p1, v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@8
    iget v0, v0, Landroid/graphics/Point;->y:I

    #@a
    if-eq p2, v0, :cond_1

    #@c
    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@e
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    #@11
    .line 630
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    #@14
    .line 624
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 635
    if-eqz p1, :cond_0

    #@2
    .line 636
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    #@4
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 640
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@f
    .line 643
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    #@12
    .line 634
    return-void
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 700
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    #@7
    .line 702
    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    #@a
    .line 696
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Surface "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 760
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mName:Ljava/lang/String;

    #@21
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 760
    const-string/jumbo v1, " ("

    #@28
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 760
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayerStack:I

    #@2e
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 760
    const-string/jumbo v1, "): shown="

    #@35
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 760
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    #@3b
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 760
    const-string/jumbo v1, " layer="

    #@42
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 760
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    #@48
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 761
    const-string/jumbo v1, " alpha="

    #@4f
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 761
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    #@55
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 761
    const-string/jumbo v1, " "

    #@5c
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 761
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    #@62
    iget v1, v1, Landroid/graphics/PointF;->x:F

    #@64
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    .line 761
    const-string/jumbo v1, ","

    #@6b
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    .line 761
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    #@71
    iget v1, v1, Landroid/graphics/PointF;->y:F

    #@73
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 762
    const-string/jumbo v1, " "

    #@7a
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 762
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@80
    iget v1, v1, Landroid/graphics/Point;->x:I

    #@82
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    .line 762
    const-string/jumbo v1, "x"

    #@89
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    .line 762
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    #@8f
    iget v1, v1, Landroid/graphics/Point;->y:I

    #@91
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    .line 763
    const-string/jumbo v1, " crop="

    #@98
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    .line 763
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    #@9e
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    .line 764
    const-string/jumbo v1, " opaque="

    #@a9
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    .line 764
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mIsOpaque:Z

    #@af
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v0

    #@b3
    .line 765
    const-string/jumbo v1, " ("

    #@b6
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    .line 765
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdx:F

    #@bc
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v0

    #@c0
    .line 765
    const-string/jumbo v1, ","

    #@c3
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    .line 765
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdx:F

    #@c9
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    .line 765
    const-string/jumbo v1, ","

    #@d0
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v0

    #@d4
    .line 765
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdy:F

    #@d6
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v0

    #@da
    .line 765
    const-string/jumbo v1, ","

    #@dd
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v0

    #@e1
    .line 765
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdy:F

    #@e3
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v0

    #@e7
    .line 765
    const-string/jumbo v1, ")"

    #@ea
    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v0

    #@ee
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v0

    #@f2
    return-object v0
.end method
