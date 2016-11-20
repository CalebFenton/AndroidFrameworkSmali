.class Lcom/android/server/wifi/WifiStateMachine$2;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1112
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@3
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get69(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6
    move-result-object v1

    #@7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    #@f
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    #@12
    move-result-object v3

    #@13
    .line 1113
    const-string/jumbo v4, "wifi_suspend_optimizations_enabled"

    #@16
    .line 1112
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    #@19
    move-result v2

    #@1a
    if-ne v2, v0, :cond_0

    #@1c
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1f
    .line 1111
    return-void

    #@20
    .line 1112
    :cond_0
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method
