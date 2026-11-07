.class public final synthetic Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

    iput p3, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

    iget v2, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/hdmi/HdmiClient$1;->lambda$onComplete$1(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;II)V

    return-void
.end method
