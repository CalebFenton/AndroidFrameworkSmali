.class Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;
.super Landroid/os/Handler;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/DefaultPermissionGrantPolicy;-><init>(Lcom/android/server/pm/PackageManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/DefaultPermissionGrantPolicy;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 171
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    #@7
    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-get1(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/PackageManagerService;

    #@a
    move-result-object v0

    #@b
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@d
    monitor-enter v1

    #@e
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    #@10
    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-get0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 173
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    #@18
    iget-object v2, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;->this$0:Lcom/android/server/pm/DefaultPermissionGrantPolicy;

    #@1a
    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-wrap0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->-set0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :cond_0
    monitor-exit v1

    #@22
    .line 169
    :cond_1
    return-void

    #@23
    .line 171
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method
