.class public Landroid/content/pm/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/pm/IShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 464
    const-string/jumbo v0, "shortcut"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 463
    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    #@a
    move-result-object v0

    #@b
    invoke-direct {p0, p1, v0}, Landroid/content/pm/ShortcutManager;-><init>(Landroid/content/Context;Landroid/content/pm/IShortcutService;)V

    #@e
    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IShortcutService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IShortcutService;

    #@0
    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 454
    iput-object p1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@5
    .line 455
    iput-object p2, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@7
    .line 453
    return-void
.end method


# virtual methods
.method public addDynamicShortcuts(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 535
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 536
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    #@a
    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@d
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@10
    move-result v4

    #@11
    .line 535
    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IShortcutService;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 537
    :catch_0
    move-exception v0

    #@17
    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1a
    move-result-object v1

    #@1b
    throw v1
.end method

.method public disableShortcuts(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 615
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 617
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v5

    #@c
    .line 616
    const/4 v3, 0x0

    #@d
    const/4 v4, 0x0

    #@e
    move-object v2, p1

    #@f
    .line 615
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 613
    return-void

    #@13
    .line 618
    :catch_0
    move-exception v6

    #@14
    .line 619
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v0

    #@18
    throw v0
.end method

.method public disableShortcuts(Ljava/util/List;I)V
    .locals 7
    .param p2, "disabledMessageResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 628
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 630
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v5

    #@c
    .line 629
    const/4 v3, 0x0

    #@d
    move-object v2, p1

    #@e
    move v4, p2

    #@f
    .line 628
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 626
    return-void

    #@13
    .line 631
    :catch_0
    move-exception v6

    #@14
    .line 632
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v0

    #@18
    throw v0
.end method

.method public disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 7
    .param p2, "disabledMessage"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 654
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 656
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v5

    #@c
    .line 655
    const/4 v4, 0x0

    #@d
    move-object v2, p1

    #@e
    move-object v3, p2

    #@f
    .line 654
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 652
    return-void

    #@13
    .line 657
    :catch_0
    move-exception v6

    #@14
    .line 658
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v0

    #@18
    throw v0
.end method

.method public disableShortcuts(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "disabledMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 640
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    #@3
    .line 639
    return-void
.end method

.method public enableShortcuts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 672
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IShortcutService;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 670
    return-void

    #@10
    .line 673
    :catch_0
    move-exception v0

    #@11
    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public getDynamicShortcuts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 498
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 500
    :catch_0
    move-exception v0

    #@16
    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v1

    #@1a
    throw v1
.end method

.method public getIconMaxHeight()I
    .locals 4

    #@0
    .prologue
    .line 765
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getIconMaxDimensions(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 766
    :catch_0
    move-exception v0

    #@12
    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public getIconMaxWidth()I
    .locals 4

    #@0
    .prologue
    .line 753
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getIconMaxDimensions(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 754
    :catch_0
    move-exception v0

    #@12
    .line 755
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public getManifestShortcuts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 515
    :catch_0
    move-exception v0

    #@16
    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v1

    #@1a
    throw v1
.end method

.method public getMaxShortcutCountForActivity()I
    .locals 1

    #@0
    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMaxShortcutCountPerActivity()I
    .locals 4

    #@0
    .prologue
    .line 692
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    .line 693
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    .line 692
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 694
    :catch_0
    move-exception v0

    #@12
    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public getPinnedShortcuts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 577
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 579
    :catch_0
    move-exception v0

    #@16
    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v1

    #@1a
    throw v1
.end method

.method public getRateLimitResetTime()J
    .locals 4

    #@0
    .prologue
    .line 725
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getRateLimitResetTime(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-wide v2

    #@10
    return-wide v2

    #@11
    .line 726
    :catch_0
    move-exception v0

    #@12
    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public getRemainingCallCount()I
    .locals 4

    #@0
    .prologue
    .line 709
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->getRemainingCallCount(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 710
    :catch_0
    move-exception v0

    #@12
    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method protected injectMyUserId()I
    .locals 1

    #@0
    .prologue
    .line 811
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isRateLimitingActive()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 740
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@3
    iget-object v3, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@c
    move-result v4

    #@d
    invoke-interface {v2, v3, v4}, Landroid/content/pm/IShortcutService;->getRemainingCallCount(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    :cond_0
    return v1

    #@15
    .line 742
    :catch_0
    move-exception v0

    #@16
    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@19
    move-result-object v1

    #@1a
    throw v1
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 802
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IShortcutService;->onApplicationActive(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 800
    return-void

    #@6
    .line 803
    :catch_0
    move-exception v0

    #@7
    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public removeAllDynamicShortcuts()V
    .locals 4

    #@0
    .prologue
    .line 563
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IShortcutService;->removeAllDynamicShortcuts(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 561
    return-void

    #@10
    .line 564
    :catch_0
    move-exception v0

    #@11
    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public removeDynamicShortcuts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 549
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 550
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    .line 549
    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IShortcutService;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 547
    return-void

    #@10
    .line 551
    :catch_0
    move-exception v0

    #@11
    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public reportShortcutUsed(Ljava/lang/String;)V
    .locals 4
    .param p1, "shortcutId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 786
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@b
    move-result v3

    #@c
    .line 785
    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IShortcutService;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 783
    return-void

    #@10
    .line 787
    :catch_0
    move-exception v0

    #@11
    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public setDynamicShortcuts(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 483
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 484
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    #@a
    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@d
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@10
    move-result v4

    #@11
    .line 483
    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IShortcutService;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 485
    :catch_0
    move-exception v0

    #@17
    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1a
    move-result-object v1

    #@1b
    throw v1
.end method

.method public updateShortcuts(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 598
    .local p1, "shortcutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ShortcutManager;->mService:Landroid/content/pm/IShortcutService;

    #@2
    iget-object v2, p0, Landroid/content/pm/ShortcutManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 599
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    #@a
    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    #@d
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->injectMyUserId()I

    #@10
    move-result v4

    #@11
    .line 598
    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IShortcutService;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 600
    :catch_0
    move-exception v0

    #@17
    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1a
    move-result-object v1

    #@1b
    throw v1
.end method
