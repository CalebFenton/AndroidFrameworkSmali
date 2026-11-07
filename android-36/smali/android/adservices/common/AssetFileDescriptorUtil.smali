.class public Landroid/adservices/common/AssetFileDescriptorUtil;
.super Ljava/lang/Object;
.source "AssetFileDescriptorUtil.java"


# static fields
.field private static final blacklist sLogger:Lcom/android/adservices/LoggerFactory$Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    invoke-static {}, Lcom/android/adservices/LoggerFactory;->getFledgeLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/common/AssetFileDescriptorUtil;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$setupAssetFileDescriptorResponse$0(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 5
    .param p0, "writeDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "buffer"    # [B

    .line 58
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 59
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_1a

    .line 60
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_9
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 61
    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1a

    .line 64
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_22

    .line 58
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_10
    move-exception v1

    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v2

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "writeDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "buffer":[B
    :goto_19
    throw v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1a

    .line 61
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "writeDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "buffer":[B
    :catch_1a
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Landroid/adservices/common/AssetFileDescriptorUtil;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v2, "Encountered IO Exception while writing byte array to stream."

    invoke-virtual {v1, v0, v2}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :goto_22
    return-void
.end method

.method public static blacklist readAssetFileDescriptorIntoBuffer(Landroid/content/res/AssetFileDescriptor;)[B
    .registers 5
    .param p0, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 81
    .local v0, "result":[B
    new-instance v1, Ljava/io/DataInputStream;

    .line 82
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 83
    .local v1, "inputStream":Ljava/io/DataInputStream;
    :try_start_13
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 84
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 86
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    return-object v0

    .line 81
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    :catchall_1a
    move-exception v2

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw v2
.end method

.method public static blacklist setupAssetFileDescriptorResponse([BLjava/util/concurrent/ExecutorService;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .param p0, "buffer"    # [B
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 54
    .local v0, "descriptors":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 56
    .local v1, "writeDescriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/adservices/common/AssetFileDescriptorUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Landroid/adservices/common/AssetFileDescriptorUtil$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;[B)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 66
    new-instance v3, Landroid/content/res/AssetFileDescriptor;

    const/4 v2, 0x0

    aget-object v4, v0, v2

    array-length v2, p0

    int-to-long v7, v2

    const-wide/16 v5, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v3
.end method
