.class public Landroid/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$RouteInfo$1;
    }
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x3

.field public static final STATUS_CONNECTED:I = 0x6

.field public static final STATUS_CONNECTING:I = 0x2

.field public static final STATUS_IN_USE:I = 0x5

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_NOT_AVAILABLE:I = 0x4

.field public static final STATUS_SCANNING:I = 0x1


# instance fields
.field final mCategory:Landroid/media/MediaRouter$RouteCategory;

.field mDescription:Ljava/lang/CharSequence;

.field mDeviceAddress:Ljava/lang/String;

.field mEnabled:Z

.field mGlobalRouteId:Ljava/lang/String;

.field mGroup:Landroid/media/MediaRouter$RouteGroup;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/CharSequence;

.field mNameResId:I

.field mPlaybackStream:I

.field mPlaybackType:I

.field mPresentationDisplay:Landroid/view/Display;

.field mPresentationDisplayId:I

.field private mRealStatusCode:I

.field final mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

.field private mResolvedStatusCode:I

.field private mStatus:Ljava/lang/CharSequence;

.field mSupportedTypes:I

.field private mTag:Ljava/lang/Object;

.field mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I


# direct methods
.method static synthetic -get0(Landroid/media/MediaRouter$RouteInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    #@2
    return v0
.end method

.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 3
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    #@0
    .prologue
    const/16 v2, 0xf

    #@2
    const/4 v1, 0x1

    #@3
    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1477
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@9
    .line 1478
    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    #@b
    .line 1479
    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    #@d
    .line 1480
    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    #@f
    .line 1481
    const/4 v0, 0x3

    #@10
    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@12
    .line 1484
    const/4 v0, -0x1

    #@13
    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    #@15
    .line 1487
    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    #@17
    .line 1950
    new-instance v0, Landroid/media/MediaRouter$RouteInfo$1;

    #@19
    invoke-direct {v0, p0}, Landroid/media/MediaRouter$RouteInfo$1;-><init>(Landroid/media/MediaRouter$RouteInfo;)V

    #@1c
    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    #@1e
    .line 1535
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    #@20
    .line 1534
    return-void
.end method

.method private choosePresentationDisplay()Landroid/view/Display;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1867
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@4
    and-int/lit8 v3, v3, 0x2

    #@6
    if-eqz v3, :cond_6

    #@8
    .line 1868
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@a
    invoke-virtual {v3}, Landroid/media/MediaRouter$Static;->getAllPresentationDisplays()[Landroid/view/Display;

    #@d
    move-result-object v1

    #@e
    .line 1873
    .local v1, "displays":[Landroid/view/Display;
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    #@10
    if-ltz v3, :cond_2

    #@12
    .line 1874
    array-length v3, v1

    #@13
    :goto_0
    if-ge v2, v3, :cond_1

    #@15
    aget-object v0, v1, v2

    #@17
    .line 1875
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    #@1a
    move-result v4

    #@1b
    iget v5, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    #@1d
    if-ne v4, v5, :cond_0

    #@1f
    .line 1876
    return-object v0

    #@20
    .line 1874
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1879
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    return-object v6

    #@24
    .line 1883
    :cond_2
    iget-object v3, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@26
    if-eqz v3, :cond_5

    #@28
    .line 1884
    array-length v3, v1

    #@29
    :goto_1
    if-ge v2, v3, :cond_4

    #@2b
    aget-object v0, v1, v2

    #@2d
    .line 1885
    .restart local v0    # "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    #@30
    move-result v4

    #@31
    const/4 v5, 0x3

    #@32
    if-ne v4, v5, :cond_3

    #@34
    .line 1886
    iget-object v4, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@36
    invoke-virtual {v0}, Landroid/view/Display;->getAddress()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v4

    #@3e
    .line 1885
    if-eqz v4, :cond_3

    #@40
    .line 1887
    return-object v0

    #@41
    .line 1884
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1

    #@44
    .line 1890
    .end local v0    # "display":Landroid/view/Display;
    :cond_4
    return-object v6

    #@45
    .line 1894
    :cond_5
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@47
    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@49
    if-ne p0, v3, :cond_6

    #@4b
    array-length v3, v1

    #@4c
    if-lez v3, :cond_6

    #@4e
    .line 1895
    aget-object v2, v1, v2

    #@50
    return-object v2

    #@51
    .line 1898
    .end local v1    # "displays":[Landroid/view/Display;
    :cond_6
    return-object v6
.end method


# virtual methods
.method public getCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    #@0
    .prologue
    .line 1689
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1584
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1903
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGroup()Landroid/media/MediaRouter$RouteGroup;
    .locals 1

    #@0
    .prologue
    .line 1682
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@2
    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 1699
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1549
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    #@4
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1564
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 1568
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1569
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    #@6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@c
    return-object v0

    #@d
    .line 1571
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    #@f
    return-object v0
.end method

.method public getPlaybackStream()I
    .locals 1

    #@0
    .prologue
    .line 1739
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@2
    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    #@0
    .prologue
    .line 1731
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@2
    return v0
.end method

.method public getPresentationDisplay()Landroid/view/Display;
    .locals 1

    #@0
    .prologue
    .line 1854
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    #@2
    return-object v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1592
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    #@0
    .prologue
    .line 1663
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    #@2
    return v0
.end method

.method public getSupportedTypes()I
    .locals 1

    #@0
    .prologue
    .line 1670
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@2
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1723
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getVolume()I
    .locals 4

    #@0
    .prologue
    .line 1750
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1751
    const/4 v1, 0x0

    #@5
    .line 1753
    .local v1, "vol":I
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@7
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@9
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@b
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    .line 1757
    :goto_0
    return v1

    #@10
    .line 1754
    :catch_0
    move-exception v0

    #@11
    .line 1755
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaRouter"

    #@14
    const-string/jumbo v3, "Error getting local stream volume"

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0

    #@1b
    .line 1759
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "vol":I
    :cond_0
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    #@1d
    return v2
.end method

.method public getVolumeHandling()I
    .locals 1

    #@0
    .prologue
    .line 1822
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    #@2
    return v0
.end method

.method public getVolumeMax()I
    .locals 4

    #@0
    .prologue
    .line 1804
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1805
    const/4 v1, 0x0

    #@5
    .line 1807
    .local v1, "volMax":I
    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@7
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@9
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@b
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    .line 1811
    :goto_0
    return v1

    #@10
    .line 1808
    :catch_0
    move-exception v0

    #@11
    .line 1809
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaRouter"

    #@14
    const-string/jumbo v3, "Error getting local stream volume"

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0

    #@1b
    .line 1813
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "volMax":I
    :cond_0
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    #@1d
    return v2
.end method

.method public isConnecting()Z
    .locals 2

    #@0
    .prologue
    .line 1922
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isDefault()Z
    .locals 1

    #@0
    .prologue
    .line 1932
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    #@4
    if-ne p0, v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1912
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    #@2
    return v0
.end method

.method public isSelected()Z
    .locals 1

    #@0
    .prologue
    .line 1927
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    #@4
    if-ne p0, v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public matchesTypes(I)Z
    .locals 2
    .param p1, "types"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1675
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public requestSetVolume(I)V
    .locals 5
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 1768
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1770
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@6
    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@8
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@a
    .line 1771
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 1770
    const/4 v4, 0x0

    #@f
    invoke-interface {v1, v2, p1, v4, v3}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1767
    :goto_0
    return-void

    #@13
    .line 1772
    :catch_0
    move-exception v0

    #@14
    .line 1773
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaRouter"

    #@17
    const-string/jumbo v2, "Error setting local stream volume"

    #@1a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0

    #@1e
    .line 1776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@20
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaRouter$Static;->requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    #@23
    goto :goto_0
.end method

.method public requestUpdateVolume(I)V
    .locals 6
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 1785
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1788
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    #@7
    move-result v2

    #@8
    add-int/2addr v2, p1

    #@9
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    #@c
    move-result v3

    #@d
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v2

    #@11
    const/4 v3, 0x0

    #@12
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v1

    #@16
    .line 1789
    .local v1, "volume":I
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@18
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    #@1a
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    #@1c
    .line 1790
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    .line 1789
    const/4 v5, 0x0

    #@21
    invoke-interface {v2, v3, v1, v5, v4}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 1784
    .end local v1    # "volume":I
    :goto_0
    return-void

    #@25
    .line 1791
    :catch_0
    move-exception v0

    #@26
    .line 1792
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaRouter"

    #@29
    const-string/jumbo v3, "Error setting local stream volume"

    #@2c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2f
    goto :goto_0

    #@30
    .line 1795
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@32
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaRouter$Static;->requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    #@35
    goto :goto_0
.end method

.method resolveStatusCode()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1612
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    #@3
    .line 1613
    .local v1, "statusCode":I
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1614
    packed-switch v1, :pswitch_data_0

    #@c
    .line 1627
    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    #@e
    if-ne v2, v1, :cond_1

    #@10
    .line 1628
    return v3

    #@11
    .line 1623
    :pswitch_1
    const/4 v1, 0x2

    #@12
    .line 1624
    goto :goto_0

    #@13
    .line 1631
    :cond_1
    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    #@15
    .line 1633
    packed-switch v1, :pswitch_data_1

    #@18
    .line 1652
    const/4 v0, 0x0

    #@19
    .line 1655
    .local v0, "resId":I
    :goto_1
    if-eqz v0, :cond_2

    #@1b
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@1d
    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    #@1f
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    :goto_2
    iput-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    #@25
    .line 1656
    const/4 v2, 0x1

    #@26
    return v2

    #@27
    .line 1635
    .end local v0    # "resId":I
    :pswitch_2
    const v0, 0x10404b9

    #@2a
    .line 1636
    .restart local v0    # "resId":I
    goto :goto_1

    #@2b
    .line 1638
    .end local v0    # "resId":I
    :pswitch_3
    const v0, 0x10404ba

    #@2e
    .line 1639
    .restart local v0    # "resId":I
    goto :goto_1

    #@2f
    .line 1641
    .end local v0    # "resId":I
    :pswitch_4
    const v0, 0x10404bb

    #@32
    .line 1642
    .restart local v0    # "resId":I
    goto :goto_1

    #@33
    .line 1644
    .end local v0    # "resId":I
    :pswitch_5
    const v0, 0x10404bc

    #@36
    .line 1645
    .restart local v0    # "resId":I
    goto :goto_1

    #@37
    .line 1647
    .end local v0    # "resId":I
    :pswitch_6
    const v0, 0x10404bd

    #@3a
    .line 1648
    .restart local v0    # "resId":I
    goto :goto_1

    #@3b
    .line 1655
    :cond_2
    const/4 v2, 0x0

    #@3c
    goto :goto_2

    #@3d
    .line 1614
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@48
    .line 1633
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method routeUpdated()V
    .locals 0

    #@0
    .prologue
    .line 1969
    invoke-static {p0}, Landroid/media/MediaRouter;->updateRoute(Landroid/media/MediaRouter$RouteInfo;)V

    #@3
    .line 1968
    return-void
.end method

.method public select()V
    .locals 2

    #@0
    .prologue
    .line 1937
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, p0, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    #@6
    .line 1936
    return-void
.end method

.method setRealStatusCode(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    #@0
    .prologue
    .line 1600
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1601
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    #@6
    .line 1602
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1604
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method setStatusInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1941
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 1942
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    #@a
    .line 1943
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1944
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    #@10
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$RouteGroup;->memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V

    #@13
    .line 1946
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    #@16
    .line 1940
    :cond_1
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1714
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    #@2
    .line 1715
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    #@5
    .line 1713
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1974
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    #@3
    move-result v1

    #@4
    invoke-static {v1}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1975
    .local v0, "supportedTypes":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "{ name="

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 1976
    const-string/jumbo v2, ", description="

    #@2b
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 1976
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    #@32
    move-result-object v2

    #@33
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 1977
    const-string/jumbo v2, ", status="

    #@3a
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 1977
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    #@41
    move-result-object v2

    #@42
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 1978
    const-string/jumbo v2, ", category="

    #@49
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 1978
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    #@50
    move-result-object v2

    #@51
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 1979
    const-string/jumbo v2, ", supportedTypes="

    #@58
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    .line 1980
    const-string/jumbo v2, ", presentationDisplay="

    #@63
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    .line 1980
    iget-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    #@69
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 1980
    const-string/jumbo v2, " }"

    #@70
    .line 1975
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    return-object v1
.end method

.method updatePresentationDisplay()Z
    .locals 2

    #@0
    .prologue
    .line 1858
    invoke-direct {p0}, Landroid/media/MediaRouter$RouteInfo;->choosePresentationDisplay()Landroid/view/Display;

    #@3
    move-result-object v0

    #@4
    .line 1859
    .local v0, "display":Landroid/view/Display;
    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    #@6
    if-eq v1, v0, :cond_0

    #@8
    .line 1860
    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    #@a
    .line 1861
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 1863
    :cond_0
    const/4 v1, 0x0

    #@d
    return v1
.end method
