.class Lcom/android/internal/os/BatteryStatsImpl$4;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$parcel:Landroid/os/Parcel;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "val$parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 8218
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

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
    .line 8220
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@2
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@4
    monitor-enter v3

    #@5
    .line 8221
    const/4 v1, 0x0

    #@6
    .line 8223
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@8
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@a
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@d
    move-result-object v1

    #@e
    .line 8224
    .local v1, "stream":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    #@10
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    #@17
    .line 8225
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    #@1a
    .line 8226
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@1d
    .line 8227
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    #@20
    .line 8228
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@22
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@24
    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@27
    .line 8234
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    #@29
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    monitor-exit v3

    #@2d
    .line 8219
    return-void

    #@2e
    .line 8229
    :catch_0
    move-exception v0

    #@2f
    .line 8230
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v2, "BatteryStats"

    #@32
    .line 8231
    const-string/jumbo v4, "Error writing checkin battery statistics"

    #@35
    .line 8230
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    .line 8232
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    #@3a
    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    #@3c
    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3f
    .line 8234
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    #@41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 8220
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    #@46
    monitor-exit v3

    #@47
    throw v2

    #@48
    .line 8233
    :catchall_1
    move-exception v2

    #@49
    .line 8234
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    #@4b
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@4e
    .line 8233
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
