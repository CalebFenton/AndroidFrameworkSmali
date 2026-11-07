.class public final synthetic Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

    iput p2, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

    iget v1, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/hdmi/HdmiClient$1;->lambda$onComplete$0(Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;II)V

    return-void
.end method
