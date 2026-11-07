.class public final Landroid/app/GameManager;
.super Ljava/lang/Object;
.source "GameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameManager$GameMode;
    }
.end annotation


# static fields
.field public static final whitelist GAME_MODE_BATTERY:I = 0x3

.field public static final whitelist GAME_MODE_CUSTOM:I = 0x4

.field public static final whitelist GAME_MODE_PERFORMANCE:I = 0x2

.field public static final whitelist GAME_MODE_STANDARD:I = 0x1

.field public static final whitelist GAME_MODE_UNSUPPORTED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "GameManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/IGameManagerService;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/IGameManagerService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IGameManagerService;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    .line 106
    return-void
.end method

.method private blacklist getGameModeImpl(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 155
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 158
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 158
    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_1d

    .line 162
    .local v0, "gameMode":I
    nop

    .line 163
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    const/16 v1, 0x21

    if-gt p2, v1, :cond_1c

    .line 164
    const/4 v1, 0x1

    return v1

    .line 166
    :cond_1c
    return v0

    .line 160
    .end local v0    # "gameMode":I
    :catch_1d
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist getAvailableGameModes(Ljava/lang/String;)[I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 227
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->getAvailableGameModes(Ljava/lang/String;I)[I

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    return-object v0

    .line 228
    :catch_15
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGameMode()I
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 123
    invoke-direct {p0, v0, v1}, Landroid/app/GameManager;->getGameModeImpl(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getGameMode(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    .line 142
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_18

    .line 147
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "targetSdkVersion":I
    nop

    .line 148
    invoke-direct {p0, p1, v1}, Landroid/app/GameManager;->getGameModeImpl(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 145
    .end local v1    # "targetSdkVersion":I
    :catch_18
    move-exception v0

    .line 146
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getGameModeInfo(Ljava/lang/String;)Landroid/app/GameModeInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->getGameModeInfo(Ljava/lang/String;I)Landroid/app/GameModeInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v0

    .line 190
    :catch_13
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAngleEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 248
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IGameManagerService;->isAngleEnabled(Ljava/lang/String;I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 249
    :catch_13
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyGraphicsEnvironmentSetup()V
    .registers 4

    .line 261
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_5

    return-void

    .line 263
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 263
    invoke-interface {v0, v1, v2}, Landroid/app/IGameManagerService;->notifyGraphicsEnvironmentSetup(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    .line 267
    nop

    .line 268
    return-void

    .line 265
    :catch_18
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setGameMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_5

    return-void

    .line 210
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catch_12
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setGameServiceProvider(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_5

    return-void

    .line 294
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    invoke-interface {v0, p1}, Landroid/app/IGameManagerService;->setGameServiceProvider(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :catch_c
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setGameState(Landroid/app/GameState;)V
    .registers 5
    .param p1, "gameState"    # Landroid/app/GameState;

    .line 275
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_5

    return-void

    .line 277
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IGameManagerService;->setGameState(Ljava/lang/String;Landroid/app/GameState;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    .line 280
    nop

    .line 281
    return-void

    .line 278
    :catch_18
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateCustomGameModeConfiguration(Ljava/lang/String;Landroid/app/GameModeConfiguration;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gameModeConfig"    # Landroid/app/GameModeConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    if-nez v0, :cond_5

    return-void

    .line 316
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/app/GameManager;->mService:Landroid/app/IGameManagerService;

    iget-object v1, p0, Landroid/app/GameManager;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 316
    invoke-interface {v0, p1, p2, v1}, Landroid/app/IGameManagerService;->updateCustomGameModeConfiguration(Ljava/lang/String;Landroid/app/GameModeConfiguration;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_12

    .line 320
    nop

    .line 321
    return-void

    .line 318
    :catch_12
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
