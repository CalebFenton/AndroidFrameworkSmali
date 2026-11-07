.class Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;
.super Ljava/lang/Object;
.source "CronetUploadDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 61
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 62
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmUploadDataStreamAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 63
    monitor-exit v0

    return-void

    .line 65
    :cond_15
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$mcheckState(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;I)V

    .line 66
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmByteBuffer(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 70
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fputmInWhichUserCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;I)V

    .line 71
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_5a

    .line 73
    :try_start_2a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$mcheckCallingThread(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V

    .line 74
    nop

    .line 75
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmDataProvider(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmByteBuffer(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 76
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmReadCount(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4a} :catch_4b

    .line 79
    goto :goto_51

    .line 77
    :catch_4b
    move-exception v0

    .line 78
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$monError(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;Ljava/lang/Throwable;)V

    .line 80
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_51
    return-void

    .line 67
    :cond_52
    :try_start_52
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected readData call. Buffer is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;
    throw v1

    .line 71
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$1;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v1
.end method
