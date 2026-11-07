.class final Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;
.super Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.source "UploadDataProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileUploadProvider"
.end annotation


# instance fields
.field private volatile blacklist mChannel:Ljava/nio/channels/FileChannel;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mProvider:Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;)V
    .registers 3
    .param p1, "provider"    # Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;

    .line 101
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mLock:Ljava/lang/Object;

    .line 102
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mProvider:Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;-><init>(Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;)V

    return-void
.end method

.method private blacklist getChannel()Ljava/nio/channels/FileChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_18

    .line 140
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_13

    .line 142
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mProvider:Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;

    invoke-interface {v1}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    .line 144
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 146
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->mChannel:Ljava/nio/channels/FileChannel;

    .line 152
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    if-eqz v0, :cond_7

    .line 153
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 155
    :cond_7
    return-void
.end method

.method public blacklist getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 115
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 116
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    const/4 v1, 0x0

    .line 117
    .local v1, "bytesRead":I
    :goto_b
    if-nez v1, :cond_17

    .line 118
    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 119
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 120
    goto :goto_17

    .line 122
    :cond_15
    add-int/2addr v1, v2

    .line 124
    .end local v2    # "read":I
    goto :goto_b

    .line 125
    :cond_17
    :goto_17
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 126
    return-void

    .line 113
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "bytesRead":I
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cronet passed a buffer with no bytes remaining"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    .registers 5
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 131
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onRewindSucceeded()V

    .line 132
    return-void
.end method
