.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->switchToSubscription(IILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

.field final synthetic blacklist val$forceDeactivateSim:Z

.field final synthetic blacklist val$iccid:Ljava/lang/String;

.field final synthetic blacklist val$portIndex:I

.field final synthetic blacklist val$slotId:I

.field final synthetic blacklist val$usePortIndex:Z


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ZIILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
    .registers 8
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 1031
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput-boolean p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$usePortIndex:Z

    iput p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iput p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$portIndex:I

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$iccid:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$forceDeactivateSim:Z

    iput-object p7, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "result":I
    iget-boolean v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$usePortIndex:Z

    if-eqz v1, :cond_16

    .line 1036
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v1, v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$portIndex:I

    iget-object v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$iccid:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$forceDeactivateSim:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/service/euicc/EuiccService;->onSwitchToSubscriptionWithPort(IILjava/lang/String;Z)I

    move-result v0

    goto :goto_24

    .line 1039
    :cond_16
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v1, v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$slotId:I

    iget-object v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$iccid:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$forceDeactivateSim:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/euicc/EuiccService;->onSwitchToSubscription(ILjava/lang/String;Z)I

    move-result v0

    .line 1043
    :goto_24
    :try_start_24
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;->val$callback:Landroid/service/euicc/ISwitchToSubscriptionCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/ISwitchToSubscriptionCallback;->onComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 1046
    goto :goto_2b

    .line 1044
    :catch_2a
    move-exception v1

    .line 1047
    :goto_2b
    return-void
.end method
