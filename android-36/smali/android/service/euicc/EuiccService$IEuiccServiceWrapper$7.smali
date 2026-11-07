.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

.field final synthetic blacklist val$slotId:I


# direct methods
.method constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
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

    .line 982
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$callback:Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 985
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$slotId:I

    .line 986
    invoke-virtual {v0, v1}, Landroid/service/euicc/EuiccService;->onGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;

    move-result-object v0

    .line 988
    .local v0, "result":Landroid/service/euicc/GetEuiccProfileInfoListResult;
    :try_start_a
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;->val$callback:Landroid/service/euicc/IGetEuiccProfileInfoListCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IGetEuiccProfileInfoListCallback;->onComplete(Landroid/service/euicc/GetEuiccProfileInfoListResult;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 991
    goto :goto_11

    .line 989
    :catch_10
    move-exception v1

    .line 992
    :goto_11
    return-void
.end method
