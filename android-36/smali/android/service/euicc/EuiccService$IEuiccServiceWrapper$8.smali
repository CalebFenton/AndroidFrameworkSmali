.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

.field final synthetic blacklist val$slotId:I


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .registers 4
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
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

    .line 998
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1001
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$slotId:I

    invoke-virtual {v0, v1}, Landroid/service/euicc/EuiccService;->onGetEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v0

    .line 1003
    .local v0, "euiccInfo":Landroid/telephony/euicc/EuiccInfo;
    :try_start_a
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IGetEuiccInfoCallback;->onSuccess(Landroid/telephony/euicc/EuiccInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 1006
    goto :goto_11

    .line 1004
    :catch_10
    move-exception v1

    .line 1007
    :goto_11
    return-void
.end method
