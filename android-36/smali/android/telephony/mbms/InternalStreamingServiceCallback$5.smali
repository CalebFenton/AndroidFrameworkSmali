.class Landroid/telephony/mbms/InternalStreamingServiceCallback$5;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onStreamMethodUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field final synthetic blacklist val$methodType:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;
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

    .line 120
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->val$methodType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->-$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$5;->val$methodType:I

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/StreamingServiceCallback;->onStreamMethodUpdated(I)V

    .line 124
    return-void
.end method
