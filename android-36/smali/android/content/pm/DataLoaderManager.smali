.class public Landroid/content/pm/DataLoaderManager;
.super Ljava/lang/Object;
.source "DataLoaderManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DataLoaderManager"


# instance fields
.field private final blacklist mService:Landroid/content/pm/IDataLoaderManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/IDataLoaderManager;)V
    .registers 2
    .param p1, "service"    # Landroid/content/pm/IDataLoaderManager;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z
    .registers 12
    .param p1, "dataLoaderId"    # I
    .param p2, "params"    # Landroid/content/pm/DataLoaderParamsParcel;
    .param p3, "bindDelayMs"    # J
    .param p5, "listener"    # Landroid/content/pm/IDataLoaderStatusListener;

    .line 54
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_e

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "dataLoaderId":I
    .end local p2    # "params":Landroid/content/pm/DataLoaderParamsParcel;
    .end local p3    # "bindDelayMs":J
    .end local p5    # "listener":Landroid/content/pm/IDataLoaderStatusListener;
    .local v1, "dataLoaderId":I
    .local v2, "params":Landroid/content/pm/DataLoaderParamsParcel;
    .local v3, "bindDelayMs":J
    .local v5, "listener":Landroid/content/pm/IDataLoaderStatusListener;
    :try_start_6
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IDataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p1

    .line 55
    :catch_b
    move-exception v0

    move-object p1, v0

    goto :goto_14

    .end local v1    # "dataLoaderId":I
    .end local v2    # "params":Landroid/content/pm/DataLoaderParamsParcel;
    .end local v3    # "bindDelayMs":J
    .end local v5    # "listener":Landroid/content/pm/IDataLoaderStatusListener;
    .restart local p1    # "dataLoaderId":I
    .restart local p2    # "params":Landroid/content/pm/DataLoaderParamsParcel;
    .restart local p3    # "bindDelayMs":J
    .restart local p5    # "listener":Landroid/content/pm/IDataLoaderStatusListener;
    :catch_e
    move-exception v0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object p1, v0

    .line 56
    .end local p2    # "params":Landroid/content/pm/DataLoaderParamsParcel;
    .end local p3    # "bindDelayMs":J
    .end local p5    # "listener":Landroid/content/pm/IDataLoaderStatusListener;
    .restart local v1    # "dataLoaderId":I
    .restart local v2    # "params":Landroid/content/pm/DataLoaderParamsParcel;
    .restart local v3    # "bindDelayMs":J
    .restart local v5    # "listener":Landroid/content/pm/IDataLoaderStatusListener;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public blacklist getDataLoader(I)Landroid/content/pm/IDataLoader;
    .registers 4
    .param p1, "dataLoaderId"    # I

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 67
    :catch_7
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unbindFromDataLoader(I)V
    .registers 4
    .param p1, "dataLoaderId"    # I

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/DataLoaderManager;->mService:Landroid/content/pm/IDataLoaderManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IDataLoaderManager;->unbindFromDataLoader(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 82
    nop

    .line 83
    return-void

    .line 80
    :catch_7
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
