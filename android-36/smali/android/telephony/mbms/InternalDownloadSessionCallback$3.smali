.class Landroid/telephony/mbms/InternalDownloadSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onMiddlewareReady()V

    .line 87
    return-void
.end method
