.class Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerProviderFactory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceConnectionHandler"
.end annotation


# static fields
.field private static final blacklist ACTION_EMBEDDED_PHOTOPICKER_SERVICE:Ljava/lang/String; = "com.android.photopicker.core.embedded.EmbeddedService.BIND"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private blacklist mIsBindRequested:Z

.field private blacklist mIsConnected:Z

.field private blacklist mIsConnectionValid:Z

.field private blacklist mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photopickerProvider"    # Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsConnectionValid:Z

    .line 297
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mContext:Landroid/content/Context;

    .line 298
    iput-object p2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.photopicker.core.embedded.EmbeddedService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIntent:Landroid/content/Intent;

    .line 300
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIntent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->getExplicitPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    return-void
.end method

.method private blacklist getExplicitPackageName()Ljava/lang/String;
    .registers 5

    .line 310
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    .line 317
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 324
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 325
    .local v1, "embeddedService":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_2f

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 326
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v2

    .line 328
    :cond_2f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to get valid service info or package info!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    .end local v1    # "embeddedService":Landroid/content/pm/ServiceInfo;
    :cond_37
    new-instance v1, Ljava/lang/RuntimeException;

    .line 320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.android.photopicker.core.embedded.EmbeddedService.BIND"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 318
    const-string v3, "Found more than 1 (%d) service by intent %s!"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_51
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to find embedded photopicker service!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist bindServiceSerialized()V
    .registers 3

    .line 381
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsBindRequested:Z

    if-nez v0, :cond_12

    .line 382
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIntent:Landroid/content/Intent;

    .line 383
    invoke-static {v0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->-$$Nest$mperformBindServiceSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsBindRequested:Z

    .line 385
    :cond_12
    return-void
.end method

.method public blacklist disposeLocked()V
    .registers 3

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsConnected:Z

    .line 339
    iput-boolean v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsBindRequested:Z

    .line 340
    iput-boolean v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsConnectionValid:Z

    .line 341
    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mContext:Landroid/content/Context;

    .line 342
    return-void
.end method

.method public blacklist isBindRequested()Z
    .registers 2

    .line 397
    iget-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsBindRequested:Z

    return v0
.end method

.method public blacklist isConnected()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsConnected:Z

    return v0
.end method

.method public blacklist isConnectionValid()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsConnectionValid:Z

    return v0
.end method

.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 373
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    if-eqz v0, :cond_e

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsConnected:Z

    .line 375
    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsBindRequested:Z

    .line 376
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    invoke-static {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->-$$Nest$monBindingDiedSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;)V

    .line 378
    :cond_e
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 349
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    if-eqz v0, :cond_f

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsConnected:Z

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsBindRequested:Z

    .line 352
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    invoke-static {v0, p2}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->-$$Nest$monServiceConnectedSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;Landroid/os/IBinder;)V

    .line 354
    :cond_f
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 361
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    if-eqz v0, :cond_e

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsConnected:Z

    .line 363
    iput-boolean v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mIsBindRequested:Z

    .line 364
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mPhotopickerProvider:Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    invoke-static {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;->-$$Nest$monServiceDisconnectedSerialized(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;)V

    .line 366
    :cond_e
    return-void
.end method

.method public blacklist unbindSerialized()V
    .registers 2

    .line 388
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 389
    invoke-virtual {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$ServiceConnectionHandler;->disposeLocked()V

    .line 390
    return-void
.end method
