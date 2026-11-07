.class public Landroid/content/ClipboardManager;
.super Landroid/text/ClipboardManager;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    }
.end annotation


# static fields
.field public static final blacklist DEVICE_CONFIG_ALLOW_VIRTUALDEVICE_SILOS:Ljava/lang/String; = "allow_virtualdevice_silos"

.field public static final blacklist DEVICE_CONFIG_DEFAULT_ALLOW_VIRTUALDEVICE_SILOS:Z = true

.field public static final blacklist DEVICE_CONFIG_DEFAULT_SHOW_ACCESS_NOTIFICATIONS:Z = true

.field public static final blacklist DEVICE_CONFIG_SHOW_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "show_access_notifications"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mPrimaryClipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

.field private final greylist-max-o mService:Landroid/content/IClipboard;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/content/ClipboardManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Landroid/text/ClipboardManager;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Landroid/content/ClipboardManager$1;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$1;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    .line 132
    iput-object p1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    .line 134
    nop

    .line 135
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .registers 10
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 303
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 304
    :try_start_3
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_38

    if-eqz v0, :cond_31

    .line 306
    :try_start_b
    iget-object v2, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v7

    .line 306
    invoke-interface/range {v2 .. v7}, Landroid/content/IClipboard;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2a} :catch_2b
    .catchall {:try_start_b .. :try_end_2a} :catchall_38

    .line 314
    goto :goto_31

    .line 312
    :catch_2b
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/content/ClipboardManager;
    .end local p1    # "what":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    throw v2

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/ClipboardManager;
    .restart local p1    # "what":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public whitelist areClipboardAccessNotificationsEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/IClipboard;->areClipboardAccessNotificationsEnabledForUser(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 151
    :catch_d
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearPrimaryClip()V
    .registers 6

    .line 233
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {v4}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    .line 233
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IClipboard;->clearPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 240
    nop

    .line 241
    return-void

    .line 238
    :catch_1f
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPrimaryClip()Landroid/content/ClipData;
    .registers 6

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 255
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v4}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    .line 253
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipData;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    .line 258
    :catch_1f
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPrimaryClipDescription()Landroid/content/ClipDescription;
    .registers 6

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 278
    invoke-virtual {v4}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    .line 274
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IClipboard;->getPrimaryClipDescription(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipDescription;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    .line 279
    :catch_1f
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPrimaryClipSource()Ljava/lang/String;
    .registers 6

    .line 388
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 389
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 391
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {v4}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    .line 388
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IClipboard;->getPrimaryClipSource(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    .line 393
    :catch_1f
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 345
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_18

    .line 346
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 348
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist hasPrimaryClip()Z
    .registers 6

    .line 292
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 296
    invoke-virtual {v4}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    .line 292
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return v0

    .line 297
    :catch_1f
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasText()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 368
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 369
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v4}, Landroid/content/Context;->getDeviceId()I

    move-result v4

    .line 367
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IClipboard;->hasClipboardText(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    return v0

    .line 372
    :catch_1f
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .registers 10
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 321
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 322
    :try_start_3
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_38

    if-eqz v0, :cond_36

    .line 325
    :try_start_10
    iget-object v2, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 330
    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v7

    .line 325
    invoke-interface/range {v2 .. v7}, Landroid/content/IClipboard;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2f} :catch_30
    .catchall {:try_start_10 .. :try_end_2f} :catchall_38

    .line 333
    goto :goto_36

    .line 331
    :catch_30
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_31
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/content/ClipboardManager;
    .end local p1    # "what":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    throw v2

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/ClipboardManager;
    .restart local p1    # "what":Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    :cond_36
    :goto_36
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method greylist reportPrimaryClipChanged()V
    .registers 4

    .line 402
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 403
    :try_start_3
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 404
    .local v1, "N":I
    if-gtz v1, :cond_d

    .line 405
    monitor-exit v0

    return-void

    .line 407
    :cond_d
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 408
    .end local v1    # "N":I
    .local v2, "listeners":[Ljava/lang/Object;
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_23

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v1, v2

    if-ge v0, v1, :cond_22

    .line 411
    aget-object v1, v2, v0

    check-cast v1, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-interface {v1}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 413
    .end local v0    # "i":I
    :cond_22
    return-void

    .line 408
    .end local v2    # "listeners":[Ljava/lang/Object;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist setClipboardAccessNotificationsEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/IClipboard;->setClipboardAccessNotificationsEnabledForUser(ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 170
    nop

    .line 171
    return-void

    .line 168
    :catch_d
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPrimaryClip(Landroid/content/ClipData;)V
    .registers 9
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 183
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->prepareToLeaveProcess(Z)V

    .line 185
    iget-object v1, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v6
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_2a

    .line 185
    move-object v2, p1

    .end local p1    # "clip":Landroid/content/ClipData;
    .local v2, "clip":Landroid/content/ClipData;
    :try_start_22
    invoke-interface/range {v1 .. v6}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_27

    .line 193
    nop

    .line 194
    return-void

    .line 191
    :catch_27
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .end local v2    # "clip":Landroid/content/ClipData;
    .restart local p1    # "clip":Landroid/content/ClipData;
    :catch_2a
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .line 192
    .restart local v2    # "clip":Landroid/content/ClipData;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_2d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;)V
    .registers 11
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 211
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->prepareToLeaveProcess(Z)V

    .line 214
    iget-object v1, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    iget-object v0, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v6
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_2e

    .line 214
    move-object v2, p1

    move-object v7, p2

    .end local p1    # "clip":Landroid/content/ClipData;
    .end local p2    # "sourcePackage":Ljava/lang/String;
    .local v2, "clip":Landroid/content/ClipData;
    .local v7, "sourcePackage":Ljava/lang/String;
    :try_start_26
    invoke-interface/range {v1 .. v7}, Landroid/content/IClipboard;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2b

    .line 223
    nop

    .line 224
    return-void

    .line 221
    :catch_2b
    move-exception v0

    move-object p1, v0

    goto :goto_32

    .end local v2    # "clip":Landroid/content/ClipData;
    .end local v7    # "sourcePackage":Ljava/lang/String;
    .restart local p1    # "clip":Landroid/content/ClipData;
    .restart local p2    # "sourcePackage":Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object v2, p1

    move-object v7, p2

    move-object p1, v0

    .line 222
    .end local p2    # "sourcePackage":Ljava/lang/String;
    .restart local v2    # "clip":Landroid/content/ClipData;
    .restart local v7    # "sourcePackage":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_32
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 359
    return-void
.end method
