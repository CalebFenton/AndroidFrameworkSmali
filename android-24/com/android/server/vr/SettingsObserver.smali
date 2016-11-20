.class public Lcom/android/server/vr/SettingsObserver;
.super Ljava/lang/Object;
.source "SettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    }
.end annotation


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mSecureSettingName:Ljava/lang/String;

.field private final mSettingRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/vr/SettingsObserver$SettingChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/vr/SettingsObserver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/vr/SettingsObserver;->sendSettingChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/SettingsObserver;->sendSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "settingUri"    # Landroid/net/Uri;
    .param p4, "secureSettingName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v1, Landroid/util/ArraySet;

    #@5
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    #@a
    .line 69
    iput-object p4, p0, Lcom/android/server/vr/SettingsObserver;->mSecureSettingName:Ljava/lang/String;

    #@c
    .line 70
    new-instance v1, Lcom/android/server/vr/SettingsObserver$1;

    #@e
    invoke-direct {v1, p0, p4}, Lcom/android/server/vr/SettingsObserver$1;-><init>(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;)V

    #@11
    iput-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mSettingRestoreReceiver:Landroid/content/BroadcastReceiver;

    #@13
    .line 84
    new-instance v1, Lcom/android/server/vr/SettingsObserver$2;

    #@15
    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/vr/SettingsObserver$2;-><init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V

    #@18
    iput-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mContentObserver:Landroid/database/ContentObserver;

    #@1a
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1d
    move-result-object v0

    #@1e
    .line 94
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mContentObserver:Landroid/database/ContentObserver;

    #@20
    const/4 v2, 0x0

    #@21
    .line 95
    const/4 v3, -0x1

    #@22
    .line 94
    invoke-virtual {v0, p3, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@25
    .line 67
    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lcom/android/server/vr/SettingsObserver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "settingName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    .line 110
    .local v0, "settingUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/vr/SettingsObserver;

    #@6
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/vr/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V

    #@9
    return-object v1
.end method

.method private sendSettingChanged()V
    .locals 3

    #@0
    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    #@12
    .line 134
    .local v0, "l":Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    invoke-interface {v0}, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;->onSettingChanged()V

    #@15
    goto :goto_0

    #@16
    .line 132
    .end local v0    # "l":Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    :cond_0
    return-void
.end method

.method private sendSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    #@12
    .line 140
    .local v0, "l":Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V

    #@15
    goto :goto_0

    #@16
    .line 138
    .end local v0    # "l":Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 118
    return-void
.end method

.method public removeListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 127
    return-void
.end method
