.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
    }
.end annotation


# instance fields
.field mRcc:Landroid/media/RemoteControlClient;

.field mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    #@0
    .prologue
    .line 2071
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    #@3
    .line 2072
    const/high16 v0, 0x800000

    #@5
    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSupportedTypes:I

    #@7
    .line 2073
    const/4 v0, 0x1

    #@8
    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    #@a
    .line 2074
    const/4 v0, 0x0

    #@b
    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    #@d
    .line 2070
    return-void
.end method

.method private configureSessionVolume()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2276
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    #@3
    if-nez v3, :cond_1

    #@5
    .line 2277
    invoke-static {}, Landroid/media/MediaRouter;->-get0()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 2278
    const-string/jumbo v3, "MediaRouter"

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "No Rcc to configure volume for route "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    iget-object v5, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 2280
    :cond_0
    return-void

    #@28
    .line 2282
    :cond_1
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    #@2a
    invoke-virtual {v3}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    #@2d
    move-result-object v1

    #@2e
    .line 2283
    .local v1, "session":Landroid/media/session/MediaSession;
    if-nez v1, :cond_3

    #@30
    .line 2284
    invoke-static {}, Landroid/media/MediaRouter;->-get0()Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 2285
    const-string/jumbo v3, "MediaRouter"

    #@39
    const-string/jumbo v4, "Rcc has no session to configure volume"

    #@3c
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 2287
    :cond_2
    return-void

    #@40
    .line 2289
    :cond_3
    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    #@42
    const/4 v4, 0x1

    #@43
    if-ne v3, v4, :cond_7

    #@45
    .line 2291
    const/4 v2, 0x0

    #@46
    .line 2292
    .local v2, "volumeControl":I
    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    #@48
    packed-switch v3, :pswitch_data_0

    #@4b
    .line 2301
    :goto_0
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@4d
    if-eqz v3, :cond_4

    #@4f
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@51
    invoke-virtual {v3}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getVolumeControl()I

    #@54
    move-result v3

    #@55
    if-eq v3, v2, :cond_6

    #@57
    .line 2303
    :cond_4
    :goto_1
    new-instance v3, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@59
    iget v4, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    #@5b
    iget v5, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    #@5d
    invoke-direct {v3, p0, v2, v4, v5}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;-><init>(Landroid/media/MediaRouter$UserRouteInfo;III)V

    #@60
    iput-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@62
    .line 2304
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@64
    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    #@67
    .line 2275
    .end local v2    # "volumeControl":I
    :cond_5
    :goto_2
    return-void

    #@68
    .line 2294
    .restart local v2    # "volumeControl":I
    :pswitch_0
    const/4 v2, 0x2

    #@69
    .line 2295
    goto :goto_0

    #@6a
    .line 2302
    :cond_6
    iget-object v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@6c
    invoke-virtual {v3}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getMaxVolume()I

    #@6f
    move-result v3

    #@70
    iget v4, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    #@72
    if-eq v3, v4, :cond_5

    #@74
    goto :goto_1

    #@75
    .line 2308
    .end local v2    # "volumeControl":I
    :cond_7
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@77
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@7a
    .line 2309
    .local v0, "bob":Landroid/media/AudioAttributes$Builder;
    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    #@7c
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@7f
    .line 2310
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    #@86
    .line 2311
    iput-object v5, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@88
    goto :goto_2

    #@89
    .line 2292
    nop

    #@8a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlaybackInfoOnRcc()V
    .locals 0

    #@0
    .prologue
    .line 2272
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    #@3
    .line 2271
    return-void
.end method


# virtual methods
.method public getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    #@0
    .prologue
    .line 2149
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    #@2
    return-object v0
.end method

.method public requestSetVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 2227
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 2228
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 2229
    const-string/jumbo v0, "MediaRouter"

    #@c
    const-string/jumbo v1, "Cannot requestSetVolume on user route - no volume callback set"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 2230
    return-void

    #@13
    .line 2232
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@15
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    #@17
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    #@1a
    .line 2226
    :cond_1
    return-void
.end method

.method public requestUpdateVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 2238
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1

    #@5
    .line 2239
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 2240
    const-string/jumbo v0, "MediaRouter"

    #@c
    const-string/jumbo v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 2241
    return-void

    #@13
    .line 2243
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@15
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    #@17
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    #@1a
    .line 2237
    :cond_1
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2111
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mDescription:Ljava/lang/CharSequence;

    #@2
    .line 2112
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    #@5
    .line 2110
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 2159
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    .line 2158
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 2169
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 2168
    return-void
.end method

.method public setName(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 2096
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    #@2
    .line 2097
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    #@5
    .line 2098
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    #@8
    .line 2095
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2082
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    #@2
    .line 2083
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    #@5
    .line 2081
    return-void
.end method

.method public setPlaybackStream(I)V
    .locals 1
    .param p1, "stream"    # I

    #@0
    .prologue
    .line 2265
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2266
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    #@6
    .line 2267
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    #@9
    .line 2264
    :cond_0
    return-void
.end method

.method public setPlaybackType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 2187
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2188
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    #@6
    .line 2189
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    #@9
    .line 2186
    :cond_0
    return-void
.end method

.method public setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "rcc"    # Landroid/media/RemoteControlClient;

    #@0
    .prologue
    .line 2138
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    #@2
    .line 2139
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    #@5
    .line 2137
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2121
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    #@3
    .line 2120
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 2212
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    #@3
    move-result v0

    #@4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@c
    move-result p1

    #@d
    .line 2213
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    #@f
    if-eq v0, p1, :cond_1

    #@11
    .line 2214
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    #@13
    .line 2215
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 2216
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@19
    iget v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    #@1b
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->setCurrentVolume(I)V

    #@1e
    .line 2218
    :cond_0
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@21
    .line 2219
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 2220
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@27
    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    #@2a
    .line 2211
    :cond_1
    return-void
.end method

.method public setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1
    .param p1, "vcb"    # Landroid/media/MediaRouter$VolumeCallback;

    #@0
    .prologue
    .line 2177
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@2
    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    #@5
    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@7
    .line 2176
    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1
    .param p1, "volumeHandling"    # I

    #@0
    .prologue
    .line 2200
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2201
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    #@6
    .line 2202
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    #@9
    .line 2199
    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1
    .param p1, "volumeMax"    # I

    #@0
    .prologue
    .line 2254
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2255
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    #@6
    .line 2256
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    #@9
    .line 2253
    :cond_0
    return-void
.end method
