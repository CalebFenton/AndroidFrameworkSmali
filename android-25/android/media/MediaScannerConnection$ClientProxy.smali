.class Landroid/media/MediaScannerConnection$ClientProxy;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClientProxy"
.end annotation


# instance fields
.field final mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mConnection:Landroid/media/MediaScannerConnection;

.field final mMimeTypes:[Ljava/lang/String;

.field mNextPath:I

.field final mPaths:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 0
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 193
    iput-object p1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    #@5
    .line 194
    iput-object p2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    #@7
    .line 195
    iput-object p3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    #@9
    .line 192
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    #@3
    .line 198
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 204
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    #@9
    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    #@c
    .line 202
    return-void
.end method

.method scanNextPath()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 210
    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@3
    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    #@5
    array-length v2, v2

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 211
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    #@a
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    #@d
    .line 212
    iput-object v3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    #@f
    .line 213
    return-void

    #@10
    .line 215
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    #@12
    if-eqz v1, :cond_1

    #@14
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    #@16
    iget v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@18
    aget-object v0, v1, v2

    #@1a
    .line 216
    :goto_0
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    #@1c
    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    #@1e
    iget v3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@20
    aget-object v2, v2, v3

    #@22
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 217
    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    iput v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@2b
    .line 209
    return-void

    #@2c
    .line 215
    :cond_1
    const/4 v0, 0x0

    #@2d
    .local v0, "mimeType":Ljava/lang/String;
    goto :goto_0
.end method
