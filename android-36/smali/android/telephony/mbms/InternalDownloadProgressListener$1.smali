.class Landroid/telephony/mbms/InternalDownloadProgressListener$1;
.super Ljava/lang/Object;
.source "InternalDownloadProgressListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

.field final synthetic blacklist val$currentDecodedSize:I

.field final synthetic blacklist val$currentDownloadSize:I

.field final synthetic blacklist val$fileInfo:Landroid/telephony/mbms/FileInfo;

.field final synthetic blacklist val$fullDecodedSize:I

.field final synthetic blacklist val$fullDownloadSize:I

.field final synthetic blacklist val$request:Landroid/telephony/mbms/DownloadRequest;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalDownloadProgressListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .registers 8
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadProgressListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iput p4, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDownloadSize:I

    iput p5, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDownloadSize:I

    iput p6, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDecodedSize:I

    iput p7, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDecodedSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 51
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadProgressListener;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadProgressListener;->-$$Nest$fgetmAppListener(Landroid/telephony/mbms/InternalDownloadProgressListener;)Landroid/telephony/mbms/DownloadProgressListener;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iget-object v3, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iget v4, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDownloadSize:I

    iget v5, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDownloadSize:I

    iget v6, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$currentDecodedSize:I

    iget v7, p0, Landroid/telephony/mbms/InternalDownloadProgressListener$1;->val$fullDecodedSize:I

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/mbms/DownloadProgressListener;->onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    .line 53
    return-void
.end method
