.class Landroid/net/wifi/WifiManager$TwtCallbackProxy;
.super Landroid/net/wifi/ITwtCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwtCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/wifi/twt/TwtSessionCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$4OLVXqNjH-2XVGwxYyU3DMrpV0Y(Landroid/net/wifi/WifiManager$TwtCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->lambda$onTeardown$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QCoE8RNWduL5bsK8E1pL26l4-l8(Landroid/net/wifi/WifiManager$TwtCallbackProxy;Landroid/net/wifi/WifiTwtSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->lambda$onCreate$2(Landroid/net/wifi/WifiTwtSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$owc64AGWD4x3AAEtC3iPRPO0fNI(Landroid/net/wifi/WifiManager$TwtCallbackProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->lambda$onFailure$0(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/twt/TwtSessionCallback;)V
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/twt/TwtSessionCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 12878
    iput-object p1, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/ITwtCallback$Stub;-><init>()V

    .line 12879
    iput-object p2, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 12880
    iput-object p3, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->mCallback:Landroid/net/wifi/twt/TwtSessionCallback;

    .line 12881
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/twt/TwtSessionCallback;Landroid/net/wifi/WifiManager-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$TwtCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/twt/TwtSessionCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$2(Landroid/net/wifi/WifiTwtSession;)V
    .registers 3
    .param p1, "wifiTwtSession"    # Landroid/net/wifi/WifiTwtSession;

    .line 12913
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->mCallback:Landroid/net/wifi/twt/TwtSessionCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/twt/TwtSessionCallback;->onCreate(Landroid/net/wifi/twt/TwtSession;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFailure$0(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 12890
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->mCallback:Landroid/net/wifi/twt/TwtSessionCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/twt/TwtSessionCallback;->onFailure(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onTeardown$1(I)V
    .registers 3
    .param p1, "reasonCode"    # I

    .line 12900
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->mCallback:Landroid/net/wifi/twt/TwtSessionCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/twt/TwtSessionCallback;->onTeardown(I)V

    return-void
.end method


# virtual methods
.method public blacklist onCreate(IJIII)V
    .registers 16
    .param p1, "wakeDuration"    # I
    .param p2, "wakeInterval"    # J
    .param p4, "mloLinkId"    # I
    .param p5, "owner"    # I
    .param p6, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12906
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 12907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwtCallbackProxy: onCreate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v8, p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 12906
    :cond_22
    move v8, p6

    .line 12910
    :goto_23
    new-instance v1, Landroid/net/wifi/WifiTwtSession;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/net/wifi/WifiTwtSession;-><init>(Landroid/net/wifi/WifiManager;IJIII)V

    .line 12912
    .local v1, "wifiTwtSession":Landroid/net/wifi/WifiTwtSession;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12913
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/net/wifi/WifiManager$TwtCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/WifiManager$TwtCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$TwtCallbackProxy;Landroid/net/wifi/WifiTwtSession;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12914
    return-void
.end method

.method public blacklist onFailure(I)V
    .registers 4
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12886
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 12887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwtCallbackProxy: onFailure(errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12889
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12890
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$TwtCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$TwtCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$TwtCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12891
    return-void
.end method

.method public blacklist onTeardown(I)V
    .registers 4
    .param p1, "reasonCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12896
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 12897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwtCallbackProxy: onTeardown(errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12899
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12900
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TwtCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$TwtCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$TwtCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$TwtCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12901
    return-void
.end method
