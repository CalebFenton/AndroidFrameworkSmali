.class Landroid/net/wifi/WifiManager$ActionListenerProxy;
.super Landroid/net/wifi/IActionListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionListenerProxy"
.end annotation


# instance fields
.field private final blacklist mActionTag:Ljava/lang/String;

.field private final blacklist mCallback:Landroid/net/wifi/WifiManager$ActionListener;

.field private final blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$EoavnEeoFia22MrukP_9zbmN6dA(Landroid/net/wifi/WifiManager$ActionListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->lambda$onSuccess$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_Te_iHARR8232ox5MI5Dc3lIoyQ(Landroid/net/wifi/WifiManager$ActionListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->lambda$onFailure$1(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ActionListener;)V
    .registers 5
    .param p2, "actionTag"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "callback"    # Landroid/net/wifi/WifiManager$ActionListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 7542
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/IActionListener$Stub;-><init>()V

    .line 7543
    iput-object p2, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    .line 7544
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    .line 7545
    iput-object p4, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/WifiManager$ActionListener;

    .line 7546
    return-void
.end method

.method private synthetic blacklist lambda$onFailure$1(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 7564
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    .line 7565
    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0()V
    .registers 2

    .line 7554
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    .line 7555
    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 7560
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionListenerProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7563
    :cond_2c
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiManager$ActionListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$ActionListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$ActionListenerProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7566
    return-void
.end method

.method public blacklist onSuccess()V
    .registers 3

    .line 7550
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 7551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionListenerProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7553
    :cond_28
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$ActionListenerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7556
    return-void
.end method
