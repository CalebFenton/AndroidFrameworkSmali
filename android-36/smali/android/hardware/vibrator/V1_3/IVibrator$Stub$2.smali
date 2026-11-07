.class Landroid/hardware/vibrator/V1_3/IVibrator$Stub$2;
.super Ljava/lang/Object;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/V1_1/IVibrator$perform_1_1Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/vibrator/V1_3/IVibrator$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/vibrator/V1_3/IVibrator$Stub;
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

    .line 823
    iput-object p2, p0, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(II)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "lengthMs"    # I

    .line 826
    iget-object v0, p0, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    iget-object v0, p0, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 828
    iget-object v0, p0, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 829
    iget-object v0, p0, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 830
    return-void
.end method
