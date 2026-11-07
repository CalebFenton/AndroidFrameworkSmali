.class Landroid/telephony/MbmsStreamingSession$1;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/MbmsStreamingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/MbmsStreamingSession;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/MbmsStreamingSession;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/MbmsStreamingSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession$1;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 79
    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$1;->this$0:Landroid/telephony/MbmsStreamingSession;

    const/4 v1, 0x3

    const-string v2, "Received death notification"

    invoke-static {v0, v1, v2}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    .line 81
    return-void
.end method
