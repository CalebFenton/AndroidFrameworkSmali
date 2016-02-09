.class public abstract Landroid/service/notification/ConditionProviderService;
.super Landroid/app/Service;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ConditionProviderService$Provider;,
        Landroid/service/notification/ConditionProviderService$H;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.ConditionProviderService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mHandler:Landroid/service/notification/ConditionProviderService$H;

.field private mNoMan:Landroid/app/INotificationManager;

.field private mProvider:Landroid/service/notification/ConditionProviderService$Provider;


# direct methods
.method static synthetic -get0(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-class v1, Landroid/service/notification/ConditionProviderService;

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 51
    const-string/jumbo v1, "["

    #@15
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 51
    invoke-virtual {p0}, Landroid/service/notification/ConditionProviderService;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 51
    const-string/jumbo v1, "]"

    #@28
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    #@32
    .line 53
    new-instance v0, Landroid/service/notification/ConditionProviderService$H;

    #@34
    const/4 v1, 0x0

    #@35
    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$H;)V

    #@38
    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;

    #@3a
    .line 49
    return-void
.end method

.method private final getNotificationInterface()Landroid/app/INotificationManager;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    const-string/jumbo v0, "notification"

    #@7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    .line 72
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    #@11
    .line 75
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    #@13
    return-object v0
.end method

.method private isBound()Z
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 102
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "Condition provider service not yet bound."

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 103
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 105
    :cond_0
    const/4 v0, 0x1

    #@f
    return v0
.end method


# virtual methods
.method public final notifyCondition(Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "condition"    # Landroid/service/notification/Condition;

    #@0
    .prologue
    .line 79
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 80
    :cond_0
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [Landroid/service/notification/Condition;

    #@6
    const/4 v1, 0x0

    #@7
    aput-object p1, v0, v1

    #@9
    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->notifyConditions([Landroid/service/notification/Condition;)V

    #@c
    .line 78
    return-void
.end method

.method public final varargs notifyConditions([Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;->isBound()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    if-nez p1, :cond_1

    #@8
    :cond_0
    return-void

    #@9
    .line 86
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;->getNotificationInterface()Landroid/app/INotificationManager;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0}, Landroid/service/notification/ConditionProviderService;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iget-object v3, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    #@13
    invoke-interface {v1, v2, v3, p1}, Landroid/app/INotificationManager;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 83
    :goto_0
    return-void

    #@17
    .line 87
    :catch_0
    move-exception v0

    #@18
    .line 88
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    #@1a
    const-string/jumbo v2, "Unable to contact notification manager"

    #@1d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 94
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 95
    new-instance v0, Landroid/service/notification/ConditionProviderService$Provider;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$Provider;)V

    #@a
    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    #@c
    .line 97
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    #@e
    return-object v0
.end method

.method public abstract onConnected()V
.end method

.method public abstract onRequestConditions(I)V
.end method

.method public abstract onSubscribe(Landroid/net/Uri;)V
.end method

.method public abstract onUnsubscribe(Landroid/net/Uri;)V
.end method
