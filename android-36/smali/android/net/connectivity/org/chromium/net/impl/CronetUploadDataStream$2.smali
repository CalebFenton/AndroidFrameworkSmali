.class Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;
.super Ljava/lang/Object;
.source "CronetUploadDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->rewind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;


# direct methods
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

    .line 151
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 154
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmLock(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 155
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmUploadDataStreamAdapter(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 156
    monitor-exit v0

    return-void

    .line 158
    :cond_15
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$mcheckState(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;I)V

    .line 159
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fputmInWhichUserCallback(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;I)V

    .line 160
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_3a

    .line 162
    :try_start_22
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$mcheckCallingThread(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)V

    .line 163
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$fgetmDataProvider(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;)Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    .line 166
    goto :goto_39

    .line 164
    :catch_33
    move-exception v0

    .line 165
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream$2;->this$0:Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;->-$$Nest$monError(Landroid/net/connectivity/org/chromium/net/impl/CronetUploadDataStream;Ljava/lang/Throwable;)V

    .line 167
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_39
    return-void

    .line 160
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method
