.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;,
        Lcom/android/server/DockObserver$1;,
        Lcom/android/server/DockObserver$2;
    }
.end annotation


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/DockObserver;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/DockObserver;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/DockObserver;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/DockObserver;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DockObserver;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DockObserver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p1, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p1, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@5
    .line 57
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    #@c
    .line 61
    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    #@e
    .line 63
    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@10
    .line 64
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    #@12
    .line 216
    new-instance v0, Lcom/android/server/DockObserver$1;

    #@14
    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    #@17
    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    #@19
    .line 228
    new-instance v0, Lcom/android/server/DockObserver$2;

    #@1b
    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    #@20
    .line 73
    const-string/jumbo v0, "power"

    #@23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/os/PowerManager;

    #@29
    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    #@2b
    .line 74
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    #@2d
    const-string/jumbo v1, "DockObserver"

    #@30
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@36
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@39
    move-result-object v0

    #@3a
    .line 76
    const v1, 0x112002f

    #@3d
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@40
    move-result v0

    #@41
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    #@43
    .line 78
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    #@46
    .line 80
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    #@48
    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/dock"

    #@4b
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@4e
    .line 70
    return-void
.end method

.method private handleDockStateChange()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x3

    #@1
    const/4 v12, 0x2

    #@2
    const/4 v11, 0x1

    #@3
    .line 151
    iget-object v8, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    #@5
    monitor-enter v8

    #@6
    .line 152
    :try_start_0
    const-string/jumbo v7, "DockObserver"

    #@9
    new-instance v9, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v10, "Dock state changed from "

    #@11
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v9

    #@15
    iget v10, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    #@17
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v9

    #@1b
    const-string/jumbo v10, " to "

    #@1e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    .line 153
    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@24
    .line 152
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v9

    #@28
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v9

    #@2c
    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 154
    iget v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    #@31
    .line 155
    .local v2, "previousDockState":I
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@33
    iput v7, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    #@35
    .line 158
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3c
    move-result-object v0

    #@3d
    .line 160
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "device_provisioned"

    #@40
    const/4 v9, 0x0

    #@41
    .line 159
    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@44
    move-result v7

    #@45
    if-nez v7, :cond_0

    #@47
    .line 161
    const-string/jumbo v7, "DockObserver"

    #@4a
    const-string/jumbo v9, "Device not provisioned, skipping dock broadcast"

    #@4d
    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    monitor-exit v8

    #@51
    .line 162
    return-void

    #@52
    .line 166
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    #@54
    const-string/jumbo v7, "android.intent.action.DOCK_EVENT"

    #@57
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5a
    .line 167
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    #@5c
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5f
    .line 168
    const-string/jumbo v7, "android.intent.extra.DOCK_STATE"

    #@62
    iget v9, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@64
    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@67
    .line 173
    const-string/jumbo v7, "dock_sounds_enabled"

    #@6a
    const/4 v9, 0x1

    #@6b
    .line 172
    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@6e
    move-result v7

    #@6f
    if-ne v7, v11, :cond_3

    #@71
    .line 174
    const/4 v6, 0x0

    #@72
    .line 175
    .local v6, "whichSound":Ljava/lang/String;
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@74
    if-nez v7, :cond_5

    #@76
    .line 176
    if-eq v2, v11, :cond_1

    #@78
    .line 177
    if-ne v2, v13, :cond_4

    #@7a
    .line 179
    :cond_1
    const-string/jumbo v6, "desk_undock_sound"

    #@7d
    .line 193
    .end local v6    # "whichSound":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    #@7f
    .line 194
    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v4

    #@83
    .line 195
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@85
    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v9, "file://"

    #@8d
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v7

    #@99
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@9c
    move-result-object v5

    #@9d
    .line 197
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_3

    #@9f
    .line 199
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    #@a2
    move-result-object v7

    #@a3
    .line 198
    invoke-static {v7, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    #@a6
    move-result-object v3

    #@a7
    .line 200
    .local v3, "sfx":Landroid/media/Ringtone;
    if-eqz v3, :cond_3

    #@a9
    .line 201
    const/4 v7, 0x1

    #@aa
    invoke-virtual {v3, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    #@ad
    .line 202
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    #@b0
    .line 212
    .end local v3    # "sfx":Landroid/media/Ringtone;
    .end local v4    # "soundPath":Ljava/lang/String;
    .end local v5    # "soundUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    #@b3
    move-result-object v7

    #@b4
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@b6
    invoke-virtual {v7, v1, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b9
    monitor-exit v8

    #@ba
    .line 150
    return-void

    #@bb
    .line 178
    .restart local v6    # "whichSound":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x4

    #@bc
    if-eq v2, v7, :cond_1

    #@be
    .line 180
    if-ne v2, v12, :cond_2

    #@c0
    .line 181
    :try_start_2
    const-string/jumbo v6, "car_undock_sound"

    #@c3
    .local v6, "whichSound":Ljava/lang/String;
    goto :goto_0

    #@c4
    .line 184
    .local v6, "whichSound":Ljava/lang/String;
    :cond_5
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@c6
    if-eq v7, v11, :cond_6

    #@c8
    .line 185
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@ca
    if-ne v7, v13, :cond_7

    #@cc
    .line 187
    :cond_6
    const-string/jumbo v6, "desk_dock_sound"

    #@cf
    .local v6, "whichSound":Ljava/lang/String;
    goto :goto_0

    #@d0
    .line 186
    .local v6, "whichSound":Ljava/lang/String;
    :cond_7
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@d2
    const/4 v9, 0x4

    #@d3
    if-eq v7, v9, :cond_6

    #@d5
    .line 188
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@d7
    if-ne v7, v12, :cond_2

    #@d9
    .line 189
    const-string/jumbo v6, "car_dock_sound"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@dc
    .local v6, "whichSound":Ljava/lang/String;
    goto :goto_0

    #@dd
    .line 151
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "previousDockState":I
    .end local v6    # "whichSound":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@de
    monitor-exit v8

    #@df
    throw v7
.end method

.method private init()V
    .locals 8

    #@0
    .prologue
    .line 103
    iget-object v6, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 105
    const/16 v5, 0x400

    #@5
    :try_start_0
    new-array v0, v5, [C

    #@7
    .line 106
    .local v0, "buffer":[C
    new-instance v3, Ljava/io/FileReader;

    #@9
    const-string/jumbo v5, "/sys/class/switch/dock/state"

    #@c
    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 108
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    #@10
    const/16 v7, 0x400

    #@12
    :try_start_1
    invoke-virtual {v3, v0, v5, v7}, Ljava/io/FileReader;->read([CII)I

    #@15
    move-result v4

    #@16
    .line 109
    .local v4, "len":I
    new-instance v5, Ljava/lang/String;

    #@18
    const/4 v7, 0x0

    #@19
    invoke-direct {v5, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    #@1c
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v5

    #@28
    invoke-direct {p0, v5}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    #@2b
    .line 110
    iget v5, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    #@2d
    iput v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    .line 112
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@32
    .end local v0    # "buffer":[C
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v4    # "len":I
    :goto_0
    monitor-exit v6

    #@33
    .line 102
    return-void

    #@34
    .line 111
    .restart local v0    # "buffer":[C
    .restart local v3    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v5

    #@35
    .line 112
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    #@38
    .line 111
    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@39
    .line 114
    .end local v0    # "buffer":[C
    .end local v3    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    #@3a
    .line 115
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v5, "DockObserver"

    #@3d
    const-string/jumbo v7, "This kernel does not have dock station support"

    #@40
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@43
    goto :goto_0

    #@44
    .line 103
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v5

    #@45
    monitor-exit v6

    #@46
    throw v5

    #@47
    .line 116
    :catch_1
    move-exception v2

    #@48
    .line 117
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v5, "DockObserver"

    #@4b
    const-string/jumbo v7, ""

    #@4e
    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@51
    goto :goto_0
.end method

.method private setActualDockStateLocked(I)V
    .locals 1
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 123
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    #@2
    .line 124
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    #@9
    .line 122
    :cond_0
    return-void
.end method

.method private setDockStateLocked(I)V
    .locals 4
    .param p1, "newState"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 130
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@3
    if-eq p1, v0, :cond_2

    #@5
    .line 131
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@7
    .line 132
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 134
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    #@d
    if-nez v0, :cond_0

    #@f
    .line 135
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@16
    move-result-object v0

    #@17
    .line 136
    const-string/jumbo v1, "theater_mode_on"

    #@1a
    .line 135
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_1

    #@20
    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    #@22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@25
    move-result-wide v2

    #@26
    .line 138
    const-string/jumbo v1, "android.server:DOCK"

    #@29
    .line 137
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    #@2c
    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    #@2f
    .line 129
    :cond_2
    return-void
.end method

.method private updateLocked()V
    .locals 2

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@5
    .line 147
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@b
    .line 145
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 90
    const/16 v0, 0x226

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 91
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 92
    const/4 v0, 0x1

    #@8
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    #@a
    .line 95
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 96
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit v1

    #@12
    .line 89
    :cond_1
    return-void

    #@13
    .line 91
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "DockObserver"

    #@3
    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 84
    return-void
.end method
