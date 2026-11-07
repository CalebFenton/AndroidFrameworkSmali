.class public abstract Landroid/provider/CloudMediaProvider;
.super Landroid/content/ContentProvider;
.source "CloudMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;,
        Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;,
        Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;,
        Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_LOOPING_PLAYBACK_ENABLED:Z = true

.field private static final blacklist DEFAULT_SURFACE_CONTROLLER_AUDIO_MUTE_ENABLED:Z = false

.field private static final blacklist MATCH_ALBUMS:I = 0x3

.field private static final blacklist MATCH_DELETED_MEDIAS:I = 0x2

.field private static final blacklist MATCH_MEDIAS:I = 0x1

.field private static final blacklist MATCH_MEDIAS_IN_MEDIA_SET:I = 0xa

.field private static final blacklist MATCH_MEDIA_CATEGORIES:I = 0x6

.field private static final blacklist MATCH_MEDIA_COLLECTION_INFO:I = 0x4

.field private static final blacklist MATCH_MEDIA_SETS:I = 0x7

.field private static final blacklist MATCH_SEARCH:I = 0x9

.field private static final blacklist MATCH_SEARCH_SUGGESTION:I = 0x8

.field private static final blacklist MATCH_SURFACE_CONTROLLER:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "CloudMediaProvider"


# instance fields
.field private blacklist mAuthority:Ljava/lang/String;

.field private final blacklist mMatcher:Landroid/content/UriMatcher;

