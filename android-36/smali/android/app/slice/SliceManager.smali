.class public Landroid/app/slice/SliceManager;
.super Ljava/lang/Object;
.source "SliceManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o ACTION_REQUEST_SLICE_PERMISSION:Ljava/lang/String; = "com.android.intent.action.REQUEST_SLICE_PERMISSION"

.field public static final whitelist CATEGORY_SLICE:Ljava/lang/String; = "android.app.slice.category.SLICE"

.field public static final whitelist SLICE_METADATA_KEY:Ljava/lang/String; = "android.metadata.SLICE_URI"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/app/slice/ISliceManager;

.field private final greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/slice/SliceManager;->mToken:Landroid/os/IBinder;

    .line 119
    iput-object p1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    .line 120
    nop

    .line 121
    const-string/jumbo v0, "slice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/app/slice/ISliceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/slice/ISliceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    .line 122
    return-void
.end method

.method private greylist-max-o getAuthority(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 323
    .local v0, "queryIntent":Landroid/content/Intent;
    const-string v1, "android.app.slice.category.SLICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_10
    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_2f

    .line 329
    :cond_2e
    const/4 v2, 0x0

    .line 328
    :goto_2f
    return-object v2
.end method

.method private greylist-max-o resolveStatic(Landroid/content/Intent;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 333
    const-string/jumbo v0, "intent"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 335
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 334
    const-string v2, "Slice intent must be explicit %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 340
    .local v0, "intentData":Landroid/net/Uri;
    if-eqz v0, :cond_39

    const-string/jumbo v1, "vnd.android.slice"

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 341
    return-object v0

    .line 344
    :cond_39
    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 346
    .local v1, "resolve":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_6a

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6a

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_6a

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 348
    const-string v3, "android.metadata.SLICE_URI"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 349
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 350
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 352
    :cond_6a
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public whitelist bindSlice(Landroid/content/Intent;Ljava/util/Set;)Landroid/app/slice/Slice;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 368
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    const-string/jumbo v0, "intent"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 370
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 369
    const-string v2, "Slice intent must be explicit %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 373
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, v0}, Landroid/app/slice/SliceManager;->resolveStatic(Landroid/content/Intent;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v1

    .line 374
    .local v1, "staticUri":Landroid/net/Uri;
    if-eqz v1, :cond_36

    invoke-virtual {p0, v1, p2}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v2

    return-object v2

    .line 376
    :cond_36
    invoke-direct {p0, p1}, Landroid/app/slice/SliceManager;->getAuthority(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "authority":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_3e

    return-object v3

    .line 378
    :cond_3e
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 379
    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 380
    .local v4, "uri":Landroid/net/Uri;
    :try_start_51
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_55} :catch_b0

    .line 381
    .local v5, "provider":Landroid/content/ContentProviderClient;
    if-nez v5, :cond_6d

    .line 382
    :try_start_57
    const-string v6, "SliceManager"

    const-string v7, "Unknown URI: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_a4

    .line 383
    nop

    .line 394
    if-eqz v5, :cond_6c

    :try_start_69
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6c} :catch_b0

    .line 383
    :cond_6c
    return-object v3

    .line 385
    :cond_6d
    :try_start_6d
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v6, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "slice_intent"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 387
    const-string/jumbo v7, "supported_specs"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 389
    const-string/jumbo v7, "map_slice"

    invoke-virtual {v5, v7, v3, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_8a
    .catchall {:try_start_6d .. :try_end_8a} :catchall_a4

    .line 390
    .local v7, "res":Landroid/os/Bundle;
    if-nez v7, :cond_93

    .line 391
    nop

    .line 394
    if-eqz v5, :cond_92

    :try_start_8f
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_92} :catch_b0

    .line 391
    :cond_92
    return-object v3

    .line 393
    :cond_93
    :try_start_93
    const-string/jumbo v8, "slice"

    const-class v9, Landroid/app/slice/Slice;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/slice/Slice;
    :try_end_9e
    .catchall {:try_start_93 .. :try_end_9e} :catchall_a4

    .line 394
    if-eqz v5, :cond_a3

    :try_start_a0
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a3} :catch_b0

    .line 393
    :cond_a3
    return-object v8

    .line 380
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "res":Landroid/os/Bundle;
    :catchall_a4
    move-exception v6

    if-eqz v5, :cond_af

    :try_start_a7
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_af

    :catchall_ab
    move-exception v7

    :try_start_ac
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staticUri":Landroid/net/Uri;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :cond_af
    :goto_af
    throw v6
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_b0} :catch_b0

    .line 394
    .end local v5    # "provider":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staticUri":Landroid/net/Uri;
    .restart local v2    # "authority":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :catch_b0
    move-exception v5

    .line 397
    .local v5, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 247
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_6f

    .line 250
    .local v2, "provider":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_29

    .line 251
    :try_start_13
    const-string v3, "SliceManager"

    const-string v4, "Unknown URI: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_63

    .line 252
    nop

    .line 264
    if-eqz v2, :cond_28

    :try_start_25
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_6f

    .line 252
    :cond_28
    return-object v1

    .line 254
    :cond_29
    :try_start_29
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "slice_uri"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string/jumbo v4, "supported_specs"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 258
    const-string v4, "bind_slice"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 259
    .local v4, "res":Landroid/os/Bundle;
    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_63

    .line 260
    if-nez v4, :cond_52

    .line 261
    nop

    .line 264
    if-eqz v2, :cond_51

    :try_start_4e
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_6f

    .line 261
    :cond_51
    return-object v1

    .line 263
    :cond_52
    :try_start_52
    const-string/jumbo v5, "slice"

    const-class v6, Landroid/app/slice/Slice;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/slice/Slice;
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_63

    .line 264
    if-eqz v2, :cond_62

    :try_start_5f
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_62} :catch_6f

    .line 263
    :cond_62
    return-object v5

    .line 249
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "res":Landroid/os/Bundle;
    :catchall_63
    move-exception v3

    if-eqz v2, :cond_6e

    :try_start_66
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception v4

    :try_start_6b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :cond_6e
    :goto_6e
    throw v3
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6f} :catch_6f

    .line 264
    .end local v2    # "provider":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :catch_6f
    move-exception v2

    .line 267
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist checkSlicePermission(Landroid/net/Uri;II)I
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 418
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .local v1, "uri":Landroid/net/Uri;
    .local v3, "pid":I
    .local v4, "uid":I
    :try_start_c
    invoke-interface/range {v0 .. v5}, Landroid/app/slice/ISliceManager;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return p1

    .line 420
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "pid":I
    .end local v4    # "uid":I
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "pid":I
    .restart local p3    # "uid":I
    :catch_14
    move-exception v0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object p1, v0

    .line 421
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "pid":I
    .restart local v4    # "uid":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist enforceSlicePermission(Landroid/net/Uri;II[Ljava/lang/String;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "autoGrantPermissions"    # [Ljava/lang/String;

    .line 469
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p3, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 470
    return-void

    .line 472
    :cond_b
    iget-object v1, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v0, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_4c

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "autoGrantPermissions":[Ljava/lang/String;
    .local v2, "uri":Landroid/net/Uri;
    .local v4, "pid":I
    .local v5, "uid":I
    .local v6, "autoGrantPermissions":[Ljava/lang/String;
    :try_start_17
    invoke-interface/range {v1 .. v6}, Landroid/app/slice/ISliceManager;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result p1

    .line 474
    .local p1, "result":I
    const/4 p2, -0x1

    if-eq p1, p2, :cond_20

    .line 480
    .end local p1    # "result":I
    nop

    .line 481
    return-void

    .line 475
    .restart local p1    # "result":I
    :cond_20
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "User "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " does not have slice permission for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "pid":I
    .end local v5    # "uid":I
    .end local v6    # "autoGrantPermissions":[Ljava/lang/String;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    throw p2
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_49} :catch_49

    .line 478
    .end local p1    # "result":I
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v4    # "pid":I
    .restart local v5    # "uid":I
    .restart local v6    # "autoGrantPermissions":[Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    :catch_49
    move-exception v0

    move-object p1, v0

    goto :goto_52

    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "pid":I
    .end local v5    # "uid":I
    .end local v6    # "autoGrantPermissions":[Ljava/lang/String;
    .local p1, "uri":Landroid/net/Uri;
    .restart local p2    # "pid":I
    .restart local p3    # "uid":I
    .restart local p4    # "autoGrantPermissions":[Ljava/lang/String;
    :catch_4c
    move-exception v0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 479
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "autoGrantPermissions":[Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v4    # "pid":I
    .restart local v5    # "uid":I
    .restart local v6    # "autoGrantPermissions":[Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_52
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist getPinnedSlices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 203
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/slice/ISliceManager;->getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 204
    :catch_11
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 190
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v2, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-interface {v1, p1, v2}, Landroid/app/slice/ISliceManager;->getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 192
    :catch_16
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 221
    const-string v0, "SliceManager"

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 222
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_8
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_4f

    .line 223
    .local v2, "provider":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_21

    .line 224
    :try_start_e
    const-string v3, "Unknown URI: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_43

    .line 232
    if-eqz v2, :cond_20

    :try_start_1d
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_4f

    .line 234
    .end local v2    # "provider":Landroid/content/ContentProviderClient;
    :cond_20
    goto :goto_55

    .line 226
    .restart local v2    # "provider":Landroid/content/ContentProviderClient;
    :cond_21
    :try_start_21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "slice_uri"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 228
    const-string/jumbo v4, "get_descendants"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 230
    .local v4, "res":Landroid/os/Bundle;
    const-string/jumbo v5, "slice_descendants"

    const-class v6, Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_43

    .line 232
    if-eqz v2, :cond_42

    :try_start_3f
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_4f

    .line 230
    :cond_42
    return-object v5

    .line 222
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "res":Landroid/os/Bundle;
    :catchall_43
    move-exception v3

    if-eqz v2, :cond_4e

    :try_start_46
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception v4

    :try_start_4b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_4e
    :goto_4e
    throw v3
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4f} :catch_4f

    .line 232
    .end local v2    # "provider":Landroid/content/ContentProviderClient;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_4f
    move-exception v2

    .line 233
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to get slice descendants"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "allSlices"    # Z

    .line 489
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/app/slice/ISliceManager;->grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 492
    nop

    .line 493
    return-void

    .line 490
    :catch_d
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 435
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/slice/ISliceManager;->grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 438
    nop

    .line 439
    return-void

    .line 436
    :catch_d
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o hasSliceAccess()Z
    .registers 3

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/slice/ISliceManager;->hasSliceAccess(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 176
    :catch_d
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .line 294
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, v0}, Landroid/app/slice/SliceManager;->resolveStatic(Landroid/content/Intent;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v1

    .line 296
    .local v1, "staticUri":Landroid/net/Uri;
    if-eqz v1, :cond_d

    return-object v1

    .line 298
    :cond_d
    invoke-direct {p0, p1}, Landroid/app/slice/SliceManager;->getAuthority(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "authority":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_15

    return-object v3

    .line 300
    :cond_15
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 301
    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 302
    .local v4, "uri":Landroid/net/Uri;
    :try_start_28
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2c} :catch_7c

    .line 303
    .local v5, "provider":Landroid/content/ContentProviderClient;
    if-nez v5, :cond_44

    .line 304
    :try_start_2e
    const-string v6, "SliceManager"

    const-string v7, "Unknown URI: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_70

    .line 305
    nop

    .line 314
    if-eqz v5, :cond_43

    :try_start_40
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_7c

    .line 305
    :cond_43
    return-object v3

    .line 307
    :cond_44
    :try_start_44
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v6, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "slice_intent"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 309
    const-string/jumbo v7, "map_only"

    invoke-virtual {v5, v7, v3, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_70

    .line 310
    .local v7, "res":Landroid/os/Bundle;
    if-nez v7, :cond_5f

    .line 311
    nop

    .line 314
    if-eqz v5, :cond_5e

    :try_start_5b
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_7c

    .line 311
    :cond_5e
    return-object v3

    .line 313
    :cond_5f
    :try_start_5f
    const-string/jumbo v8, "slice"

    const-class v9, Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_70

    .line 314
    if-eqz v5, :cond_6f

    :try_start_6c
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6f} :catch_7c

    .line 313
    :cond_6f
    return-object v8

    .line 302
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "res":Landroid/os/Bundle;
    :catchall_70
    move-exception v6

    if-eqz v5, :cond_7b

    :try_start_73
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_7b

    :catchall_77
    move-exception v7

    :try_start_78
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "staticUri":Landroid/net/Uri;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Landroid/app/slice/SliceManager;
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_7b
    :goto_7b
    throw v6
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_7c} :catch_7c

    .line 314
    .end local v5    # "provider":Landroid/content/ContentProviderClient;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "staticUri":Landroid/net/Uri;
    .restart local v2    # "authority":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Landroid/app/slice/SliceManager;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catch_7c
    move-exception v5

    .line 317
    .local v5, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public whitelist pinSlice(Landroid/net/Uri;Ljava/util/Set;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p2, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/slice/SliceSpec;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/slice/SliceSpec;

    iget-object v3, p0, Landroid/app/slice/SliceManager;->mToken:Landroid/os/IBinder;

    .line 141
    invoke-interface {v0, v1, p1, v2, v3}, Landroid/app/slice/ISliceManager;->pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 145
    nop

    .line 146
    return-void

    .line 143
    :catch_1b
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist revokeSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 457
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/slice/ISliceManager;->revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 460
    nop

    .line 461
    return-void

    .line 458
    :catch_d
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unpinSlice(Landroid/net/Uri;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/app/slice/SliceManager;->mService:Landroid/app/slice/ISliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/slice/SliceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, v2}, Landroid/app/slice/ISliceManager;->unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 167
    nop

    .line 168
    return-void

    .line 165
    :catch_f
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
