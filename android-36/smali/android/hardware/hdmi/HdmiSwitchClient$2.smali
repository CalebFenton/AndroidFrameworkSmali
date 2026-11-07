.class Landroid/hardware/hdmi/HdmiSwitchClient$2;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiSwitchClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiSwitchClient;->selectDevice(ILjava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiSwitchClient;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/hdmi/HdmiSwitchClient;
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

    .line 117
    iput-object p2, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$0(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V
    .registers 2
    .param p0, "listener"    # Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;
    .param p1, "result"    # I

    .line 121
    invoke-interface {p0, p1}, Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;->onSelect(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$1(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V
    .registers 4
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/hardware/hdmi/HdmiSwitchClient$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiSwitchClient$2$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .registers 5
    .param p1, "result"    # I

    .line 120
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiSwitchClient$2;->val$listener:Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;

    new-instance v2, Landroid/hardware/hdmi/HdmiSwitchClient$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1}, Landroid/hardware/hdmi/HdmiSwitchClient$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiSwitchClient$OnSelectListener;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 122
    return-void
.end method
