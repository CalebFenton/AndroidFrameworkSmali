.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3$1;
.super Landroid/service/euicc/EuiccService$OtaStatusChangedCallback;
.source "EuiccService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$2:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;)V
    .registers 2
    .param p1, "this$2"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 898
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3$1;->this$2:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;

    invoke-direct {p0}, Landroid/service/euicc/EuiccService$OtaStatusChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onOtaStatusChanged(I)V
    .registers 3
    .param p1, "status"    # I

    .line 902
    :try_start_0
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3$1;->this$2:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$statusChangedCallback:Landroid/service/euicc/IOtaStatusChangedCallback;

    invoke-interface {v0, p1}, Landroid/service/euicc/IOtaStatusChangedCallback;->onOtaStatusChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 905
    goto :goto_9

    .line 903
    :catch_8
    move-exception v0

    .line 906
    :goto_9
    return-void
.end method
