.class Lcom/android/internal/os/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$memStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "val$memStream"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    .line 6959
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$memStream:Ljava/io/ByteArrayOutputStream;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 6962
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@4
    monitor-enter v3

    #@5
    .line 6963
    const/4 v1, 0x0

    #@6
    .line 6965
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@a
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v1

    #@e
    .line 6966
    .local v1, "stream":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->val$memStream:Ljava/io/ByteArrayOutputStream;

    #@10
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    #@13
    .line 6967
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    #@16
    .line 6968
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@19
    .line 6969
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    #@1c
    .line 6970
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@1e
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@20
    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    monitor-exit v3

    #@24
    .line 6961
    return-void

    #@25
    .line 6971
    :catch_0
    move-exception v0

    #@26
    .line 6972
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v2, "BatteryStats"

    #@29
    .line 6973
    const-string/jumbo v4, "Error writing battery daily items"

    #@2c
    .line 6972
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    .line 6974
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@31
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mDailyFile:Lcom/android/internal/os/AtomicFile;

    #@33
    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    goto :goto_0

    #@37
    .line 6962
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@38
    monitor-exit v3

    #@39
    throw v2
.end method
