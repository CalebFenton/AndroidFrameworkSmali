.class public final Landroid/accessibilityservice/AccessibilityButtonController;
.super Ljava/lang/Object;
.source "AccessibilityButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "A11yButtonController"


# instance fields
.field private greylist-max-o mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$spkb0JBZlw2w-_tdrmD4IfvOXkw(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/AccessibilityButtonController;->lambda$dispatchAccessibilityButtonAvailabilityChanged$1(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tS_dZQc87iPO7qR610zSFJyMmL8(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityButtonController;->lambda$dispatchAccessibilityButtonClicked$0(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .registers 3
    .param p1, "serviceConnection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private synthetic blacklist lambda$dispatchAccessibilityButtonAvailabilityChanged$1(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V
    .registers 3
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    .param p2, "available"    # Z

    .line 189
    invoke-virtual {p1, p0, p2}, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;->onAvailabilityChanged(Landroid/accessibilityservice/AccessibilityButtonController;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$dispatchAccessibilityButtonClicked$0(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 164
    invoke-virtual {p1, p0}, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;->onClicked(Landroid/accessibilityservice/AccessibilityButtonController;)V

    return-void
.end method


# virtual methods
.method greylist-max-o dispatchAccessibilityButtonAvailabilityChanged(Z)V
    .registers 8
    .param p1, "available"    # Z

    .line 174
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_37

    .line 183
    :cond_10
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 184
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_40

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_1d
    if-ge v0, v2, :cond_36

    .line 187
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 188
    .local v3, "callback":Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 189
    .local v4, "handler":Landroid/os/Handler;
    new-instance v5, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3, p1}, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda1;-><init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    .end local v3    # "callback":Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 191
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_36
    return-void

    .line 176
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    :cond_37
    :goto_37
    :try_start_37
    const-string v1, "A11yButtonController"

    const-string v2, "Received accessibility button availability change with no callbacks!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    monitor-exit v0

    return-void

    .line 184
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_40

    throw v1
.end method

.method greylist-max-o dispatchAccessibilityButtonClicked()V
    .registers 7

    .line 150
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_37

    .line 158
    :cond_10
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 159
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_40

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_1d
    if-ge v0, v2, :cond_36

    .line 162
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 163
    .local v3, "callback":Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 164
    .local v4, "handler":Landroid/os/Handler;
    new-instance v5, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Landroid/accessibilityservice/AccessibilityButtonController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    .end local v3    # "callback":Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    .end local v4    # "handler":Landroid/os/Handler;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 166
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_36
    return-void

    .line 152
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    :cond_37
    :goto_37
    :try_start_37
    const-string v1, "A11yButtonController"

    const-string v2, "Received accessibility button click with no callbacks!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v0

    return-void

    .line 159
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public whitelist isAccessibilityButtonAvailable()Z
    .registers 5

    .line 78
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 80
    :try_start_5
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isAccessibilityButtonAvailable()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    .line 81
    :catch_c
    move-exception v0

    .line 82
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "A11yButtonController"

    const-string v3, "Failed to get accessibility button availability."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 84
    return v1

    .line 87
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_18
    return v1
.end method

.method public whitelist registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityButtonController;->registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;)V

    .line 98
    return-void
.end method

.method public whitelist registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_9
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_14

    .line 115
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    .line 118
    :cond_14
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist unregisterAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_6
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_c

    .line 133
    monitor-exit v0

    return-void

    .line 136
    :cond_c
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 137
    .local v1, "keyIndex":I
    if-ltz v1, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 138
    .local v2, "hasKey":Z
    :goto_17
    if-eqz v2, :cond_1e

    .line 139
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 141
    .end local v1    # "keyIndex":I
    .end local v2    # "hasKey":Z
    :cond_1e
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method
