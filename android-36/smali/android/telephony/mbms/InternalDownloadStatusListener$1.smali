.class Landroid/telephony/mbms/InternalDownloadStatusListener$1;
.super Ljava/lang/Object;
.source "InternalDownloadStatusListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

.field final synthetic blacklist val$fileInfo:Landroid/telephony/mbms/FileInfo;

.field final synthetic blacklist val$request:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic blacklist val$status:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalDownloadStatusListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadStatusListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 47
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iput p4, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 50
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->this$0:Landroid/telephony/mbms/InternalDownloadStatusListener;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadStatusListener;->-$$Nest$fgetmAppListener(Landroid/telephony/mbms/InternalDownloadStatusListener;)Landroid/telephony/mbms/DownloadStatusListener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$request:Landroid/telephony/mbms/DownloadRequest;

    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$fileInfo:Landroid/telephony/mbms/FileInfo;

    iget v3, p0, Landroid/telephony/mbms/InternalDownloadStatusListener$1;->val$status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/mbms/DownloadStatusListener;->onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

    .line 51
    return-void
.end method
