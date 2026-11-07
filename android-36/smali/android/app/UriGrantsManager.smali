.class public Landroid/app/UriGrantsManager;
.super Ljava/lang/Object;
.source "UriGrantsManager.java"


# static fields
.field private static final blacklist IUriGrantsManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IUriGrantsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/app/UriGrantsManager$1;

    invoke-direct {v0}, Landroid/app/UriGrantsManager$1;-><init>()V

    sput-object v0, Landroid/app/UriGrantsManager;->IUriGrantsManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/app/UriGrantsManager;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static blacklist getService()Landroid/app/IUriGrantsManager;
    .registers 1

    .line 45
    sget-object v0, Landroid/app/UriGrantsManager;->IUriGrantsManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IUriGrantsManager;

    return-object v0
.end method


# virtual methods
.method public blacklist clearGrantedUriPermissions(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/UriGrantsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IUriGrantsManager;->clearGrantedUriPermissions(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 71
    nop

    .line 72
    return-void

    .line 69
    :catch_f
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 90
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/UriGrantsManager;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IUriGrantsManager;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 92
    .local v0, "castedList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/GrantedUriPermission;>;"
    return-object v0

    .line 93
    .end local v0    # "castedList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/GrantedUriPermission;>;"
    :catch_f
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
