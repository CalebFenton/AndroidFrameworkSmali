.class Landroid/hardware/hdmi/HdmiClient$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiClient;->getCallbackWrapper(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;)Landroid/hardware/hdmi/IHdmiControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

.field final synthetic blacklist val$logicalAddress:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;I)V
    .registers 4

    .line 84
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$listener:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

    iput p3, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$logicalAddress:I

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$0(Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;II)V
    .registers 3
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;
    .param p1, "result"    # I
    .param p2, "logicalAddress"    # I

    .line 88
    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;->onDeviceSelected(II)V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$1(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;II)V
    .registers 5
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;
    .param p2, "result"    # I
    .param p3, "logicalAddress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    new-instance v0, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;II)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .registers 6
    .param p1, "result"    # I

    .line 87
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$listener:Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;

    iget v2, p0, Landroid/hardware/hdmi/HdmiClient$1;->val$logicalAddress:I

    new-instance v3, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, p1, v2}, Landroid/hardware/hdmi/HdmiClient$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;II)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 90
    return-void
.end method
