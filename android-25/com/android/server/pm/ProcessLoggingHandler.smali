.class public final Lcom/android/server/pm/ProcessLoggingHandler;
.super Landroid/os/Handler;
.source "ProcessLoggingHandler.java"


# static fields
.field static final INVALIDATE_BASE_APK_HASH_MSG:I = 0x2

.field static final LOG_APP_PROCESS_START_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessLoggingHandler"


# instance fields
.field private final mProcessLoggingBaseApkHashes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@b
    .line 41
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    #@12
    .line 43
    return-void
.end method

.method private computeHashOfApkFile(Ljava/lang/String;)[B
    .locals 6
    .param p1, "packageArchiveLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 102
    const-string/jumbo v4, "SHA-256"

    #@4
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@7
    move-result-object v2

    #@8
    .line 103
    .local v2, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/FileInputStream;

    #@a
    new-instance v4, Ljava/io/File;

    #@c
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@12
    .line 104
    .local v1, "input":Ljava/io/FileInputStream;
    const/high16 v4, 0x10000

    #@14
    new-array v0, v4, [B

    #@16
    .line 106
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    #@19
    move-result v3

    #@1a
    .local v3, "size":I
    if-lez v3, :cond_0

    #@1c
    .line 107
    invoke-virtual {v2, v0, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    #@1f
    goto :goto_0

    #@20
    .line 109
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    #@23
    .line 110
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    #@26
    move-result-object v4

    #@27
    return-object v4
.end method

.method private computeStringHashOfApk(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "apkFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    if-nez p1, :cond_0

    #@2
    .line 81
    const-string/jumbo v5, "No APK"

    #@5
    return-object v5

    #@6
    .line 83
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    #@8
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    .line 84
    .local v0, "apkHash":Ljava/lang/String;
    if-nez v0, :cond_2

    #@10
    .line 86
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->computeHashOfApkFile(Ljava/lang/String;)[B

    #@13
    move-result-object v2

    #@14
    .line 87
    .local v2, "hash":[B
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    .line 88
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@1a
    .local v3, "i":I
    :goto_0
    array-length v5, v2

    #@1b
    if-ge v3, v5, :cond_1

    #@1d
    .line 89
    const-string/jumbo v5, "%02x"

    #@20
    const/4 v6, 0x1

    #@21
    new-array v6, v6, [Ljava/lang/Object;

    #@23
    aget-byte v7, v2, v3

    #@25
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@28
    move-result-object v7

    #@29
    const/4 v8, 0x0

    #@2a
    aput-object v7, v6, v8

    #@2c
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 88
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 91
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    .line 92
    iget-object v5, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    #@3c
    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 97
    .end local v2    # "hash":[B
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    #@41
    .end local v0    # "apkHash":Ljava/lang/String;
    :goto_2
    return-object v0

    #@42
    .line 93
    .restart local v0    # "apkHash":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@43
    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ProcessLoggingHandler"

    #@46
    const-string/jumbo v6, "computeStringHashOfApk() failed"

    #@49
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    goto :goto_1

    #@4d
    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v0, "Failed to count APK hash"

    #@50
    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 49
    iget v9, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v9, :pswitch_data_0

    #@5
    .line 48
    :goto_0
    return-void

    #@6
    .line 51
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@9
    move-result-object v2

    #@a
    .line 52
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "processName"

    #@d
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 53
    .local v4, "processName":Ljava/lang/String;
    const-string/jumbo v9, "uid"

    #@14
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@17
    move-result v8

    #@18
    .line 54
    .local v8, "uid":I
    const-string/jumbo v9, "seinfo"

    #@1b
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 55
    .local v5, "seinfo":Ljava/lang/String;
    const-string/jumbo v9, "apkFile"

    #@22
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 56
    .local v0, "apkFile":Ljava/lang/String;
    const-string/jumbo v9, "pid"

    #@29
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@2c
    move-result v3

    #@2d
    .line 57
    .local v3, "pid":I
    const-string/jumbo v9, "startTimestamp"

    #@30
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@33
    move-result-wide v6

    #@34
    .line 58
    .local v6, "startTimestamp":J
    invoke-direct {p0, v0}, Lcom/android/server/pm/ProcessLoggingHandler;->computeStringHashOfApk(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 59
    .local v1, "apkHash":Ljava/lang/String;
    const/4 v9, 0x6

    #@39
    new-array v9, v9, [Ljava/lang/Object;

    #@3b
    const/4 v10, 0x0

    #@3c
    aput-object v4, v9, v10

    #@3e
    .line 60
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@41
    move-result-object v10

    #@42
    const/4 v11, 0x1

    #@43
    aput-object v10, v9, v11

    #@45
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v10

    #@49
    const/4 v11, 0x2

    #@4a
    aput-object v10, v9, v11

    #@4c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v10

    #@50
    const/4 v11, 0x3

    #@51
    aput-object v10, v9, v11

    #@53
    const/4 v10, 0x4

    #@54
    aput-object v5, v9, v10

    #@56
    const/4 v10, 0x5

    #@57
    aput-object v1, v9, v10

    #@59
    .line 59
    const v10, 0x33455

    #@5c
    invoke-static {v10, v9}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    #@5f
    goto :goto_0

    #@60
    .line 64
    .end local v0    # "apkFile":Ljava/lang/String;
    .end local v1    # "apkHash":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "pid":I
    .end local v4    # "processName":Ljava/lang/String;
    .end local v5    # "seinfo":Ljava/lang/String;
    .end local v6    # "startTimestamp":J
    .end local v8    # "uid":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@63
    move-result-object v2

    #@64
    .line 65
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v9, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    #@66
    const-string/jumbo v10, "apkFile"

    #@69
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v10

    #@6d
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    goto :goto_0

    #@71
    .line 49
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method invalidateProcessLoggingBaseApkHash(Ljava/lang/String;)V
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 73
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "apkFile"

    #@8
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 74
    const/4 v2, 0x2

    #@c
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ProcessLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    #@f
    move-result-object v1

    #@10
    .line 75
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@13
    .line 76
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ProcessLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 71
    return-void
.end method
