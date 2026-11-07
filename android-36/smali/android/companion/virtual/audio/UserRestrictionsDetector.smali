.class final Landroid/companion/virtual/audio/UserRestrictionsDetector;
.super Landroid/content/BroadcastReceiver;
.source "UserRestrictionsDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UserRestrictionsDetector"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsUnmuteMicDisallowed:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mUserManager:Landroid/os/UserManager;

.field private blacklist mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    .line 51
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserManager:Landroid/os/UserManager;

    .line 52
    return-void
.end method


# virtual methods
.method blacklist isUnmuteMicrophoneDisallowed()Z
    .registers 3

    .line 56
    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "no_unmute_microphone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 85
    invoke-virtual {p0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->isUnmuteMicrophoneDisallowed()Z

    move-result v1

    .line 86
    .local v1, "isUnmuteMicDisallowed":Z
    iget-object v2, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_13
    iget-boolean v3, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    if-ne v1, v3, :cond_19

    .line 88
    monitor-exit v2

    return-void

    .line 90
    :cond_19
    iput-boolean v1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    .line 91
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_26

    .line 92
    iget-object v2, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    if-eqz v2, :cond_29

    .line 93
    iget-object v2, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    invoke-interface {v2, v1}, Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;->onMicrophoneRestrictionChanged(Z)V

    goto :goto_29

    .line 91
    :catchall_26
    move-exception v3

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v3

    .line 96
    .end local v1    # "isUnmuteMicDisallowed":Z
    :cond_29
    :goto_29
    return-void
.end method

.method blacklist register(Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    .line 62
    iput-object p1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_14
    invoke-virtual {p0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->isUnmuteMicrophoneDisallowed()Z

    move-result v2

    iput-boolean v2, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mIsUnmuteMicDisallowed:Z

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method blacklist unregister()V
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    if-eqz v0, :cond_c

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mUserRestrictionsCallback:Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;

    .line 77
    iget-object v0, p0, Landroid/companion/virtual/audio/UserRestrictionsDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    :cond_c
    return-void
.end method
