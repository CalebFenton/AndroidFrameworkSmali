.class public Landroid/content/pm/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ShortcutManager$ShareShortcutInfo;,
        Landroid/content/pm/ShortcutManager$ShortcutMatchFlags;
    }
.end annotation


# static fields
.field public static final whitelist FLAG_MATCH_CACHED:I = 0x8

.field public static final whitelist FLAG_MATCH_DYNAMIC:I = 0x2

.field public static final whitelist FLAG_MATCH_MANIFEST:I = 0x1

.field public static final whitelist FLAG_MATCH_PINNED:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ShortcutManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-p mService:Landroid/content/pm/IShortcutService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    nop

    .line 129
    const-string/jumbo v0, "shortcut"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/ShortcutManager;-><init>(Landroid/content/Context;Landroid/content/pm/IShortcutService;)V

    .line 130
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/IShortcutService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IShortcutService;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist addDynamicShortcuts(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 241
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 242
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    .line 241
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IShortcutService;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    .line 243
    :catch_16
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;
    .registers 5
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 627
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 627
    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;

    move-result-object v0

    .line 629
    .local v0, "result":Landroid/content/Intent;
    if-eqz v0, :cond_1d

    .line 630
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    .line 631
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 630
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 633
    :cond_1d
    return-object v0

    .line 634
    .end local v0    # "result":Landroid/content/Intent;
    :catch_1e
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disableShortcuts(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_17

    .line 342
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_17
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .line 346
    .restart local v2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o disableShortcuts(Ljava/util/List;I)V
    .registers 9
    .param p2, "disabledMessageResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 355
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_17

    .line 355
    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    .end local p1    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "disabledMessageResId":I
    .local v2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "disabledMessageResId":I
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 360
    nop

    .line 361
    return-void

    .line 358
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "disabledMessageResId":I
    .restart local p1    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "disabledMessageResId":I
    :catch_17
    move-exception v0

    move-object v2, p1

    move v4, p2

    move-object p1, v0

    .line 359
    .end local p2    # "disabledMessageResId":I
    .restart local v2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "disabledMessageResId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 9
    .param p2, "disabledMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 383
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_17

    .line 383
    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "disabledMessage":Ljava/lang/CharSequence;
    .local v2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "disabledMessage":Ljava/lang/CharSequence;
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .end local v2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "disabledMessage":Ljava/lang/CharSequence;
    .restart local p1    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "disabledMessage":Ljava/lang/CharSequence;
    :catch_17
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object p1, v0

    .line 387
    .end local p2    # "disabledMessage":Ljava/lang/CharSequence;
    .restart local v2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "disabledMessage":Ljava/lang/CharSequence;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1b
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-o disableShortcuts(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p2, "disabledMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 367
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 368
    return-void
.end method

.method public whitelist enableShortcuts(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 404
    nop

    .line 405
    return-void

    .line 402
    :catch_11
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDynamicShortcuts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 169
    const/4 v3, 0x2

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IShortcutService;->getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 169
    return-object v0

    .line 171
    :catch_16
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIconMaxHeight()I
    .registers 4

    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IShortcutService;->getIconMaxDimensions(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 501
    :catch_11
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getIconMaxWidth()I
    .registers 4

    .line 488
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IShortcutService;->getIconMaxDimensions(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 489
    :catch_11
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getManifestShortcuts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 189
    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IShortcutService;->getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 189
    return-object v0

    .line 191
    :catch_16
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getMaxShortcutCountForActivity()I
    .registers 2

    .line 412
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v0

    return v0
.end method

.method public whitelist getMaxShortcutCountPerActivity()I
    .registers 4

    .line 421
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    .line 422
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 421
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IShortcutService;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 423
    :catch_11
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPinnedShortcuts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 302
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 302
    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IShortcutService;->getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 302
    return-object v0

    .line 304
    :catch_16
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getRateLimitResetTime()J
    .registers 4

    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IShortcutService;->getRateLimitResetTime(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-wide v0

    .line 455
    :catch_11
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getRemainingCallCount()I
    .registers 4

    .line 438
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IShortcutService;->getRemainingCallCount(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 439
    :catch_11
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;
    .registers 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 675
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    .line 676
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 675
    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 675
    return-object v0

    .line 677
    :catch_15
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getShortcuts(I)Ljava/util/List;
    .registers 5
    .param p1, "matchFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 218
    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 218
    return-object v0

    .line 220
    :catch_15
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasShareTargets(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 757
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 757
    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 759
    :catch_11
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected greylist-max-o injectMyUserId()I
    .registers 2

    .line 658
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public whitelist isRateLimitingActive()Z
    .registers 4

    .line 470
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IShortcutService;->getRemainingCallCount(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_16

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    .line 472
    :catch_16
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRequestPinShortcutSupported()Z
    .registers 4

    .line 544
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IShortcutService;->isRequestPinItemSupported(II)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    .line 546
    :catch_c
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o onApplicationActive(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 649
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IShortcutService;->onApplicationActive(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 652
    nop

    .line 653
    return-void

    .line 650
    :catch_7
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 786
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 789
    nop

    .line 790
    return-void

    .line 787
    :catch_11
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeAllDynamicShortcuts()V
    .registers 4

    .line 269
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IShortcutService;->removeAllDynamicShortcuts(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catch_11
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeDynamicShortcuts(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 255
    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 259
    nop

    .line 260
    return-void

    .line 257
    :catch_11
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeLongLivedShortcuts(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 282
    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 286
    nop

    .line 287
    return-void

    .line 284
    :catch_11
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist reportShortcutUsed(Ljava/lang/String;)V
    .registers 5
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 522
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IShortcutService;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 525
    nop

    .line 526
    return-void

    .line 523
    :catch_11
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    .registers 6
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "resultIntent"    # Landroid/content/IntentSender;

    .line 600
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v2

    .line 600
    invoke-interface {v0, v1, p1, p2, v2}, Landroid/content/pm/IShortcutService;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 602
    :catch_11
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDynamicShortcuts(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 149
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 150
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    .line 149
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IShortcutService;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    .line 151
    :catch_16
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateShortcuts(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 324
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 325
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    move-result v3

    .line 324
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IShortcutService;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    .line 326
    :catch_16
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
