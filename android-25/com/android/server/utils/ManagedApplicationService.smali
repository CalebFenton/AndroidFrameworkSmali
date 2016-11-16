.class public Lcom/android/server/utils/ManagedApplicationService;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/ManagedApplicationService$1;,
        Lcom/android/server/utils/ManagedApplicationService$BinderChecker;,
        Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBoundInterface:Landroid/os/IInterface;

.field private final mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

.field private final mClientLabel:I

.field private final mComponent:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mLock:Ljava/lang/Object;

.field private mPendingConnection:Landroid/content/ServiceConnection;

.field private mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

.field private final mSettingsAction:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    #@2
    return-object p1
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "clientLabel"    # I
    .param p5, "settingsAction"    # Ljava/lang/String;
    .param p6, "binderChecker"    # Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    #@d
    .line 48
    new-instance v0, Lcom/android/server/utils/ManagedApplicationService$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/server/utils/ManagedApplicationService$1;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    #@12
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #@14
    .line 57
    new-instance v0, Ljava/lang/Object;

    #@16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    #@1b
    .line 68
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    #@1d
    .line 69
    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    #@1f
    .line 70
    iput p3, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    #@21
    .line 71
    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    #@23
    .line 72
    iput-object p5, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    #@25
    .line 73
    iput-object p6, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    #@27
    .line 67
    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;)Lcom/android/server/utils/ManagedApplicationService;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "clientLabel"    # I
    .param p4, "settingsAction"    # Ljava/lang/String;
    .param p5, "binderChecker"    # Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    #@0
    .prologue
    .line 107
    new-instance v0, Lcom/android/server/utils/ManagedApplicationService;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    move-object v6, p5

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;)V

    #@b
    return-object v0
.end method

.method private matches(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 264
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    #@3
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    #@b
    if-ne v1, p2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method


# virtual methods
.method public connect()V
    .locals 9

    #@0
    .prologue
    .line 187
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    #@5
    if-nez v4, :cond_0

    #@7
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v4, :cond_1

    #@b
    :cond_0
    monitor-exit v5

    #@c
    .line 190
    return-void

    #@d
    .line 194
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    #@f
    new-instance v6, Landroid/content/Intent;

    #@11
    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    #@13
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@16
    const/4 v7, 0x0

    #@17
    const/4 v8, 0x0

    #@18
    .line 193
    invoke-static {v4, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@1b
    move-result-object v2

    #@1c
    .line 195
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    #@1e
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@21
    iget-object v6, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    #@23
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@26
    move-result-object v4

    #@27
    .line 196
    const-string/jumbo v6, "android.intent.extra.client_label"

    #@2a
    iget v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    #@2c
    .line 195
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2f
    move-result-object v4

    #@30
    .line 197
    const-string/jumbo v6, "android.intent.extra.client_intent"

    #@33
    .line 195
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@36
    move-result-object v1

    #@37
    .line 199
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$2;

    #@39
    invoke-direct {v3, p0, v1}, Lcom/android/server/utils/ManagedApplicationService$2;-><init>(Lcom/android/server/utils/ManagedApplicationService;Landroid/content/Intent;)V

    #@3c
    .line 249
    .local v3, "serviceConnection":Landroid/content/ServiceConnection;
    iput-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    .line 252
    :try_start_2
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    #@40
    .line 254
    new-instance v6, Landroid/os/UserHandle;

    #@42
    iget v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    #@44
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@47
    .line 253
    const v7, 0x4000001

    #@4a
    .line 252
    invoke-virtual {v4, v1, v3, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@4d
    move-result v4

    #@4e
    if-nez v4, :cond_2

    #@50
    .line 255
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    #@52
    new-instance v6, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v7, "Unable to bind service: "

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    :cond_2
    :goto_0
    monitor-exit v5

    #@6a
    .line 186
    return-void

    #@6b
    .line 257
    :catch_0
    move-exception v0

    #@6c
    .line 258
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    #@6e
    new-instance v6, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v7, "Unable to bind service: "

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    goto :goto_0

    #@86
    .line 187
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "serviceConnection":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v4

    #@87
    monitor-exit v5

    #@88
    throw v4
.end method

.method public disconnect()V
    .locals 3

    #@0
    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 171
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingConnection:Landroid/content/ServiceConnection;

    #@6
    .line 174
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 175
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    #@c
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    #@e
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@11
    .line 176
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    #@14
    .line 179
    :cond_0
    const/4 v0, 0x0

    #@15
    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    .line 168
    return-void

    #@19
    .line 169
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public disconnectIfNotMatching(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/ManagedApplicationService;->matches(Landroid/content/ComponentName;I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 135
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    #@b
    .line 138
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    #@2
    return v0
.end method

.method public sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    #@0
    .prologue
    .line 149
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    #@5
    .line 151
    .local v1, "iface":Landroid/os/IInterface;
    if-nez v1, :cond_0

    #@7
    .line 152
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :cond_0
    monitor-exit v3

    #@a
    .line 156
    if-eqz v1, :cond_1

    #@c
    .line 158
    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@f
    .line 147
    :cond_1
    :goto_0
    return-void

    #@10
    .line 149
    .end local v1    # "iface":Landroid/os/IInterface;
    :catchall_0
    move-exception v2

    #@11
    monitor-exit v3

    #@12
    throw v2

    #@13
    .line 159
    .restart local v1    # "iface":Landroid/os/IInterface;
    :catch_0
    move-exception v0

    #@14
    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    #@16
    const-string/jumbo v3, "Received exception from user service: "

    #@19
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method
