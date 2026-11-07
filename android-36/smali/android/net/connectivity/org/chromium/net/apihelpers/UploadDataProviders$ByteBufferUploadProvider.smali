.class final Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;
.super Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.source "UploadDataProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteBufferUploadProvider"
.end annotation


# instance fields
.field private final blacklist mUploadBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "uploadBuffer"    # Ljava/nio/ByteBuffer;

    .line 161
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    .line 163
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/ByteBuffer;Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public blacklist getLength()J
    .registers 3

    .line 167
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 175
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v0, v1, :cond_18

    .line 176
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_38

    .line 178
    :cond_18
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 179
    .local v0, "oldLimit":I
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 181
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 183
    .end local v0    # "oldLimit":I
    :goto_38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 184
    return-void

    .line 173
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cronet passed a buffer with no bytes remaining"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    .registers 4
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;

    .line 188
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;->mUploadBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/UploadDataSink;->onRewindSucceeded()V

    .line 190
    return-void
.end method
