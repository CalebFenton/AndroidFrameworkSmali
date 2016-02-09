.class public abstract Landroid/location/SettingInjectorService;
.super Landroid/app/Service;
.source "SettingInjectorService.java"


# static fields
.field public static final ACTION_INJECTED_SETTING_CHANGED:Ljava/lang/String; = "android.location.InjectedSettingChanged"

.field public static final ACTION_SERVICE_INTENT:Ljava/lang/String; = "android.location.SettingInjectorService"

.field public static final ATTRIBUTES_NAME:Ljava/lang/String; = "injected-location-setting"

.field public static final ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final MESSENGER_KEY:Ljava/lang/String; = "messenger"

.field public static final META_DATA_NAME:Ljava/lang/String; = "android.location.SettingInjectorService"

.field private static final TAG:Ljava/lang/String; = "SettingInjectorService"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 132
    iput-object p1, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    #@5
    .line 131
    return-void
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/location/SettingInjectorService;->onGetEnabled()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    .line 164
    .local v1, "enabled":Z
    invoke-direct {p0, p1, v1}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Z)V

    #@7
    .line 152
    return-void

    #@8
    .line 157
    .end local v1    # "enabled":Z
    :catch_0
    move-exception v0

    #@9
    .line 160
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x1

    #@a
    invoke-direct {p0, p1, v2}, Landroid/location/SettingInjectorService;->sendStatus(Landroid/content/Intent;Z)V

    #@d
    .line 161
    throw v0
.end method

.method private sendStatus(Landroid/content/Intent;Z)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 172
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v2

    #@4
    .line 173
    .local v2, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    .line 174
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "enabled"

    #@c
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@f
    .line 175
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    #@12
    .line 177
    const-string/jumbo v4, "SettingInjectorService"

    #@15
    const/4 v5, 0x3

    #@16
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_0

    #@1c
    .line 178
    const-string/jumbo v4, "SettingInjectorService"

    #@1f
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    iget-object v6, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    const-string/jumbo v6, ": received "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    .line 179
    const-string/jumbo v6, ", enabled="

    #@38
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    .line 179
    const-string/jumbo v6, ", sending message: "

    #@43
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 182
    :cond_0
    const-string/jumbo v4, "messenger"

    #@55
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@58
    move-result-object v3

    #@59
    check-cast v3, Landroid/os/Messenger;

    #@5b
    .line 184
    .local v3, "messenger":Landroid/os/Messenger;
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 171
    :goto_0
    return-void

    #@5f
    .line 185
    :catch_0
    move-exception v1

    #@60
    .line 186
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "SettingInjectorService"

    #@63
    new-instance v5, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    iget-object v6, p0, Landroid/location/SettingInjectorService;->mName:Ljava/lang/String;

    #@6a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    const-string/jumbo v6, ": sending dynamic status failed"

    #@71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7c
    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected abstract onGetEnabled()Z
.end method

.method protected abstract onGetSummary()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    #@0
    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    #@3
    .line 141
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    #@0
    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/location/SettingInjectorService;->onHandleIntent(Landroid/content/Intent;)V

    #@3
    .line 148
    invoke-virtual {p0, p3}, Landroid/location/SettingInjectorService;->stopSelf(I)V

    #@6
    .line 149
    const/4 v0, 0x2

    #@7
    return v0
.end method
