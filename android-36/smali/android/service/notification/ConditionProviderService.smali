.class public abstract Landroid/service/notification/ConditionProviderService;
.super Landroid/app/Service;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ConditionProviderService$H;,
        Landroid/service/notification/ConditionProviderService$Provider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist EXTRA_RULE_ID:Ljava/lang/String; = "android.service.notification.extra.RULE_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist META_DATA_CONFIGURATION_ACTIVITY:Ljava/lang/String; = "android.service.zen.automatic.configurationActivity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist META_DATA_RULE_INSTANCE_LIMIT:Ljava/lang/String; = "android.service.zen.automatic.ruleInstanceLimit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist META_DATA_RULE_TYPE:Ljava/lang/String; = "android.service.zen.automatic.ruleType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.ConditionProviderService"


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private final greylist-max-o mHandler:Landroid/service/notification/ConditionProviderService$H;

.field blacklist mIsConnected:Z

.field private greylist-max-o mNoMan:Landroid/app/INotificationManager;

.field private greylist-max-o mProvider:Landroid/service/notification/ConditionProviderService$Provider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetTAG(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/service/notification/ConditionProviderService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService-IA;)V

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;

    return-void
.end method

.method private final greylist-max-o getNotificationInterface()Landroid/app/INotificationManager;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_12

    .line 147
    nop

    .line 148
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    .line 150
    :cond_12
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public static final whitelist requestRebind(Landroid/content/ComponentName;)V
    .registers 4
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 159
    nop

    .line 160
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 162
    .local v0, "noMan":Landroid/app/INotificationManager;
    :try_start_c
    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->requestBindProvider(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 165
    nop

    .line 166
    return-void

    .line 163
    :catch_11
    move-exception v1

    .line 164
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public blacklist isBound()Z
    .registers 3

    .line 237
    iget-boolean v0, p0, Landroid/service/notification/ConditionProviderService;->mIsConnected:Z

    if-nez v0, :cond_b

    .line 238
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    const-string v1, "Condition provider service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_b
    iget-boolean v0, p0, Landroid/service/notification/ConditionProviderService;->mIsConnected:Z

    return v0
.end method

.method public final whitelist notifyCondition(Landroid/service/notification/Condition;)V
    .registers 4
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    if-nez p1, :cond_3

    return-void

    .line 203
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/service/notification/Condition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->notifyConditions([Landroid/service/notification/Condition;)V

    .line 204
    return-void
.end method

.method public final varargs whitelist notifyConditions([Landroid/service/notification/Condition;)V
    .registers 5
    .param p1, "conditions"    # [Landroid/service/notification/Condition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    invoke-virtual {p0}, Landroid/service/notification/ConditionProviderService;->isBound()Z

    move-result v0

    if-eqz v0, :cond_20

    if-nez p1, :cond_9

    goto :goto_20

    .line 218
    :cond_9
    :try_start_9
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/ConditionProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    invoke-interface {v0, v1, v2, p1}, Landroid/app/INotificationManager;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 221
    goto :goto_1f

    .line 219
    :catch_17
    move-exception v0

    .line 220
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return-void

    .line 216
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 226
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    if-nez v0, :cond_c

    .line 227
    new-instance v0, Landroid/service/notification/ConditionProviderService$Provider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService-IA;)V

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    .line 229
    :cond_c
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    return-object v0
.end method

.method public abstract whitelist onConnected()V
.end method

.method public whitelist onRequestConditions(I)V
    .registers 2
    .param p1, "relevance"    # I

    .line 131
    return-void
.end method

.method public abstract whitelist onSubscribe(Landroid/net/Uri;)V
.end method

.method public abstract whitelist onUnsubscribe(Landroid/net/Uri;)V
.end method

.method public final whitelist requestUnbind()V
    .registers 4

    .line 179
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 181
    .local v0, "noMan":Landroid/app/INotificationManager;
    :try_start_4
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ConditionProviderService;->mIsConnected:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_e

    .line 186
    nop

    .line 187
    return-void

    .line 184
    :catch_e
    move-exception v1

    .line 185
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
