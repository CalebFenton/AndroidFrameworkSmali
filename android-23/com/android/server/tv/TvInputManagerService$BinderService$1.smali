.class Lcom/android/server/tv/TvInputManagerService$BinderService$1;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService$BinderService;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

.field final synthetic val$callback:Landroid/media/tv/ITvInputManagerCallback;

.field final synthetic val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/tv/TvInputManagerService$BinderService;
    .param p2, "val$userState"    # Lcom/android/server/tv/TvInputManagerService$UserState;
    .param p3, "val$callback"    # Landroid/media/tv/ITvInputManagerCallback;

    #@0
    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

    #@2
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    #@4
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$callback:Landroid/media/tv/ITvInputManagerCallback;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

    #@2
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@4
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    #@b
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 865
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    #@13
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get0(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$callback:Landroid/media/tv/ITvInputManagerCallback;

    #@19
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :cond_0
    monitor-exit v1

    #@1d
    .line 862
    return-void

    #@1e
    .line 863
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method
