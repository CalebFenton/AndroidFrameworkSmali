.class Lcom/android/server/MountServiceIdler$1;
.super Ljava/lang/Object;
.source "MountServiceIdler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountServiceIdler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountServiceIdler;


# direct methods
.method constructor <init>(Lcom/android/server/MountServiceIdler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountServiceIdler;

    #@0
    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 44
    const-string/jumbo v0, "MountServiceIdler"

    #@3
    const-string/jumbo v1, "Got mount service completion callback"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 45
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    #@b
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->-get0(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    #@12
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->-get2(Lcom/android/server/MountServiceIdler;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 47
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    #@1a
    iget-object v2, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    #@1c
    invoke-static {v2}, Lcom/android/server/MountServiceIdler;->-get1(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;

    #@1f
    move-result-object v2

    #@20
    const/4 v3, 0x0

    #@21
    invoke-virtual {v0, v2, v3}, Lcom/android/server/MountServiceIdler;->jobFinished(Landroid/app/job/JobParameters;Z)V

    #@24
    .line 48
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    #@26
    const/4 v2, 0x0

    #@27
    invoke-static {v0, v2}, Lcom/android/server/MountServiceIdler;->-set0(Lcom/android/server/MountServiceIdler;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :cond_0
    monitor-exit v1

    #@2b
    .line 52
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    #@2d
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    #@30
    .line 43
    return-void

    #@31
    .line 45
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0
.end method
