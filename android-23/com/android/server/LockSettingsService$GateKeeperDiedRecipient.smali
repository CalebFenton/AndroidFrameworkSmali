.class Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GateKeeperDiedRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    #@0
    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;)V

    #@3
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get1(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@e
    .line 779
    iget-object v0, p0, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;->this$0:Lcom/android/server/LockSettingsService;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-static {v0, v1}, Lcom/android/server/LockSettingsService;->-set0(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;

    #@14
    .line 777
    return-void
.end method
