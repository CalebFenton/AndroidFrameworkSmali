.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$lowBatteryThreshold:I

.field final synthetic val$lowThreshold:J

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/util/ArraySet;IJLcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p4, "val$lowBatteryThreshold"    # I
    .param p5, "val$lowThreshold"    # J
    .param p7, "val$pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p8, "val$jobParams"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    .line 145
    .local p3, "val$pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@2
    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Landroid/util/ArraySet;

    #@4
    iput p4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$lowBatteryThreshold:I

    #@6
    iput-wide p5, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$lowThreshold:J

    #@8
    iput-object p7, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    #@a
    iput-object p8, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    #@c
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 148
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pkgs:Landroid/util/ArraySet;

    #@3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;

    #@13
    .line 149
    .local v0, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@15
    iget-object v4, v4, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 151
    return-void

    #@1e
    .line 153
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@20
    iget-object v4, v4, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@22
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_2

    #@28
    .line 187
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@2a
    iget-object v5, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$jobParams:Landroid/app/job/JobParameters;

    #@2c
    invoke-virtual {v4, v5, v7}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    #@2f
    .line 147
    return-void

    #@30
    .line 157
    .restart local v0    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@32
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->-wrap0(Lcom/android/server/pm/BackgroundDexOptService;)I

    #@35
    move-result v4

    #@36
    iget v5, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$lowBatteryThreshold:I

    #@38
    if-lt v4, v5, :cond_1

    #@3a
    .line 161
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    #@3c
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->-get0(Lcom/android/server/pm/BackgroundDexOptService;)Ljava/io/File;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    #@43
    move-result-wide v2

    #@44
    .line 162
    .local v2, "usableSpace":J
    iget-wide v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$lowThreshold:J

    #@46
    cmp-long v4, v2, v4

    #@48
    if-gez v4, :cond_3

    #@4a
    .line 164
    const-string/jumbo v4, "BackgroundDexOptService"

    #@4d
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v6, "Aborting background dex opt job due to low storage: "

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    goto :goto_1

    #@65
    .line 181
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    #@67
    .line 183
    const/4 v5, 0x1

    #@68
    .line 181
    invoke-virtual {v4, v0, v7, v5, v7}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Ljava/lang/String;ZIZ)Z

    #@6b
    goto :goto_0
.end method
