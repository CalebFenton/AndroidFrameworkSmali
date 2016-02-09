.class final Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDevicesChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/IInputDevicesChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    #@0
    .prologue
    .line 1734
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1735
    iput p2, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    #@7
    .line 1736
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    #@9
    .line 1734
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    #@2
    iget v1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    #@4
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-wrap5(Lcom/android/server/input/InputManagerService;I)V

    #@7
    .line 1740
    return-void
.end method

.method public notifyInputDevicesChanged([I)V
    .locals 4
    .param p1, "info"    # [I

    #@0
    .prologue
    .line 1749
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    #@2
    invoke-interface {v1, p1}, Landroid/hardware/input/IInputDevicesChangedListener;->onInputDevicesChanged([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1747
    :goto_0
    return-void

    #@6
    .line 1750
    :catch_0
    move-exception v0

    #@7
    .line 1751
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "InputManager"

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Failed to notify process "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 1752
    iget v3, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    #@18
    .line 1751
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 1752
    const-string/jumbo v3, " that input devices changed, assuming it died."

    #@1f
    .line 1751
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2a
    .line 1753
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->binderDied()V

    #@2d
    goto :goto_0
.end method
