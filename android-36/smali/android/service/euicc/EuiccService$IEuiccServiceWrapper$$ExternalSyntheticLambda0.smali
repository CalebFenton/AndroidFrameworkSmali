.class public final synthetic Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;->f$2:Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$$ExternalSyntheticLambda0;->f$2:Landroid/service/euicc/IGetAvailableMemoryInBytesCallback;

    invoke-static {v0, v1, v2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->$r8$lambda$Vn6K1w_q7wQ9V4xL31AD2Zi8NFc(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetAvailableMemoryInBytesCallback;)V

    return-void
.end method
