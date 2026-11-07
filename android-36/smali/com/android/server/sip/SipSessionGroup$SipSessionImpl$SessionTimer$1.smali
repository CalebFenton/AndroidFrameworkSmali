.class Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

.field final synthetic blacklist val$timeout:I


# direct methods
.method constructor blacklist <init>(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V
    .registers 3
    .param p1, "this$2"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;
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

    .line 563
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    iget v1, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->val$timeout:I

    invoke-static {v0, v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->-$$Nest$msleep(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;I)V

    .line 567
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->-$$Nest$fgetmRunning(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer$1;->this$2:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;

    invoke-static {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;->-$$Nest$mtimeout(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl$SessionTimer;)V

    .line 568
    :cond_14
    return-void
.end method
