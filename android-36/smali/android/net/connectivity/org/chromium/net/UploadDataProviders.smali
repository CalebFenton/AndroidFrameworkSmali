.class public final Landroid/net/connectivity/org/chromium/net/UploadDataProviders;
.super Ljava/lang/Object;
.source "UploadDataProviders.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Landroid/os/ParcelFileDescriptor;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 2
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 37
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;->create(Landroid/os/ParcelFileDescriptor;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create(Ljava/io/File;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 26
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;->create(Ljava/io/File;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 47
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;->create(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create([B)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 2
    .param p0, "data"    # [B

    .line 69
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;->create([B)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create([BII)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 59
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;->create([BII)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;

    move-result-object v0

    return-object v0
.end method
