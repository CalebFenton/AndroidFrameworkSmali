.class final Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;
.super Landroid/os/AsyncTask;
.source "TvAdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaViewCleanUpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/view/View;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 914
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/ad/TvAdService-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 914
    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;->doInBackground([Landroid/view/View;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Landroid/view/View;)Ljava/lang/Void;
    .registers 6
    .param p1, "views"    # [Landroid/view/View;

    .line 917
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 919
    .local v0, "mediaViewParent":Landroid/view/View;
    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    :try_start_6
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_3f

    .line 922
    nop

    .line 923
    invoke-virtual {p0}, Landroid/media/tv/ad/TvAdService$MediaViewCleanUpTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 924
    return-object v3

    .line 926
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time out on releasing media view. Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 927
    const-string v2, "TvAdService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 931
    :cond_3e
    return-object v3

    .line 920
    :catch_3f
    move-exception v1

    .line 921
    .local v1, "e":Ljava/lang/InterruptedException;
    return-object v3
.end method
