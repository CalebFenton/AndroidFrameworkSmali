.class public final Landroid/telecom/Connection$RttTextStream;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttTextStream"
.end annotation


# static fields
.field private static final greylist-max-o READ_BUFFER_SIZE:I = 0x3e8


# instance fields
.field private final greylist-max-o mFdFromInCall:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mFdToInCall:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mFromInCallFileInputStream:Ljava/io/FileInputStream;

.field private final greylist-max-o mPipeFromInCall:Ljava/io/InputStreamReader;

.field private final greylist-max-o mPipeToInCall:Ljava/io/OutputStreamWriter;

.field private greylist-max-o mReadBuffer:[C


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "toInCall"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "fromInCall"    # Landroid/os/ParcelFileDescriptor;

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    const/16 v0, 0x3e8

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mReadBuffer:[C

    .line 1316
    iput-object p2, p0, Landroid/telecom/Connection$RttTextStream;->mFdFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 1317
    iput-object p1, p0, Landroid/telecom/Connection$RttTextStream;->mFdToInCall:Landroid/os/ParcelFileDescriptor;

    .line 1318
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mFromInCallFileInputStream:Ljava/io/FileInputStream;

    .line 1321
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Landroid/telecom/Connection$RttTextStream;->mFromInCallFileInputStream:Ljava/io/FileInputStream;

    .line 1322
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeFromInCall:Ljava/io/InputStreamReader;

    .line 1323
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 1324
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeToInCall:Ljava/io/OutputStreamWriter;

    .line 1325
    return-void
.end method


# virtual methods
.method public greylist-max-o getFdFromInCall()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 1379
    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mFdFromInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public greylist-max-o getFdToInCall()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 1384
    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mFdToInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist read()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeFromInCall:Ljava/io/InputStreamReader;

    iget-object v1, p0, Landroid/telecom/Connection$RttTextStream;->mReadBuffer:[C

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    .line 1356
    .local v0, "numRead":I
    if-gez v0, :cond_f

    .line 1357
    const/4 v1, 0x0

    return-object v1

    .line 1359
    :cond_f
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/Connection$RttTextStream;->mReadBuffer:[C

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public whitelist readImmediately()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mFromInCallFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    if-lez v0, :cond_d

    .line 1371
    invoke-virtual {p0}, Landroid/telecom/Connection$RttTextStream;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1373
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist write(Ljava/lang/String;)V
    .registers 3
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeToInCall:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeToInCall:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1340
    return-void
.end method
