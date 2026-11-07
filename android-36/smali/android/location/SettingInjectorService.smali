.class public abstract Landroid/location/SettingInjectorService;
.super Landroid/app/Service;
.source "SettingInjectorService.java"


# static fields
.field public static final whitelist ACTION_INJECTED_SETTING_CHANGED:Ljava/lang/String; = "android.location.InjectedSettingChanged"

.field public static final whitelist ACTION_SERVICE_INTENT:Ljava/lang/String; = "android.location.SettingInjectorService"

.field public static final whitelist ATTRIBUTES_NAME:Ljava/lang/String; = "injected-location-setting"

.field public static final greylist-max-o ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final greylist-max-o MESSENGER_KEY:Ljava/lang/String; = "messenger"

.field public static final whitelist META_DATA_NAME:Ljava/lang/String; = "android.location.SettingInjectorService"

.field public static final blacklist SUMMARY_KEY:Ljava/lang/String; = "summary"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SettingInjectorService"


# instance fields
.field private final greylist-max-o mName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method private greylist-max-o onHandleIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "summary":Ljava/lang/String;
    const/4 v1, 0x0

    .line 167
    .local v1, "enabled":Z
    :try_start_2
    invoke-virtual {p0}, Landroid/location/SettingInjectorService;->onGetSummary()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 168
    invoke-virtual {p0}, Landroid/location/SettingInjectorService;->onGetEnabled()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_10

    .line 173
    .end local v1    # "enabled":Z
    .local v2, "enabled":Z
    invoke-direct {p0, p1, v0, v2}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    .end local v2    # "enabled":Z
    .restart local v1    # "enabled":Z
    :catchall_10
    move-exception v2

    invoke-direct {p0, p1, v0, v1}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 174
    throw v2
.end method

.method public static final whitelist refreshSettings(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.InjectedSettingChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private blacklist sendStatus(Landroid/content/Intent;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 182
    const-string v0, "messenger"

    const-class v1, Landroid/os/Messenger;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 184
    .local v0, "messenger":Landroid/os/Messenger;
    if-nez v0, :cond_d

    .line 185
    return-void

    .line 188
    :cond_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 189
    .local v1, "message":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "summary"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "enabled"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 194
    const/4 v3, 0x3

    const-string v4, "SettingInjectorService"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": received "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", summary="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", enabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sending message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_66
    :try_start_66
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 203
    goto :goto_83

    .line 201
    :catch_6a
    move-exception v3

    .line 202
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": sending dynamic status failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_83
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract whitelist onGetEnabled()Z
.end method

.method protected abstract whitelist onGetSummary()Ljava/lang/String;
.end method

.method public final whitelist onStart(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 153
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 154
    return-void
.end method

.method public final whitelist onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 158
    invoke-direct {p0, p1}, Landroid/location/SettingInjectorService;->onHandleIntent(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0, p3}, Landroid/location/SettingInjectorService;->stopSelf(I)V

    .line 160
    const/4 v0, 0x2

    return v0
.end method
