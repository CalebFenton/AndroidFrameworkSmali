.class interface abstract Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;
.super Ljava/lang/Object;
.source "UploadDataProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FileChannelProvider"
.end annotation


# virtual methods
.method public abstract blacklist getChannel()Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
