.class public Landroid/transparency/BinaryTransparencyManager;
.super Ljava/lang/Object;
.source "BinaryTransparencyManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TransparencyManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lcom/android/internal/os/IBinaryTransparencyService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/os/IBinaryTransparencyService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/os/IBinaryTransparencyService;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/transparency/BinaryTransparencyManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist collectAllApexInfo(Z)Ljava/util/List;
    .registers 4
    .param p1, "includeTestOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;",
            ">;"
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IBinaryTransparencyService;->collectAllApexInfo(Z)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 80
    :catch_7
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist collectAllSilentInstalledMbaInfo(Landroid/os/Bundle;)Ljava/util/List;
    .registers 4
    .param p1, "packagesToSkip"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;",
            ">;"
        }
    .end annotation

    .line 112
    :try_start_0
    const-string v0, "TransparencyManager"

    const-string v1, "Calling backend\'s collectAllSilentInstalledMbaInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IBinaryTransparencyService;->collectAllSilentInstalledMbaInfo(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 114
    :catch_e
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist collectAllUpdatedPreloadInfo(Landroid/os/Bundle;)Ljava/util/List;
    .registers 4
    .param p1, "packagesToSkip"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;",
            ">;"
        }
    .end annotation

    .line 95
    :try_start_0
    const-string v0, "TransparencyManager"

    const-string v1, "Calling backend\'s collectAllUpdatedPreloadInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IBinaryTransparencyService;->collectAllUpdatedPreloadInfo(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 97
    :catch_e
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSignedImageInfo()Ljava/lang/String;
    .registers 3

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0}, Lcom/android/internal/os/IBinaryTransparencyService;->getSignedImageInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 64
    :catch_7
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
