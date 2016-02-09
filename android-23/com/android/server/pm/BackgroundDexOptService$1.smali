.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p4, "val$pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p5, "val$jobParams"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    .line 79
    .local p3, "val$pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@2
    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Landroid/util/ArraySet;

    #@4
    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    #@6
    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    #@8
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Landroid/util/ArraySet;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_2

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 83
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@14
    iget-object v2, v2, Lcom/android/server/pm/BackgroundDexOptService;->mIdleTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_1

    #@1c
    .line 85
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@1e
    const-wide/16 v4, 0x0

    #@20
    invoke-static {v2, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V

    #@23
    .line 86
    return-void

    #@24
    .line 88
    :cond_1
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@26
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-nez v2, :cond_0

    #@2c
    .line 92
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    #@2e
    const/4 v3, 0x0

    #@2f
    const/4 v4, 0x1

    #@30
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@33
    move-result v2

    #@34
    if-nez v2, :cond_0

    #@36
    .line 95
    sget-object v2, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNames:Landroid/util/ArraySet;

    #@38
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@3b
    goto :goto_0

    #@3c
    .line 99
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@3e
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    #@40
    const/4 v4, 0x0

    #@41
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    #@44
    .line 81
    return-void
.end method
