.class public final Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;
.super Ljava/lang/Object;
.source "UploadDataProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;,
        Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;,
        Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Landroid/os/ParcelFileDescriptor;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 4
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 44
    new-instance v0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$2;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$2;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;-><init>(Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders-IA;)V

    return-object v0
.end method

.method public static blacklist create(Ljava/io/File;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 27
    new-instance v0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$1;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$1;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileUploadProvider;-><init>(Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders-IA;)V

    return-object v0
.end method

.method public static blacklist create(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 65
    new-instance v0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;-><init>(Ljava/nio/ByteBuffer;Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders-IA;)V

    return-object v0
.end method

.method public static blacklist create([B)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 3
    .param p0, "data"    # [B

    .line 87
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;->create([BII)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create([BII)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 77
    new-instance v0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$ByteBufferUploadProvider;-><init>(Ljava/nio/ByteBuffer;Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders-IA;)V

    return-object v0
.end method
