.class Landroid/telephony/mbms/InternalStreamingServiceCallback$3;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onMediaDescriptionUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/mbms/StreamingServiceCallback;->onMediaDescriptionUpdated()V

    .line 86
    return-void
.end method
