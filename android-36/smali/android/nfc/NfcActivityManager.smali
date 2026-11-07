.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/IAppCallback$Stub;
.source "NfcActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final greylist-max-o DBG:Ljava/lang/Boolean;

.field static final greylist-max-o TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final greylist-max-o mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/NfcActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mAdapter:Landroid/nfc/NfcAdapter;

.field final greylist-max-o mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/NfcApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$KflxZSFsTDQRU5SoTsvUbpATMJ4(Landroid/nfc/NfcActivityManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/nfc/NfcActivityManager;->lambda$requestNfcServiceCallback$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XrausLwlMA3OZm7XOxcvBOkHwFY(Landroid/nfc/NfcActivityManager;Landroid/os/Binder;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcActivityManager;->lambda$changeDiscoveryTech$3(Landroid/os/Binder;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$krSWHo-jOsngSRB_31LgKqxiBIw(Landroid/nfc/NfcActivityManager;Landroid/os/Binder;ILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/nfc/NfcActivityManager;->lambda$setReaderMode$0(Landroid/os/Binder;ILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/nfc/NfcAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/nfc/NfcAdapter;

    .line 137
    invoke-direct {p0}, Landroid/nfc/IAppCallback$Stub;-><init>()V

    .line 138
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    .line 141
    return-void
.end method

.method private blacklist changeDiscoveryTech(Landroid/os/Binder;II)V
    .registers 5
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .line 347
    new-instance v0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda3;-><init>(Landroid/nfc/NfcActivityManager;Landroid/os/Binder;II)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 350
    return-void
.end method

.method private synthetic blacklist lambda$changeDiscoveryTech$3(Landroid/os/Binder;II)V
    .registers 6
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 349
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/nfc/INfcAdapter;->updateDiscoveryTechnology(Landroid/os/IBinder;IILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestNfcServiceCallback$1()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->setAppCallback(Landroid/nfc/IAppCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$setReaderMode$0(Landroid/os/Binder;ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "flags"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 189
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 188
    move-object v2, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    .end local p1    # "token":Landroid/os/Binder;
    .end local p2    # "flags":I
    .end local p3    # "extras":Landroid/os/Bundle;
    .local v1, "token":Landroid/os/Binder;
    .local v3, "flags":I
    .local v4, "extras":Landroid/os/Bundle;
    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$verifyNfcPermission$2()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->verifyNfcPermission()V

    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o destroyActivityState(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 130
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 131
    .local v0, "activityState":Landroid/nfc/NfcActivityState;
    if-eqz v0, :cond_f

    .line 132
    invoke-virtual {v0}, Landroid/nfc/NfcActivityState;->destroy()V

    .line 133
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 135
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_f
    monitor-exit p0

    return-void

    .line 129
    .end local v0    # "activityState":Landroid/nfc/NfcActivityState;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public greylist-max-o disableReaderMode(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 172
    monitor-enter p0

    .line 173
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 174
    .local v0, "state":Landroid/nfc/NfcActivityState;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/nfc/NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 175
    const/4 v2, 0x0

    iput v2, v0, Landroid/nfc/NfcActivityState;->readerModeFlags:I

    .line 176
    iput-object v1, v0, Landroid/nfc/NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 177
    iget-object v3, v0, Landroid/nfc/NfcActivityState;->token:Landroid/os/Binder;

    .line 178
    .local v3, "token":Landroid/os/Binder;
    iget-boolean v4, v0, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 179
    .end local v0    # "state":Landroid/nfc/NfcActivityState;
    .local v4, "isResumed":Z
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    .line 180
    if-eqz v4, :cond_17

    .line 181
    invoke-virtual {p0, v3, v2, v1}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    .line 184
    :cond_17
    return-void

    .line 179
    .end local v3    # "token":Landroid/os/Binder;
    .end local v4    # "isResumed":Z
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public greylist-max-o enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 150
    .local v0, "state":Landroid/nfc/NfcActivityState;
    iput-object p2, v0, Landroid/nfc/NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 151
    iput p3, v0, Landroid/nfc/NfcActivityState;->readerModeFlags:I

    .line 152
    iput-object p4, v0, Landroid/nfc/NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 153
    iget v1, v0, Landroid/nfc/NfcActivityState;->mPollTech:I

    .line 154
    .local v1, "pollTech":I
    iget v2, v0, Landroid/nfc/NfcActivityState;->mListenTech:I

    .line 155
    .local v2, "listenTech":I
    iget-object v3, v0, Landroid/nfc/NfcActivityState;->token:Landroid/os/Binder;

    .line 156
    .local v3, "token":Landroid/os/Binder;
    iget-boolean v4, v0, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 157
    .end local v0    # "state":Landroid/nfc/NfcActivityState;
    .local v4, "isResumed":Z
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_29

    .line 158
    if-eqz v4, :cond_28

    .line 159
    const/16 v0, 0xff

    if-ne v2, v0, :cond_20

    if-ne v1, v0, :cond_20

    .line 164
    invoke-virtual {p0, v3, p3, p4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    goto :goto_28

    .line 161
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot be used when alternative DiscoveryTechnology is set"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_28
    :goto_28
    return-void

    .line 157
    .end local v1    # "pollTech":I
    .end local v2    # "listenTech":I
    .end local v3    # "token":Landroid/os/Binder;
    .end local v4    # "isResumed":Z
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public declared-synchronized blacklist findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityState;

    .line 94
    .local v1, "state":Landroid/nfc/NfcActivityState;
    iget-object v2, v1, Landroid/nfc/NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    if-ne v2, p1, :cond_19

    .line 95
    monitor-exit p0

    return-object v1

    .line 97
    .end local v1    # "state":Landroid/nfc/NfcActivityState;
    :cond_19
    goto :goto_7

    .line 98
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_1a
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 92
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public blacklist findAppState(Landroid/app/Application;)Landroid/nfc/NfcApplicationState;
    .registers 5
    .param p1, "app"    # Landroid/app/Application;

    .line 56
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcApplicationState;

    .line 57
    .local v1, "appState":Landroid/nfc/NfcApplicationState;
    iget-object v2, v1, Landroid/nfc/NfcApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_17

    .line 58
    return-object v1

    .line 60
    .end local v1    # "appState":Landroid/nfc/NfcApplicationState;
    :cond_17
    goto :goto_6

    .line 61
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized blacklist findResumedActivityState()Landroid/nfc/NfcActivityState;
    .registers 4

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityState;

    .line 119
    .local v1, "state":Landroid/nfc/NfcActivityState;
    iget-boolean v2, v1, Landroid/nfc/NfcActivityState;->resumed:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    if-eqz v2, :cond_19

    .line 120
    monitor-exit p0

    return-object v1

    .line 122
    .end local v1    # "state":Landroid/nfc/NfcActivityState;
    :cond_19
    goto :goto_7

    .line 123
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_1a
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 117
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public declared-synchronized blacklist getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    monitor-enter p0

    .line 106
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 107
    .local v0, "state":Landroid/nfc/NfcActivityState;
    if-nez v0, :cond_12

    .line 108
    new-instance v1, Landroid/nfc/NfcActivityState;

    invoke-direct {v1, p1, p0}, Landroid/nfc/NfcActivityState;-><init>(Landroid/app/Activity;Landroid/nfc/NfcActivityManager;)V

    move-object v0, v1

    .line 109
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 111
    .end local p0    # "this":Landroid/nfc/NfcActivityManager;
    :cond_12
    monitor-exit p0

    return-object v0

    .line 105
    .end local v0    # "state":Landroid/nfc/NfcActivityState;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 222
    return-void
.end method

.method public whitelist onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 298
    monitor-enter p0

    .line 299
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 300
    .local v0, "state":Landroid/nfc/NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityDestroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2f
    if-eqz v0, :cond_34

    .line 303
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    .line 305
    .end local v0    # "state":Landroid/nfc/NfcActivityState;
    :cond_34
    monitor-exit p0

    .line 306
    return-void

    .line 305
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public whitelist onActivityPaused(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 266
    monitor-enter p0

    .line 267
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 268
    .local v0, "state":Landroid/nfc/NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityPaused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_2f
    if-nez v0, :cond_33

    monitor-exit p0

    return-void

    .line 270
    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 271
    iget-object v2, v0, Landroid/nfc/NfcActivityState;->token:Landroid/os/Binder;

    .line 272
    .local v2, "token":Landroid/os/Binder;
    iget v3, v0, Landroid/nfc/NfcActivityState;->readerModeFlags:I

    if-eqz v3, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    move v3, v1

    .line 274
    .local v3, "readerModeFlagsSet":Z
    :goto_3f
    iget v4, v0, Landroid/nfc/NfcActivityState;->mPollTech:I

    .line 275
    .local v4, "pollTech":I
    iget v5, v0, Landroid/nfc/NfcActivityState;->mListenTech:I

    .line 276
    .end local v0    # "state":Landroid/nfc/NfcActivityState;
    .local v5, "listenTech":I
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_55

    .line 277
    if-eqz v3, :cond_4b

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    goto :goto_54

    .line 280
    :cond_4b
    const/16 v0, 0xff

    if-ne v5, v0, :cond_51

    if-eq v4, v0, :cond_54

    .line 282
    :cond_51
    invoke-direct {p0, v2, v0, v0}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 285
    :cond_54
    :goto_54
    return-void

    .line 276
    .end local v2    # "token":Landroid/os/Binder;
    .end local v3    # "readerModeFlagsSet":Z
    .end local v4    # "pollTech":I
    .end local v5    # "listenTech":I
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public whitelist onActivityResumed(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "readerModeFlags":I
    const/4 v1, 0x0

    .line 237
    .local v1, "readerModeExtras":Landroid/os/Bundle;
    monitor-enter p0

    .line 238
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v2

    .line 239
    .local v2, "state":Landroid/nfc/NfcActivityState;
    sget-object v3, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "NFC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResumed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_31
    if-nez v2, :cond_35

    monitor-exit p0

    return-void

    .line 241
    :cond_35
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 242
    iget-object v3, v2, Landroid/nfc/NfcActivityState;->token:Landroid/os/Binder;

    .line 243
    .local v3, "token":Landroid/os/Binder;
    iget v4, v2, Landroid/nfc/NfcActivityState;->readerModeFlags:I

    move v0, v4

    .line 244
    iget-object v4, v2, Landroid/nfc/NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    move-object v1, v4

    .line 246
    iget v4, v2, Landroid/nfc/NfcActivityState;->mPollTech:I

    .line 247
    .local v4, "pollTech":I
    iget v5, v2, Landroid/nfc/NfcActivityState;->mListenTech:I

    .line 248
    .end local v2    # "state":Landroid/nfc/NfcActivityState;
    .local v5, "listenTech":I
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_58

    .line 249
    if-eqz v0, :cond_4b

    .line 250
    invoke-virtual {p0, v3, v0, v1}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    goto :goto_54

    .line 251
    :cond_4b
    const/16 v2, 0xff

    if-ne v5, v2, :cond_51

    if-eq v4, v2, :cond_54

    .line 253
    :cond_51
    invoke-direct {p0, v3, v4, v5}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 255
    :cond_54
    :goto_54
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    .line 256
    return-void

    .line 248
    .end local v3    # "token":Landroid/os/Binder;
    .end local v4    # "pollTech":I
    .end local v5    # "listenTech":I
    :catchall_58
    move-exception v2

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method public whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 293
    return-void
.end method

.method public whitelist onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 226
    return-void
.end method

.method public whitelist onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 289
    return-void
.end method

.method public greylist-max-o onTagDiscovered(Landroid/nfc/Tag;)V
    .registers 4
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    monitor-enter p0

    .line 208
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 209
    .local v0, "state":Landroid/nfc/NfcActivityState;
    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 211
    :cond_9
    iget-object v1, v0, Landroid/nfc/NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 212
    .end local v0    # "state":Landroid/nfc/NfcActivityState;
    .local v1, "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 215
    if-eqz v1, :cond_11

    .line 216
    invoke-interface {v1, p1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    .line 219
    :cond_11
    return-void

    .line 212
    .end local v1    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public greylist-max-o registerApplication(Landroid/app/Application;)V
    .registers 4
    .param p1, "app"    # Landroid/app/Application;

    .line 68
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcApplicationState;

    move-result-object v0

    .line 69
    .local v0, "appState":Landroid/nfc/NfcApplicationState;
    if-nez v0, :cond_11

    .line 70
    new-instance v1, Landroid/nfc/NfcApplicationState;

    invoke-direct {v1, p1, p0}, Landroid/nfc/NfcApplicationState;-><init>(Landroid/app/Application;Landroid/nfc/NfcActivityManager;)V

    move-object v0, v1

    .line 71
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_11
    invoke-virtual {v0}, Landroid/nfc/NfcApplicationState;->register()V

    .line 74
    return-void
.end method

.method greylist-max-o requestNfcServiceCallback()V
    .registers 2

    .line 197
    new-instance v0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcActivityManager;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 198
    return-void
.end method

.method public blacklist resetDiscoveryTech(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 333
    monitor-enter p0

    .line 334
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 335
    .local v0, "state":Landroid/nfc/NfcActivityState;
    const/16 v1, 0xff

    iput v1, v0, Landroid/nfc/NfcActivityState;->mListenTech:I

    .line 336
    iput v1, v0, Landroid/nfc/NfcActivityState;->mPollTech:I

    .line 337
    iget-object v2, v0, Landroid/nfc/NfcActivityState;->token:Landroid/os/Binder;

    .line 338
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v3, v0, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 339
    .end local v0    # "state":Landroid/nfc/NfcActivityState;
    .local v3, "isResumed":Z
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    .line 340
    if-eqz v3, :cond_15

    .line 341
    invoke-direct {p0, v2, v1, v1}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    .line 344
    :cond_15
    return-void

    .line 339
    .end local v2    # "token":Landroid/os/Binder;
    .end local v3    # "isResumed":Z
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public blacklist setDiscoveryTech(Landroid/app/Activity;II)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pollTech"    # I
    .param p3, "listenTech"    # I

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityState;

    move-result-object v0

    .line 315
    .local v0, "state":Landroid/nfc/NfcActivityState;
    iget v1, v0, Landroid/nfc/NfcActivityState;->readerModeFlags:I

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 316
    .local v1, "readerModeFlagsSet":Z
    :goto_c
    iput p3, v0, Landroid/nfc/NfcActivityState;->mListenTech:I

    .line 317
    iput p2, v0, Landroid/nfc/NfcActivityState;->mPollTech:I

    .line 318
    iget-object v2, v0, Landroid/nfc/NfcActivityState;->token:Landroid/os/Binder;

    .line 319
    .local v2, "token":Landroid/os/Binder;
    iget-boolean v3, v0, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 320
    .end local v0    # "state":Landroid/nfc/NfcActivityState;
    .local v3, "isResumed":Z
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_28

    .line 321
    if-nez v1, :cond_1d

    if-eqz v3, :cond_1d

    .line 322
    invoke-direct {p0, v2, p2, p3}, Landroid/nfc/NfcActivityManager;->changeDiscoveryTech(Landroid/os/Binder;II)V

    goto :goto_1f

    .line 323
    :cond_1d
    if-nez v1, :cond_20

    .line 326
    :goto_1f
    return-void

    .line 324
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot be used when the Reader Mode is enabled"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    .end local v1    # "readerModeFlagsSet":Z
    .end local v2    # "token":Landroid/os/Binder;
    .end local v3    # "isResumed":Z
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public greylist-max-o setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "flags"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 187
    sget-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "NFC"

    const-string v1, "setReaderModee"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_f
    new-instance v0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda1;-><init>(Landroid/nfc/NfcActivityManager;Landroid/os/Binder;ILandroid/os/Bundle;)V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 190
    return-void
.end method

.method public greylist-max-o unregisterApplication(Landroid/app/Application;)V
    .registers 5
    .param p1, "app"    # Landroid/app/Application;

    .line 80
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcApplicationState;

    move-result-object v0

    .line 81
    .local v0, "appState":Landroid/nfc/NfcApplicationState;
    if-nez v0, :cond_1f

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterApplication: app was not registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NFC"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 85
    :cond_1f
    invoke-virtual {v0}, Landroid/nfc/NfcApplicationState;->unregister()V

    .line 86
    return-void
.end method

.method greylist-max-o verifyNfcPermission()V
    .registers 2

    .line 201
    new-instance v0, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/nfc/NfcActivityManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->callService(Landroid/nfc/NfcAdapter$ServiceCall;)V

    .line 202
    return-void
.end method
