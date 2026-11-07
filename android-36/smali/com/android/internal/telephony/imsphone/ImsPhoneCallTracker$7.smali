.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field final synthetic blacklist val$dialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

.field final synthetic blacklist val$finalClirMode:I

.field final synthetic blacklist val$finalVideoState:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;IILcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1791
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->val$finalClirMode:I

    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->val$finalVideoState:I

    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->val$dialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 1794
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->val$finalClirMode:I

    iget v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->val$finalVideoState:I

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$7;->val$dialArgs:Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    iget v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailCause:I

    iget v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailNetworkType:I

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mdialInternal(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;IIIILandroid/os/Bundle;)V

    return-void
.end method
