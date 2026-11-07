.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;
.super Ljava/lang/Object;
.source "TvInteractiveAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyAdBufferReady(Landroid/media/tv/AdBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic blacklist val$buffer:Landroid/media/tv/AdBuffer;

.field final synthetic blacklist val$dupBuffer:Landroid/media/tv/AdBuffer;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdBuffer;Landroid/media/tv/AdBuffer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2138
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->val$buffer:Landroid/media/tv/AdBuffer;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 2147
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2148
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onAdBufferReady(Landroid/media/tv/AdBuffer;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_23
    .catchall {:try_start_0 .. :try_end_13} :catchall_21

    .line 2153
    :cond_13
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v0, :cond_31

    .line 2154
    :goto_17
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    invoke-virtual {v0}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    goto :goto_31

    .line 2153
    :catchall_21
    move-exception v0

    goto :goto_32

    .line 2150
    :catch_23
    move-exception v0

    .line 2151
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in notifyAdBuffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    .line 2153
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v0, :cond_31

    .line 2154
    goto :goto_17

    .line 2157
    :cond_31
    :goto_31
    return-void

    .line 2153
    :goto_32
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    if-eqz v1, :cond_3f

    .line 2154
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$23;->val$dupBuffer:Landroid/media/tv/AdBuffer;

    invoke-virtual {v1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 2156
    :cond_3f
    throw v0
.end method
