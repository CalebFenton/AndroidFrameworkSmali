.class public abstract Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.super Ljava/lang/Object;
.source "RemoteDisplayProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;,
        Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
    }
.end annotation


# static fields
.field public static final DISCOVERY_MODE_ACTIVE:I = 0x2

.field public static final DISCOVERY_MODE_NONE:I = 0x0

.field public static final DISCOVERY_MODE_PASSIVE:I = 0x1

.field private static final MSG_ADJUST_VOLUME:I = 0x6

.field private static final MSG_CONNECT:I = 0x3

.field private static final MSG_DISCONNECT:I = 0x4

.field private static final MSG_SET_CALLBACK:I = 0x1

.field private static final MSG_SET_DISCOVERY_MODE:I = 0x2

.field private static final MSG_SET_VOLUME:I = 0x5

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.remotedisplay.RemoteDisplayProvider"


# instance fields
.field private mCallback:Landroid/media/IRemoteDisplayCallback;

.field private final mContext:Landroid/content/Context;

.field private mDiscoveryMode:I

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/media/remotedisplay/RemoteDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;

.field private final mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;


# direct methods
.method static synthetic -get0(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 103
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@a
    .line 106
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    #@d
    .line 148
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    #@f
    .line 149
    new-instance v0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    #@11
    invoke-direct {v0, p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;-><init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)V

    #@14
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    #@16
    .line 150
    new-instance v0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@18
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;-><init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;Landroid/os/Looper;)V

    #@1f
    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    #@21
    .line 147
    return-void
.end method


# virtual methods
.method public addDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    #@0
    .prologue
    .line 240
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "display"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 244
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    #@23
    .line 239
    return-void
.end method

.method public findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/media/remotedisplay/RemoteDisplay;

    #@8
    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    #@2
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getDiscoveryMode()I
    .locals 1

    #@0
    .prologue
    .line 221
    iget v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    #@2
    return v0
.end method

.method public getDisplays()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/media/remotedisplay/RemoteDisplay;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSettingsPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 289
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 290
    new-instance v0, Landroid/content/Intent;

    #@8
    const-string/jumbo v1, "android.settings.CAST_SETTINGS"

    #@b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 291
    .local v0, "settingsIntent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@13
    .line 295
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    #@15
    .line 294
    invoke-static {v1, v2, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    #@1b
    .line 297
    .end local v0    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    #@1d
    return-object v1
.end method

.method public onAdjustVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;
    .param p2, "delta"    # I

    #@0
    .prologue
    .line 212
    return-void
.end method

.method public onConnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    #@0
    .prologue
    .line 186
    return-void
.end method

.method public onDisconnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    #@0
    .prologue
    .line 194
    return-void
.end method

.method public onDiscoveryModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 178
    return-void
.end method

.method public onSetVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V
    .locals 0
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;
    .param p2, "volume"    # I

    #@0
    .prologue
    .line 203
    return-void
.end method

.method publishState()V
    .locals 7

    #@0
    .prologue
    .line 313
    iget-object v5, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    #@2
    if-eqz v5, :cond_1

    #@4
    .line 314
    new-instance v4, Landroid/media/RemoteDisplayState;

    #@6
    invoke-direct {v4}, Landroid/media/RemoteDisplayState;-><init>()V

    #@9
    .line 315
    .local v4, "state":Landroid/media/RemoteDisplayState;
    iget-object v5, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v0

    #@f
    .line 316
    .local v0, "count":I
    const/4 v3, 0x0

    #@10
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@12
    .line 317
    iget-object v5, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/media/remotedisplay/RemoteDisplay;

    #@1a
    .line 318
    .local v1, "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    iget-object v5, v4, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getInfo()Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 316
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 321
    .end local v1    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    #@28
    invoke-interface {v5, v4}, Landroid/media/IRemoteDisplayCallback;->onStateChanged(Landroid/media/RemoteDisplayState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 312
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "state":Landroid/media/RemoteDisplayState;
    :cond_1
    :goto_1
    return-void

    #@2c
    .line 322
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "state":Landroid/media/RemoteDisplayState;
    :catch_0
    move-exception v2

    #@2d
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public removeDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    #@0
    .prologue
    .line 266
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    if-eq v0, p1, :cond_1

    #@e
    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "display"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 270
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    #@23
    .line 265
    return-void
.end method

.method setCallback(Landroid/media/IRemoteDisplayCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/IRemoteDisplayCallback;

    #@0
    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    #@2
    .line 302
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    #@5
    .line 300
    return-void
.end method

.method setDiscoveryMode(I)V
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 306
    iget v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 307
    iput p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    #@6
    .line 308
    invoke-virtual {p0, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onDiscoveryModeChanged(I)V

    #@9
    .line 305
    :cond_0
    return-void
.end method

.method public updateDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    #@0
    .prologue
    .line 254
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    if-eq v0, p1, :cond_1

    #@e
    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "display"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    #@1a
    .line 253
    return-void
.end method
