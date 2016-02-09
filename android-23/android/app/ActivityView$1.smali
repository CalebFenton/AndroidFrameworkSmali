.class Landroid/app/ActivityView$1;
.super Landroid/os/Handler;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method constructor <init>(Landroid/app/ActivityView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityView;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 101
    iput-object p1, p0, Landroid/app/ActivityView$1;->this$0:Landroid/app/ActivityView;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@3
    .line 105
    iget v1, p1, Landroid/os/Message;->what:I

    #@5
    const/4 v2, 0x1

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityView$1;->this$0:Landroid/app/ActivityView;

    #@a
    invoke-static {v1}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;

    #@d
    move-result-object v2

    #@e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10
    check-cast v1, Landroid/view/Surface;

    #@12
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@14
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@16
    .line 108
    iget-object v5, p0, Landroid/app/ActivityView$1;->this$0:Landroid/app/ActivityView;

    #@18
    iget-object v5, v5, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    #@1a
    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    #@1c
    .line 107
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 103
    :cond_0
    return-void

    #@20
    .line 109
    :catch_0
    move-exception v0

    #@21
    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@23
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "ActivityView: Unable to set surface of ActivityContainer. "

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method
