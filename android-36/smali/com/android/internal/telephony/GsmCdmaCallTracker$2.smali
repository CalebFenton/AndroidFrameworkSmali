.class Lcom/android/internal/telephony/GsmCdmaCallTracker$2;
.super Ljava/lang/Object;
.source "GsmCdmaCallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialCdma(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

.field final synthetic blacklist val$finalClirMode:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;I)V
    .registers 3
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

    .line 503
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iput p2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->val$finalClirMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v3

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hasKnownUserIntentEmergency()Z

    move-result v5

    iget v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->val$finalClirMode:I

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 509
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-$$Nest$mobtainCompleteMessage(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Landroid/os/Message;

    move-result-object v7

    .line 506
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    return-void
.end method
