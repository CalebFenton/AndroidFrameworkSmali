.class Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@0
    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 491
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@2
    iget-object v2, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@4
    invoke-virtual {v2}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@7
    move-result-object v3

    #@8
    monitor-enter v3

    #@9
    .line 492
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@b
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get5(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v2

    #@f
    if-nez v2, :cond_0

    #@11
    monitor-exit v3

    #@12
    .line 493
    return-void

    #@13
    .line 495
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@15
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get2(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;

    #@18
    move-result-object v2

    #@19
    iget-object v4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@1b
    invoke-static {v4}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get0(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    #@1e
    move-result v4

    #@1f
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    #@25
    .line 496
    .local v0, "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$3;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@27
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get5(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    move-result-object v1

    #@2b
    .local v1, "window":Lcom/android/server/display/OverlayDisplayWindow;
    monitor-exit v3

    #@2c
    .line 498
    iget v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    #@2e
    iget v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    #@30
    iget v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    #@32
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/OverlayDisplayWindow;->resize(III)V

    #@35
    .line 488
    return-void

    #@36
    .line 491
    .end local v0    # "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    .end local v1    # "window":Lcom/android/server/display/OverlayDisplayWindow;
    :catchall_0
    move-exception v2

    #@37
    monitor-exit v3

    #@38
    throw v2
.end method
