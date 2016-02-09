.class final Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;
.super Landroid/os/AsyncTask;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayViewCleanUpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService$Session;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;

    #@0
    .prologue
    .line 1429
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;-><init>(Landroid/media/tv/TvInputService$Session;)V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "views"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1431
    check-cast p1, [Landroid/view/View;

    #@2
    .end local p1    # "views":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;->doInBackground([Landroid/view/View;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Landroid/view/View;)Ljava/lang/Void;
    .locals 6
    .param p1, "views"    # [Landroid/view/View;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1432
    const/4 v2, 0x0

    #@2
    aget-object v1, p1, v2

    #@4
    .line 1434
    .local v1, "overlayViewParent":Landroid/view/View;
    const-wide/16 v2, 0x1388

    #@6
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1438
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$Session$OverlayViewCleanUpTask;->isCancelled()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1439
    return-object v5

    #@10
    .line 1435
    :catch_0
    move-exception v0

    #@11
    .line 1436
    .local v0, "e":Ljava/lang/InterruptedException;
    return-object v5

    #@12
    .line 1441
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1442
    const-string/jumbo v2, "TvInputService"

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "Time out on releasing overlay view. Killing "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 1443
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 1442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1444
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3d
    move-result v2

    #@3e
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    #@41
    .line 1446
    :cond_1
    return-object v5
.end method
