.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;
.super Ljava/lang/Object;
.source "MbmsDownloadServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic blacklist val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic blacklist val$listener:Landroid/telephony/mbms/IDownloadStatusListener;

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;ILandroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)V
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

    .line 300
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$uid:I

    iput-object p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    iput-object p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$listener:Landroid/telephony/mbms/IDownloadStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 303
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$uid:I

    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 304
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->-$$Nest$fgetmDownloadStatusListenerBinderMap(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$listener:Landroid/telephony/mbms/IDownloadStatusListener;

    invoke-interface {v1}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    invoke-static {v0}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->-$$Nest$fgetmDownloadCallbackDeathRecipients(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$listener:Landroid/telephony/mbms/IDownloadStatusListener;

    invoke-interface {v1}, Landroid/telephony/mbms/IDownloadStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method
