.class Landroid/app/ActivityView$2;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityView;->setSurfaceAsync(Landroid/view/Surface;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;

.field final synthetic val$callback:Z

.field final synthetic val$densityDpi:I

.field final synthetic val$height:I

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/app/ActivityView;Landroid/view/Surface;IIIZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityView;
    .param p2, "val$surface"    # Landroid/view/Surface;
    .param p3, "val$width"    # I
    .param p4, "val$height"    # I
    .param p5, "val$densityDpi"    # I
    .param p6, "val$callback"    # Z

    #@0
    .prologue
    .line 294
    iput-object p1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@2
    iput-object p2, p0, Landroid/app/ActivityView$2;->val$surface:Landroid/view/Surface;

    #@4
    iput p3, p0, Landroid/app/ActivityView$2;->val$width:I

    #@6
    iput p4, p0, Landroid/app/ActivityView$2;->val$height:I

    #@8
    iput p5, p0, Landroid/app/ActivityView$2;->val$densityDpi:I

    #@a
    iput-boolean p6, p0, Landroid/app/ActivityView$2;->val$callback:Z

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@2
    invoke-static {v1}, Landroid/app/ActivityView;->-get1(Landroid/app/ActivityView;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 298
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@9
    invoke-static {v1}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 299
    iget-object v1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@11
    invoke-static {v1}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@14
    move-result-object v1

    #@15
    iget-object v3, p0, Landroid/app/ActivityView$2;->val$surface:Landroid/view/Surface;

    #@17
    iget v4, p0, Landroid/app/ActivityView$2;->val$width:I

    #@19
    iget v5, p0, Landroid/app/ActivityView$2;->val$height:I

    #@1b
    iget v6, p0, Landroid/app/ActivityView$2;->val$densityDpi:I

    #@1d
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@21
    .line 307
    iget-boolean v1, p0, Landroid/app/ActivityView$2;->val$callback:Z

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 308
    iget-object v1, p0, Landroid/app/ActivityView$2;->this$0:Landroid/app/ActivityView;

    #@27
    new-instance v2, Landroid/app/ActivityView$2$1;

    #@29
    iget-object v3, p0, Landroid/app/ActivityView$2;->val$surface:Landroid/view/Surface;

    #@2b
    invoke-direct {v2, p0, v3}, Landroid/app/ActivityView$2$1;-><init>(Landroid/app/ActivityView$2;Landroid/view/Surface;)V

    #@2e
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@31
    .line 295
    :cond_1
    return-void

    #@32
    .line 297
    :catchall_0
    move-exception v1

    #@33
    :try_start_3
    monitor-exit v2

    #@34
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@35
    .line 302
    :catch_0
    move-exception v0

    #@36
    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@38
    .line 304
    const-string/jumbo v2, "ActivityView: Unable to set surface of ActivityContainer. "

    #@3b
    .line 303
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    throw v1
.end method
