.class Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$1;
.super Ljava/lang/Object;
.source "UploadDataProviders.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$FileChannelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders;->create(Ljava/io/File;)Landroid/net/connectivity/org/chromium/net/UploadDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$file:Ljava/io/File;


# direct methods
.method constructor blacklist <init>(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getChannel()Ljava/nio/channels/FileChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/apihelpers/UploadDataProviders$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method
