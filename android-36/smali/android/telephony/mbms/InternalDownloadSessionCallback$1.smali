.class Landroid/telephony/mbms/InternalDownloadSessionCallback$1;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field final synthetic blacklist val$errorCode:I

.field final synthetic blacklist val$message:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 45
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$errorCode:I

    iput-object p3, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 48
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$errorCode:I

    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V

    .line 49
    return-void
.end method
