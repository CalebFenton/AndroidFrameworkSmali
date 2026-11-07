.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;
.super Ljava/lang/Object;
.source "MbmsDownloadServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

.field final synthetic blacklist val$listener:Landroid/telephony/mbms/IDownloadProgressListener;

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)V
    .registers 5
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
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

    .line 413
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$uid:I

    iput-object p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    iput-object p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$listener:Landroid/telephony/mbms/IDownloadProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 416
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$uid:I

    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 417
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->-$$Nest$fgetmDownloadProgressListenerBinderMap(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$listener:Landroid/telephony/mbms/IDownloadProgressListener;

    invoke-interface {v1}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->-$$Nest$fgetmDownloadCallbackDeathRecipients(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$6;->val$listener:Landroid/telephony/mbms/IDownloadProgressListener;

    invoke-interface {v1}, Landroid/telephony/mbms/IDownloadProgressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method
