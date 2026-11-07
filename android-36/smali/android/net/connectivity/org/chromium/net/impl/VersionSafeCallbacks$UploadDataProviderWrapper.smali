.class public final Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;
.super Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadDataProviderWrapper"
.end annotation


# instance fields
.field private final blacklist mWrappedProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UploadDataProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    .line 153
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    .line 155
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;->close()V

    .line 175
    return-void
.end method

.method public blacklist getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;->read(Landroid/net/connectivity/org/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 165
    return-void
.end method

.method public blacklist rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V
    .registers 3
    .param p1, "uploadDataSink"    # Landroid/net/connectivity/org/chromium/net/UploadDataSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UploadDataProviderWrapper;->mWrappedProvider:Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/UploadDataProvider;->rewind(Landroid/net/connectivity/org/chromium/net/UploadDataSink;)V

    .line 170
    return-void
.end method
