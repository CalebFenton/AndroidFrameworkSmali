.class Lcom/android/server/BluetoothService;
.super Lcom/android/server/SystemService;
.source "BluetoothService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothService"


# instance fields
.field private mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 29
    new-instance v0, Lcom/android/server/BluetoothManagerService;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    #@a
    .line 27
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 40
    const/16 v0, 0x1f4

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 41
    const-string/jumbo v0, "BluetoothService"

    #@7
    const-string/jumbo v1, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 42
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    #@f
    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->handleOnBootPhase()V

    #@12
    .line 39
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "BluetoothService"

    #@3
    const-string/jumbo v1, "onStart: publishing BluetoothManagerService"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 35
    const-string/jumbo v0, "bluetooth_manager"

    #@c
    iget-object v1, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    #@e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BluetoothService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@11
    .line 33
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, "BluetoothService"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "onSwitchUser: switching to user "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 49
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    #@1c
    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService;->handleOnSwitchUser(I)V

    #@1f
    .line 47
    return-void
.end method
