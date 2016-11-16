.class public final Landroid/accessibilityservice/AccessibilityService$MagnificationController;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MagnificationController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    }
.end annotation


# instance fields
.field private mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 709
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@5
    .line 710
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    #@7
    .line 708
    return-void
.end method

.method private setMagnificationCallbackEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 795
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 796
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 795
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 797
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 799
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationCallbackEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 793
    :cond_0
    return-void

    #@14
    .line 800
    :catch_0
    move-exception v1

    #@15
    .line 801
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2
.end method


# virtual methods
.method public addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    #@0
    .prologue
    .line 732
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V

    #@4
    .line 731
    return-void
.end method

.method public addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 747
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 748
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 749
    new-instance v1, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@c
    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@e
    .line 752
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    #@13
    move-result v0

    #@14
    .line 753
    .local v0, "shouldEnableCallback":Z
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 755
    if-eqz v0, :cond_1

    #@1b
    .line 758
    const/4 v1, 0x1

    #@1c
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_1
    monitor-exit v2

    #@20
    .line 746
    return-void

    #@21
    .line 747
    .end local v0    # "shouldEnableCallback":Z
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method

.method dispatchMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 12
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    #@0
    .prologue
    .line 813
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 814
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 815
    :cond_0
    const-string/jumbo v0, "AccessibilityService"

    #@12
    const-string/jumbo v3, "Received magnification changed callback with no listeners registered!"

    #@15
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 817
    const/4 v0, 0x0

    #@19
    invoke-direct {p0, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 818
    return-void

    #@1e
    .line 823
    :cond_1
    :try_start_1
    new-instance v9, Landroid/util/ArrayMap;

    #@20
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@22
    invoke-direct {v9, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .local v9, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    monitor-exit v1

    #@26
    .line 826
    const/4 v11, 0x0

    #@27
    .local v11, "i":I
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    #@2a
    move-result v8

    #@2b
    .local v8, "count":I
    :goto_0
    if-ge v11, v8, :cond_3

    #@2d
    .line 827
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    #@33
    .line 828
    .local v2, "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@36
    move-result-object v10

    #@37
    check-cast v10, Landroid/os/Handler;

    #@39
    .line 829
    .local v10, "handler":Landroid/os/Handler;
    if-eqz v10, :cond_2

    #@3b
    .line 830
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;

    #@3d
    move-object v1, p0

    #@3e
    move-object v3, p1

    #@3f
    move v4, p2

    #@40
    move v5, p3

    #@41
    move/from16 v6, p4

    #@43
    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$1;-><init>(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;FFF)V

    #@46
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@49
    .line 826
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 813
    .end local v2    # "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .end local v8    # "count":I
    .end local v9    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    .end local v10    # "handler":Landroid/os/Handler;
    .end local v11    # "i":I
    :catchall_0
    move-exception v0

    #@4d
    monitor-exit v1

    #@4e
    throw v0

    #@4f
    .restart local v2    # "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .restart local v8    # "count":I
    .restart local v9    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    .restart local v10    # "handler":Landroid/os/Handler;
    .restart local v11    # "i":I
    :cond_2
    move-object v3, p0

    #@50
    move-object v4, p1

    #@51
    move v5, p2

    #@52
    move v6, p3

    #@53
    move/from16 v7, p4

    #@55
    .line 839
    invoke-interface/range {v2 .. v7}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;FFF)V

    #@58
    goto :goto_1

    #@59
    .line 811
    .end local v2    # "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .end local v10    # "handler":Landroid/os/Handler;
    :cond_3
    return-void
.end method

.method public getCenterX()F
    .locals 4

    #@0
    .prologue
    .line 885
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 886
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 885
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 887
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 889
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterX()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 890
    :catch_0
    move-exception v1

    #@16
    .line 891
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@19
    const-string/jumbo v3, "Failed to obtain center X"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 892
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    .line 895
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public getCenterY()F
    .locals 4

    #@0
    .prologue
    .line 914
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 915
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 914
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 916
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 918
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterY()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 919
    :catch_0
    move-exception v1

    #@16
    .line 920
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@19
    const-string/jumbo v3, "Failed to obtain center Y"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 921
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    .line 924
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public getMagnificationRegion()Landroid/graphics/Region;
    .locals 4

    #@0
    .prologue
    .line 948
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 949
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 948
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 950
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 952
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationRegion()Landroid/graphics/Region;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 953
    :catch_0
    move-exception v1

    #@16
    .line 954
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@19
    const-string/jumbo v3, "Failed to obtain magnified region"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 955
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    .line 958
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method

.method public getScale()F
    .locals 4

    #@0
    .prologue
    .line 856
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 857
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 856
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 858
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 860
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationScale()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 861
    :catch_0
    move-exception v1

    #@16
    .line 862
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@19
    const-string/jumbo v3, "Failed to obtain scale"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 863
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    .line 866
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    #@24
    return v2
.end method

.method onServiceConnected()V
    .locals 2

    #@0
    .prologue
    .line 717
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 718
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    :cond_0
    :goto_0
    monitor-exit v1

    #@10
    .line 716
    return-void

    #@11
    .line 719
    :cond_1
    const/4 v0, 0x1

    #@12
    :try_start_1
    invoke-direct {p0, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    goto :goto_0

    #@16
    .line 717
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public removeListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 772
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 773
    return v3

    #@6
    .line 776
    :cond_0
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v3

    #@9
    .line 777
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    .line 778
    .local v1, "keyIndex":I
    if-ltz v1, :cond_3

    #@11
    const/4 v0, 0x1

    #@12
    .line 779
    .local v0, "hasKey":Z
    :goto_0
    if-eqz v0, :cond_1

    #@14
    .line 780
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@19
    .line 783
    :cond_1
    if-eqz v0, :cond_2

    #@1b
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 786
    const/4 v2, 0x0

    #@24
    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_2
    monitor-exit v3

    #@28
    .line 789
    return v0

    #@29
    .line 778
    .end local v0    # "hasKey":Z
    :cond_3
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "hasKey":Z
    goto :goto_0

    #@2b
    .line 776
    .end local v0    # "hasKey":Z
    .end local v1    # "keyIndex":I
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit v3

    #@2d
    throw v2
.end method

.method public reset(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 977
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 978
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 977
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 979
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 981
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetMagnification(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 982
    :catch_0
    move-exception v1

    #@16
    .line 983
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@19
    const-string/jumbo v3, "Failed to reset"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 984
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@22
    .line 987
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public setCenter(FFZ)Z
    .locals 4
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z

    #@0
    .prologue
    .line 1037
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 1038
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 1037
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 1039
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 1042
    const/high16 v2, 0x7fc00000    # NaNf

    #@12
    .line 1041
    :try_start_0
    invoke-interface {v0, v2, p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationScaleAndCenter(FFFZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 1043
    :catch_0
    move-exception v1

    #@18
    .line 1044
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@1b
    const-string/jumbo v3, "Failed to set center"

    #@1e
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 1045
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@24
    .line 1048
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@25
    return v2
.end method

.method public setScale(FZ)Z
    .locals 4
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 1005
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@3
    move-result-object v2

    #@4
    .line 1006
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    #@6
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityService;->-get0(Landroid/accessibilityservice/AccessibilityService;)I

    #@9
    move-result v3

    #@a
    .line 1005
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    #@d
    move-result-object v0

    #@e
    .line 1007
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    #@10
    .line 1010
    const/high16 v2, 0x7fc00000    # NaNf

    #@12
    const/high16 v3, 0x7fc00000    # NaNf

    #@14
    .line 1009
    :try_start_0
    invoke-interface {v0, p1, v2, v3, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationScaleAndCenter(FFFZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 1011
    :catch_0
    move-exception v1

    #@1a
    .line 1012
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    #@1d
    const-string/jumbo v3, "Failed to set scale"

    #@20
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 1013
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@26
    .line 1016
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@27
    return v2
.end method
