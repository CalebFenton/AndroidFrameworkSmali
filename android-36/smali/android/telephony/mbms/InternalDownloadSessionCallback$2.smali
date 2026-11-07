.class Landroid/telephony/mbms/InternalDownloadSessionCallback$2;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field final synthetic blacklist val$services:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->val$services:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 67
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;->val$services:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V

    .line 68
    return-void
.end method
