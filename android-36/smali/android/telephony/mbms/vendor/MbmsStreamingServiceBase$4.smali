.class Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;
.super Ljava/lang/Object;
.source "MbmsStreamingServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

.field final synthetic blacklist val$subscriptionId:I

.field final synthetic blacklist val$uid:I


# direct methods
.method constructor blacklist <init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;
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

    .line 227
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iput p2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 230
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$uid:I

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;->val$subscriptionId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->onAppCallbackDied(II)V

    .line 231
    return-void
.end method
