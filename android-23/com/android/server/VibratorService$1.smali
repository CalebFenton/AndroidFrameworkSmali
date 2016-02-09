.class Lcom/android/server/VibratorService$1;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    #@0
    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    #@9
    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V

    #@c
    .line 415
    iget-object v0, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    #@e
    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 412
    return-void

    #@13
    .line 413
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method
