.class Lcom/android/server/dreams/DreamManagerService$1;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/server/dreams/DreamController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    #@0
    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDreamStopped(Landroid/os/Binder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/Binder;

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get5(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get4(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;

    #@c
    move-result-object v0

    #@d
    if-ne v0, p1, :cond_0

    #@f
    .line 446
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$1;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #@11
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 443
    return-void

    #@16
    .line 444
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method
