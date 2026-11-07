.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;
.super Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic blacklist val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadProgressListener;ILandroid/telephony/mbms/DownloadRequest;)V
    .registers 5
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
    .param p2, "listener"    # Landroid/telephony/mbms/IDownloadProgressListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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

    .line 403
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;->val$uid:I

    iput-object p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-direct {p0, p2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$VendorDownloadProgressListener;-><init>(Landroid/telephony/mbms/IDownloadProgressListener;)V

    return-void
.end method


# virtual methods
.method protected blacklist onRemoteException(Landroid/os/RemoteException;)V
    .registers 5
    .param p1, "e"    # Landroid/os/RemoteException;

    .line 406
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;->val$uid:I

    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$5;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 407
    return-void
.end method
