.class Landroid/app/ActivityThread$2;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;
    .param p2, "val$mgr"    # Landroid/app/IActivityManager;

    #@0
    .prologue
    .line 5250
    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    #@2
    iput-object p2, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    #@0
    .prologue
    .line 5252
    iget-object v6, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    #@2
    iget-boolean v6, v6, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@4
    if-nez v6, :cond_0

    #@6
    .line 5253
    return-void

    #@7
    .line 5255
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@a
    move-result-object v5

    #@b
    .line 5256
    .local v5, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    #@e
    move-result-wide v0

    #@f
    .line 5257
    .local v0, "dalvikMax":J
    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    #@12
    move-result-wide v6

    #@13
    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    #@16
    move-result-wide v8

    #@17
    sub-long v2, v6, v8

    #@19
    .line 5258
    .local v2, "dalvikUsed":J
    const-wide/16 v6, 0x3

    #@1b
    mul-long/2addr v6, v0

    #@1c
    const-wide/16 v8, 0x4

    #@1e
    div-long/2addr v6, v8

    #@1f
    cmp-long v6, v2, v6

    #@21
    if-lez v6, :cond_1

    #@23
    .line 5262
    iget-object v6, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    #@25
    const/4 v7, 0x0

    #@26
    iput-boolean v7, v6, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    #@28
    .line 5264
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    #@2a
    iget-object v7, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    #@2c
    iget-object v7, v7, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    #@2e
    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 5251
    :cond_1
    :goto_0
    return-void

    #@32
    .line 5265
    :catch_0
    move-exception v4

    #@33
    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
