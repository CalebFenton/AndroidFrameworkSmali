.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field public static final DISABLE2_MASK:I = 0x1

.field public static final DISABLE2_NONE:I = 0x0

.field public static final DISABLE2_QUICK_SETTINGS:I = 0x1

.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_CLOCK:I = 0x800000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_MASK:I = 0x3ff0000

.field public static final DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SEARCH:I = 0x2000000

.field public static final DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final NAVIGATION_HINT_BACK_ALT:I = 0x1

.field public static final NAVIGATION_HINT_IME_SHOWN:I = 0x2

.field public static final WINDOW_NAVIGATION_BAR:I = 0x2

.field public static final WINDOW_STATE_HIDDEN:I = 0x2

.field public static final WINDOW_STATE_HIDING:I = 0x1

.field public static final WINDOW_STATE_SHOWING:I = 0x0

.field public static final WINDOW_STATUS_BAR:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    new-instance v0, Landroid/os/Binder;

    #@5
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    #@a
    .line 98
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    #@c
    .line 97
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 104
    const-string/jumbo v0, "statusbar"

    #@8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    .line 103
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    #@12
    .line 105
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    #@14
    if-nez v0, :cond_0

    #@16
    .line 106
    const-string/jumbo v0, "StatusBarManager"

    #@19
    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    #@1c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 109
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    return-object v0

    #@23
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
.end method

.method public static windowStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 230
    const/4 v0, 0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const-string/jumbo v0, "WINDOW_STATE_HIDING"

    #@6
    return-object v0

    #@7
    .line 231
    :cond_0
    const/4 v0, 0x2

    #@8
    if-ne p0, v0, :cond_1

    #@a
    const-string/jumbo v0, "WINDOW_STATE_HIDDEN"

    #@d
    return-object v0

    #@e
    .line 232
    :cond_1
    if-nez p0, :cond_2

    #@10
    const-string/jumbo v0, "WINDOW_STATE_SHOWING"

    #@13
    return-object v0

    #@14
    .line 233
    :cond_2
    const-string/jumbo v0, "WINDOW_STATE_UNKNOWN"

    #@17
    return-object v0
.end method


# virtual methods
.method public collapsePanels()V
    .locals 3

    #@0
    .prologue
    .line 166
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v1

    #@4
    .line 167
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@6
    .line 168
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 164
    :cond_0
    return-void

    #@a
    .line 170
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    #@b
    .line 172
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v2
.end method

.method public disable(I)V
    .locals 4
    .param p1, "what"    # I

    #@0
    .prologue
    .line 118
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v1

    #@4
    .line 119
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@6
    .line 120
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    #@8
    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 116
    :cond_0
    return-void

    #@12
    .line 122
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    #@13
    .line 124
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v2
.end method

.method public disable2(I)V
    .locals 4
    .param p1, "what"    # I

    #@0
    .prologue
    .line 136
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v1

    #@4
    .line 137
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@6
    .line 138
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    #@8
    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 134
    :cond_0
    return-void

    #@12
    .line 140
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    #@13
    .line 142
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v2
.end method

.method public expandNotificationsPanel()V
    .locals 3

    #@0
    .prologue
    .line 151
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v1

    #@4
    .line 152
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@6
    .line 153
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 149
    :cond_0
    return-void

    #@a
    .line 155
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    #@b
    .line 157
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v2
.end method

.method public expandSettingsPanel()V
    .locals 3

    #@0
    .prologue
    .line 181
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v1

    #@4
    .line 182
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@6
    .line 183
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 179
    :cond_0
    return-void

    #@a
    .line 185
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    #@b
    .line 187
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v2
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;

    #@0
    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v1

    #@4
    .line 207
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@6
    .line 208
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 204
    :cond_0
    return-void

    #@a
    .line 210
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    #@b
    .line 212
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v2
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconLevel"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v0

    #@4
    .line 194
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    #@6
    .line 195
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    move-object v1, p1

    #@d
    move v3, p2

    #@e
    move v4, p3

    #@f
    move-object v5, p4

    #@10
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 191
    :cond_0
    return-void

    #@14
    .line 198
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v6

    #@15
    .line 200
    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 218
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v1

    #@4
    .line 219
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    #@6
    .line 220
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 216
    :cond_0
    return-void

    #@a
    .line 222
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    #@b
    .line 224
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v2
.end method
