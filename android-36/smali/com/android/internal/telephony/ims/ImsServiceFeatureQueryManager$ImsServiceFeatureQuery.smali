.class final Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;
.super Ljava/lang/Object;
.source "ImsServiceFeatureQueryManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsServiceFeatureQuery"
.end annotation


# instance fields
.field private final blacklist mIntentFilter:Ljava/lang/String;

.field private blacklist mIsServiceConnectionDead:Z

.field private final blacklist mName:Landroid/content/ComponentName;

.field private final blacklist mUser:Landroid/os/UserHandle;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
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

    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIsServiceConnectionDead:Z

    .line 54
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    .line 55
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mUser:Landroid/os/UserHandle;

    .line 56
    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    return-void
.end method

.method private blacklist cleanup()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 140
    :try_start_10
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmActiveQueries(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private blacklist queryImsFeatures(Landroid/telephony/ims/aidl/IImsServiceController;)V
    .registers 4

    .line 116
    :try_start_0
    invoke-interface {p1}, Landroid/telephony/ims/aidl/IImsServiceController;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_1c

    if-nez p1, :cond_9

    .line 128
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_d

    .line 130
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object p1

    .line 133
    :goto_d
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onComplete(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void

    :catch_1c
    move-exception p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryImsFeatures - error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsServiceFeatureQuery"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 121
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onError(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIsServiceConnectionDead:Z

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 100
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onError(Landroid/content/ComponentName;)V

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBinding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIsServiceConnectionDead:Z

    if-eqz v0, :cond_1b

    return-void

    .line 109
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mUser:Landroid/os/UserHandle;

    invoke-interface {v0, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onPermanentError(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected for component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_20

    .line 81
    invoke-static {p2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->queryImsFeatures(Landroid/telephony/ims/aidl/IImsServiceController;)V

    return-void

    .line 83
    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " binder null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 85
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mUser:Landroid/os/UserHandle;

    invoke-interface {p2, p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onPermanentError(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected for component: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsServiceFeatureQuery"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist start()Z
    .registers 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: intent filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mUser:Landroid/os/UserHandle;

    const v3, 0x4000041

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    :cond_43
    return v0
.end method
