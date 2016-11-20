.class Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;
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
    .line 454
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@2
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get2(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@8
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get0(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    #@b
    move-result v2

    #@c
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v9

    #@10
    check-cast v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    #@12
    .line 458
    .local v9, "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    new-instance v0, Lcom/android/server/display/OverlayDisplayWindow;

    #@14
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@16
    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@18
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v1

    #@1c
    .line 459
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@1e
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get3(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iget v3, v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    #@24
    iget v4, v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    #@26
    iget v5, v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    #@28
    iget-object v6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@2a
    invoke-static {v6}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get1(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    #@2d
    move-result v6

    #@2e
    iget-object v7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@30
    invoke-static {v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-get4(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Z

    #@33
    move-result v7

    #@34
    .line 460
    iget-object v8, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@36
    .line 458
    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/OverlayDisplayWindow;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayWindow$Listener;)V

    #@39
    .line 461
    .local v0, "window":Lcom/android/server/display/OverlayDisplayWindow;
    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->show()V

    #@3c
    .line 463
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@3e
    iget-object v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    #@40
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@43
    move-result-object v2

    #@44
    monitor-enter v2

    #@45
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@47
    invoke-static {v1, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-set0(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayWindow;)Lcom/android/server/display/OverlayDisplayWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    monitor-exit v2

    #@4b
    .line 456
    return-void

    #@4c
    .line 463
    :catchall_0
    move-exception v1

    #@4d
    monitor-exit v2

    #@4e
    throw v1
.end method
