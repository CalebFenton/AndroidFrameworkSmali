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
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 189
    iput-object p1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    #@5
    .line 190
    iput-object p2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    #@7
    .line 191
    iput-object p3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    #@9
    .line 188
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    #@0
    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    #@3
    .line 194
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 200
    iget-object v0, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mClient:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    #@6
    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$OnScanCompletedListener;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    #@9
    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScannerConnection$ClientProxy;->scanNextPath()V

    #@c
    .line 198
    return-void
.end method

.method scanNextPath()V
    .locals 4

    #@0
    .prologue
    .line 206
    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@2
    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 207
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    #@9
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    #@c
    .line 208
    return-void

    #@d
    .line 210
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mMimeTypes:[Ljava/lang/String;

    #@13
    iget v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@15
    aget-object v0, v1, v2

    #@17
    .line 211
    :goto_0
    iget-object v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    #@19
    iget-object v2, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mPaths:[Ljava/lang/String;

    #@1b
    iget v3, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@1d
    aget-object v2, v2, v3

    #@1f
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 212
    iget v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    iput v1, p0, Landroid/media/MediaScannerConnection$ClientProxy;->mNextPath:I

    #@28
    .line 205
    return-void

    #@29
    .line 210
    :cond_1
    const/4 v0, 0x0

    #@2a
    .local v0, "mimeType":Ljava/lang/String;
    goto :goto_0
.end method
