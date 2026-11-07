.class Landroid/hardware/thermal/V1_1/IThermal$Stub$2;
.super Ljava/lang/Object;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/V1_0/IThermal$getCpuUsagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/thermal/V1_1/IThermal$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/thermal/V1_1/IThermal$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/thermal/V1_1/IThermal$Stub;
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

    .line 610
    iput-object p2, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "status"    # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/thermal/V1_0/ThermalStatus;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/thermal/V1_0/CpuUsage;",
            ">;)V"
        }
    .end annotation

    .line 613
    .local p2, "cpuUsages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/thermal/V1_0/CpuUsage;>;"
    iget-object v0, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 614
    iget-object v0, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 615
    iget-object v0, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Landroid/hardware/thermal/V1_0/CpuUsage;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 616
    iget-object v0, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 617
    return-void
.end method
