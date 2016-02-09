.class Landroid/media/MediaScannerConnection$1;
.super Landroid/media/IMediaScannerListener$Stub;
.source "MediaScannerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScannerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>(Landroid/media/MediaScannerConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaScannerConnection;

    #@0
    .prologue
    .line 49
    iput-object p1, p0, Landroid/media/MediaScannerConnection$1;->this$0:Landroid/media/MediaScannerConnection;

    #@2
    invoke-direct {p0}, Landroid/media/IMediaScannerListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 51
    iget-object v1, p0, Landroid/media/MediaScannerConnection$1;->this$0:Landroid/media/MediaScannerConnection;

    #@2
    invoke-static {v1}, Landroid/media/MediaScannerConnection;->-get0(Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    #@5
    move-result-object v0

    #@6
    .line 52
    .local v0, "client":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    if-eqz v0, :cond_0

    #@8
    .line 53
    invoke-interface {v0, p1, p2}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    #@b
    .line 50
    :cond_0
    return-void
.end method
