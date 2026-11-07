.class Landroid/telephony/mbms/InternalStreamingSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalStreamingSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingSessionCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/mbms/MbmsStreamingSessionCallback;->onMiddlewareReady()V

    .line 88
    return-void
.end method