.field private volatile blacklist mMediaStoreAuthorityAppId:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 128
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 145
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method private blacklist callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 737
    if-nez p3, :cond_8

    .line 738
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p3, v0

    .line 740
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 741
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "android:getMediaCollectionInfo"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 743
    .local v1, "startTime":J
    invoke-virtual {p0, p3}, Landroid/provider/CloudMediaProvider;->onGetMediaCollectionInfo(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 744
    new-instance v3, Landroid/provider/CmpApiResult;

    const-string v4, "onGetMediaCollectionInfo"

    invoke-direct {v3, v4, v0}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    iget-object v6, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 744
    invoke-static {v3, v4, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 747
    .end local v1    # "startTime":J
    goto :goto_76

    :cond_2f
    const-string v1, "android:createSurfaceController"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 748
    invoke-direct {p0, p3}, Landroid/provider/CloudMediaProvider;->onCreateCloudMediaSurfaceController(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_76

    .line 749
    :cond_3c
    const-string v1, "android:getAsyncContentProvider"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 750
    invoke-virtual {p0}, Landroid/provider/CloudMediaProvider;->onGetAsyncContentProvider()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_76

    .line 751
    :cond_49
    invoke-static {}, Landroid/provider/media/internal/flags/Flags;->enableCloudMediaProviderCapabilities()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 752
    const-string v1, "android:getCapabilities"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 755
    .restart local v1    # "startTime":J
    invoke-virtual {p0}, Landroid/provider/CloudMediaProvider;->onGetCapabilities()Landroid/provider/CloudMediaProviderContract$Capabilities;

    move-result-object v3

    .line 756
    .local v3, "capabilities":Landroid/provider/CloudMediaProviderContract$Capabilities;
    const-string v4, "android.provider.extra.PROVIDER_CAPABILITIES"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 758
    new-instance v4, Landroid/provider/CmpApiResult;

    const-string v5, "OnGetCapabilities"

    invoke-direct {v4, v5, v0}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    iget-object v7, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 758
    invoke-static {v4, v5, v6, v7}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 761
    .end local v1    # "startTime":J
    .end local v3    # "capabilities":Landroid/provider/CloudMediaProviderContract$Capabilities;
    nop

    .line 764
    :goto_76
    return-object v0

    .line 762
    :cond_77
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method not supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist onCreateCloudMediaSurfaceController(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 768
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string v0, "android.provider.extra.SURFACE_STATE_CALLBACK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 771
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_5b

    .line 775
    const/4 v1, 0x1

    const-string v2, "android.provider.extra.LOOPING_PLAYBACK_ENABLED"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 777
    .local v1, "enableLoop":Z
    const/4 v3, 0x0

    const-string v4, "android.provider.extra.SURFACE_CONTROLLER_AUDIO_MUTE_ENABLED"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 779
    .local v3, "muteAudio":Z
    const-string v5, "android.provider.extra.authority"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 780
    .local v6, "authority":Ljava/lang/String;
    new-instance v7, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;

    .line 782
    invoke-static {v0}, Landroid/provider/ICloudMediaSurfaceStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/provider/ICloudMediaSurfaceStateChangedCallback;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;-><init>(Landroid/provider/ICloudMediaSurfaceStateChangedCallback;)V

    .line 783
    .local v7, "callback":Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 784
    .local v8, "config":Landroid/os/Bundle;
    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 785
    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 786
    invoke-virtual {v8, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    nop

    .line 788
    invoke-virtual {p0, v8, v7}, Landroid/provider/CloudMediaProvider;->onCreateCloudMediaSurfaceController(Landroid/os/Bundle;Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;)Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;

    move-result-object v2

    .line 789
    .local v2, "controller":Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;
    if-nez v2, :cond_47

    .line 790
    const-string v4, "CloudMediaProvider"

    const-string v5, "onCreateCloudMediaSurfaceController returned null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v4

    .line 794
    :cond_47
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v4, "result":Landroid/os/Bundle;
    new-instance v5, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;

    invoke-direct {v5, v2}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;-><init>(Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;)V

    .line 796
    invoke-virtual {v5}, Landroid/provider/CloudMediaProvider$CloudMediaSurfaceControllerWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 795
    const-string v9, "android.provider.extra.SURFACE_CONTROLLER"

    invoke-virtual {v4, v9, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 797
    return-object v4

    .line 772
    .end local v1    # "enableLoop":Z
    .end local v2    # "controller":Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;
    .end local v3    # "muteAudio":Z
    .end local v4    # "result":Landroid/os/Bundle;
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "callback":Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;
    .end local v8    # "config":Landroid/os/Bundle;
    :cond_5b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing surface state callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist registerAuthority(Ljava/lang/String;)V
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "deleted_media"

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "album"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "media_collection_info"

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "surface_controller"

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "media_category"

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "media_set"

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_suggestion"

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "search_media"

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    iget-object v0, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string v1, "query_media_in_media_set"

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    return-void
.end method


# virtual methods
.method public final whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 156
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/CloudMediaProvider;->registerAuthority(Ljava/lang/String;)V

    .line 158
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 159
    return-void
.end method

.method public final whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 722
    const-string v0, "android:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 724
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 728
    :cond_d
    :try_start_d
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/CloudMediaProvider;->callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    .line 729
    :catch_12
    move-exception v0

    .line 730
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 999
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canonicalize not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 1047
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 989
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getType not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1037
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onCreateCloudMediaSurfaceController(Landroid/os/Bundle;Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;)Landroid/provider/CloudMediaProvider$CloudMediaSurfaceController;
    .registers 4
    .param p1, "config"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/provider/CloudMediaProvider$CloudMediaSurfaceStateChangedCallback;

    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist onGetAsyncContentProvider()Landroid/os/Bundle;
    .registers 4

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;-><init>(Landroid/provider/CloudMediaProvider;Landroid/provider/CloudMediaProvider-IA;)V

    .line 184
    invoke-virtual {v1}, Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 183
    const-string v2, "android.provider.extra.ASYNC_CONTENT_PROVIDER"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    return-object v0
.end method

.method public whitelist onGetCapabilities()Landroid/provider/CloudMediaProviderContract$Capabilities;
    .registers 2

    .line 206
    new-instance v0, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;

    invoke-direct {v0}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/provider/CloudMediaProviderContract$Capabilities$Builder;->build()Landroid/provider/CloudMediaProviderContract$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onGetMediaCollectionInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract whitelist onOpenMedia(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist onOpenPreview(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist onQueryAlbums(Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "queryAlbums not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onQueryDeletedMedia(Landroid/os/Bundle;)Landroid/database/Cursor;
.end method

.method public abstract whitelist onQueryMedia(Landroid/os/Bundle;)Landroid/database/Cursor;
.end method

.method public whitelist onQueryMediaCategories(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6
    .param p1, "parentCategoryId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onQueryMediaCategories is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onQueryMediaInMediaSet(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6
    .param p1, "mediaSetId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onQueryMediaInMediaSet is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onQueryMediaSets(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6
    .param p1, "mediaCategoryId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onQueryMediaSets is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onQuerySearchSuggestions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6
    .param p1, "prefixText"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 465
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onQuerySearchSuggestions is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onSearchMedia(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 643
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onSearchMedia for search text is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onSearchMedia(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 7
    .param p1, "suggestedMediaSetId"    # Ljava/lang/String;
    .param p2, "fallbackSearchText"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 583
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onSearchMedia for suggestion media set id is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/provider/CloudMediaProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 821
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "mediaId":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 824
    .local v1, "startTime":J
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p3}, Landroid/provider/CloudMediaProvider;->onOpenMedia(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 825
    .local v3, "result":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/provider/CmpApiResult;

    const-string v5, "onOpenMedia"

    invoke-direct {v4, v5, v3}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    iget-object v7, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 825
    invoke-static {v4, v5, v6, v7}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 828
    return-object v3
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 841
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/provider/CloudMediaProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 855
    move-object/from16 v0, p3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, "mediaId":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 857
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 859
    .local v3, "previewSize":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/provider/CloudMediaProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 860
    .local v4, "screenMetrics":Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 862
    .local v5, "minPreviewLength":I
    if-eqz v0, :cond_42

    .line 863
    const-string v6, "android.provider.extra.MEDIASTORE_THUMB"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 865
    const-string v6, "android.provider.extra.PREVIEW_THUMBNAIL"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 866
    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 867
    div-int/lit8 v5, v5, 0x2

    .line 870
    :cond_39
    const-string v6, "android.content.extra.SIZE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/graphics/Point;

    .line 873
    :cond_42
    if-nez v3, :cond_4a

    .line 874
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v6

    .line 877
    :cond_4a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 878
    .local v6, "startTime":J
    move-object/from16 v8, p4

    invoke-virtual {p0, v1, v3, v2, v8}, Landroid/provider/CloudMediaProvider;->onOpenPreview(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    .line 879
    .local v9, "result":Landroid/content/res/AssetFileDescriptor;
    new-instance v10, Landroid/provider/CmpApiResult;

    const-string v11, "onOpenPreview"

    invoke-direct {v10, v11, v9, v3}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Landroid/graphics/Point;)V

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    iget-object v13, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 879
    invoke-static {v10, v11, v12, v13}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 882
    return-object v9
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 896
    if-nez p3, :cond_8

    .line 897
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p3, v0

    .line 900
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 901
    .local v0, "startTime":J
    iget-object v2, p0, Landroid/provider/CloudMediaProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const-string v3, "media_set_id"

    packed-switch v2, :pswitch_data_12a

    .line 977
    :pswitch_17
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 949
    :pswitch_30
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "mediaSetId":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, v2, p3, p4}, Landroid/provider/CloudMediaProvider;->onQueryMediaInMediaSet(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 952
    .local v3, "result":Landroid/database/Cursor;
    new-instance v4, Landroid/provider/CmpApiResult;

    const-string v5, "onQueryMediaInMediaSet"

    invoke-direct {v4, v5, v3}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v7, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 952
    invoke-static {v4, v5, v6, v7}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 956
    goto/16 :goto_129

    .line 958
    .end local v2    # "mediaSetId":Ljava/lang/String;
    .end local v3    # "result":Landroid/database/Cursor;
    :pswitch_4e
    const-string v2, "search_text"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 959
    .local v4, "searchText":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 961
    .local v2, "searchMediaSetId":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 962
    if-eqz v2, :cond_65

    .line 963
    invoke-virtual {p0, v2, v4, p3, p4}, Landroid/provider/CloudMediaProvider;->onSearchMedia(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .restart local v3    # "result":Landroid/database/Cursor;
    goto :goto_6b

    .line 965
    .end local v3    # "result":Landroid/database/Cursor;
    :cond_65
    if-eqz v4, :cond_7e

    .line 966
    invoke-virtual {p0, v4, p3, p4}, Landroid/provider/CloudMediaProvider;->onSearchMedia(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 971
    .restart local v3    # "result":Landroid/database/Cursor;
    :goto_6b
    new-instance v5, Landroid/provider/CmpApiResult;

    const-string v6, "onSearchMedia"

    invoke-direct {v5, v6, v3}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    iget-object v8, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 971
    invoke-static {v5, v6, v7, v8}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 975
    goto/16 :goto_129

    .line 968
    .end local v3    # "result":Landroid/database/Cursor;
    :cond_7e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "both suggested media set id and search text can not be null together"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 940
    .end local v2    # "searchMediaSetId":Ljava/lang/String;
    .end local v4    # "searchText":Ljava/lang/String;
    :pswitch_86
    const-string v2, "prefix_text"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 941
    .local v3, "prefixText":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0, v3, p3, p4}, Landroid/provider/CloudMediaProvider;->onQuerySearchSuggestions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 943
    .local v2, "result":Landroid/database/Cursor;
    new-instance v4, Landroid/provider/CmpApiResult;

    const-string v5, "onQuerySearchSuggestions"

    invoke-direct {v4, v5, v2}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v7, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 943
    invoke-static {v4, v5, v6, v7}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 947
    move-object v3, v2

    goto/16 :goto_129

    .line 931
    .end local v2    # "result":Landroid/database/Cursor;
    .end local v3    # "prefixText":Ljava/lang/String;
    :pswitch_a7
    const-string v2, "media_category_id"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 932
    .local v3, "mediaCategoryId":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0, v3, p3, p4}, Landroid/provider/CloudMediaProvider;->onQueryMediaSets(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 934
    .restart local v2    # "result":Landroid/database/Cursor;
    new-instance v4, Landroid/provider/CmpApiResult;

    const-string v5, "onQueryMediaSets"

    invoke-direct {v4, v5, v2}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v7, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 934
    invoke-static {v4, v5, v6, v7}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 938
    move-object v3, v2

    goto :goto_129

    .line 921
    .end local v2    # "result":Landroid/database/Cursor;
    .end local v3    # "mediaCategoryId":Ljava/lang/String;
    :pswitch_c7
    const-string v2, "parent_category_id"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "parentCategoryId":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p0, v3, p3, p4}, Landroid/provider/CloudMediaProvider;->onQueryMediaCategories(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 925
    .restart local v2    # "result":Landroid/database/Cursor;
    new-instance v4, Landroid/provider/CmpApiResult;

    const-string v5, "onQueryMediaCategories"

    invoke-direct {v4, v5, v2}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v7, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 925
    invoke-static {v4, v5, v6, v7}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 929
    move-object v3, v2

    goto :goto_129

    .line 915
    .end local v2    # "result":Landroid/database/Cursor;
    .end local v3    # "parentCategoryId":Ljava/lang/String;
    :pswitch_e7
    invoke-virtual {p0, p3}, Landroid/provider/CloudMediaProvider;->onQueryAlbums(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v3

    .line 916
    .local v3, "result":Landroid/database/Cursor;
    new-instance v2, Landroid/provider/CmpApiResult;

    const-string v4, "onQueryAlbums"

    invoke-direct {v2, v4, v3}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-object v6, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 916
    invoke-static {v2, v4, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 919
    goto :goto_129

    .line 909
    .end local v3    # "result":Landroid/database/Cursor;
    :pswitch_fd
    invoke-virtual {p0, p3}, Landroid/provider/CloudMediaProvider;->onQueryDeletedMedia(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v3

    .line 910
    .restart local v3    # "result":Landroid/database/Cursor;
    new-instance v2, Landroid/provider/CmpApiResult;

    const-string v4, "onQueryDeletedMedia"

    invoke-direct {v2, v4, v3}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-object v6, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 910
    invoke-static {v2, v4, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 913
    goto :goto_129

    .line 903
    .end local v3    # "result":Landroid/database/Cursor;
    :pswitch_113
    invoke-virtual {p0, p3}, Landroid/provider/CloudMediaProvider;->onQueryMedia(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v3

    .line 904
    .restart local v3    # "result":Landroid/database/Cursor;
    new-instance v2, Landroid/provider/CmpApiResult;

    const-string v4, "onQueryMedia"

    invoke-direct {v2, v4, v3}, Landroid/provider/CmpApiResult;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-object v6, p0, Landroid/provider/CloudMediaProvider;->mAuthority:Ljava/lang/String;

    .line 904
    invoke-static {v2, v4, v5, v6}, Landroid/provider/CmpApiVerifier;->verifyApiResult(Landroid/provider/CmpApiResult;JLjava/lang/String;)V

    .line 907
    nop

    .line 979
    :goto_129
    return-object v3

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_113
        :pswitch_fd
        :pswitch_e7
        :pswitch_17
        :pswitch_17
        :pswitch_c7
        :pswitch_a7
        :pswitch_86
        :pswitch_4e
        :pswitch_30
    .end packed-switch
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 1013
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1027
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 1057
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
