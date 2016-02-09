.class public Lcom/android/server/SystemServiceManager;
.super Ljava/lang/Object;
.source "SystemServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPhase:I

.field private mSafeMode:Z

.field private final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SystemService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@a
    .line 41
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@d
    .line 44
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    #@f
    .line 43
    return-void
.end method


# virtual methods
.method public cleanupUser(I)V
    .locals 7
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 185
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 186
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 187
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/SystemService;

    #@11
    .line 189
    .local v2, "service":Lcom/android/server/SystemService;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onCleanupUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 186
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 190
    :catch_0
    move-exception v0

    #@18
    .line 191
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@1b
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Failure reporting cleanup of user "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 192
    const-string/jumbo v6, " to service "

    #@2e
    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 192
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_1

    #@46
    .line 184
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 6

    #@0
    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 215
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Current phase: "

    #@8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    iget v5, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    const-string/jumbo v5, "\n"

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 216
    const-string/jumbo v4, "Services:\n"

    #@1b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 217
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v3

    #@24
    .line 218
    .local v3, "startedLen":I
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@27
    .line 219
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Lcom/android/server/SystemService;

    #@2f
    .line 220
    .local v2, "service":Lcom/android/server/SystemService;
    const-string/jumbo v4, "\t"

    #@32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 221
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 222
    const-string/jumbo v5, "\n"

    #@45
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 218
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 225
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    const-string/jumbo v4, "SystemServiceManager"

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 213
    return-void
.end method

.method public isSafeMode()Z
    .locals 1

    #@0
    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    #@2
    return v0
.end method

.method public setSafeMode(Z)V
    .locals 0
    .param p1, "safeMode"    # Z

    #@0
    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    #@2
    .line 198
    return-void
.end method

.method public startBootPhase(I)V
    .locals 7
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 124
    iget v4, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@2
    if-gt p1, v4, :cond_0

    #@4
    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v5, "Next phase must be larger than previous"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 127
    :cond_0
    iput p1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@f
    .line 129
    const-string/jumbo v4, "SystemServiceManager"

    #@12
    new-instance v5, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "Starting phase "

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    iget v6, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 131
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v3

    #@31
    .line 132
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@32
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@34
    .line 133
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Lcom/android/server/SystemService;

    #@3c
    .line 135
    .local v2, "service":Lcom/android/server/SystemService;
    :try_start_0
    iget v4, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@3e
    invoke-virtual {v2, v4}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 132
    add-int/lit8 v1, v1, 0x1

    #@43
    goto :goto_0

    #@44
    .line 136
    :catch_0
    move-exception v0

    #@45
    .line 137
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@47
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v6, "Failed to boot service "

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    .line 138
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    .line 139
    const-string/jumbo v6, ": onBootPhase threw an exception during phase "

    #@62
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 140
    iget v6, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@68
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@73
    throw v4

    #@74
    .line 123
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_1
    return-void
.end method

.method public startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/SystemService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 79
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v8, "SystemServiceManager"

    #@7
    new-instance v9, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v10, "Starting "

    #@f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v9

    #@13
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v9

    #@1b
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 82
    const-class v8, Lcom/android/server/SystemService;

    #@20
    invoke-virtual {v8, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@23
    move-result v8

    #@24
    if-nez v8, :cond_0

    #@26
    .line 83
    new-instance v8, Ljava/lang/RuntimeException;

    #@28
    new-instance v9, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v10, "Failed to create "

    #@30
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v9

    #@38
    .line 84
    const-string/jumbo v10, ": service must extend "

    #@3b
    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v9

    #@3f
    .line 84
    const-class v10, Lcom/android/server/SystemService;

    #@41
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@44
    move-result-object v10

    #@45
    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v9

    #@4d
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v8

    #@51
    .line 88
    :cond_0
    const/4 v8, 0x1

    #@52
    :try_start_0
    new-array v8, v8, [Ljava/lang/Class;

    #@54
    const-class v9, Landroid/content/Context;

    #@56
    const/4 v10, 0x0

    #@57
    aput-object v9, v8, v10

    #@59
    invoke-virtual {p1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@5c
    move-result-object v0

    #@5d
    .line 89
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v8, 0x1

    #@5e
    new-array v8, v8, [Ljava/lang/Object;

    #@60
    iget-object v9, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    #@62
    const/4 v10, 0x0

    #@63
    aput-object v9, v8, v10

    #@65
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    move-result-object v7

    #@69
    check-cast v7, Lcom/android/server/SystemService;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 105
    .local v7, "service":Lcom/android/server/SystemService;, "TT;"
    iget-object v8, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 109
    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/SystemService;->onStart()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    #@73
    .line 114
    return-object v7

    #@74
    .line 99
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v7    # "service":Lcom/android/server/SystemService;, "TT;"
    :catch_0
    move-exception v5

    #@75
    .line 100
    .local v5, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@77
    new-instance v9, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v10, "Failed to create service "

    #@7f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v9

    #@83
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v9

    #@87
    .line 101
    const-string/jumbo v10, ": service constructor threw an exception"

    #@8a
    .line 100
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v9

    #@8e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v9

    #@92
    invoke-direct {v8, v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@95
    throw v8

    #@96
    .line 96
    .end local v5    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    #@97
    .line 97
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@99
    new-instance v9, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v10, "Failed to create service "

    #@a1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v9

    #@a5
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v9

    #@a9
    .line 98
    const-string/jumbo v10, ": service must have a public constructor with a Context argument"

    #@ac
    .line 97
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v9

    #@b0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v9

    #@b4
    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b7
    throw v8

    #@b8
    .line 93
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    #@b9
    .line 94
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@bb
    new-instance v9, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v10, "Failed to create service "

    #@c3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v9

    #@cb
    .line 95
    const-string/jumbo v10, ": service must have a public constructor with a Context argument"

    #@ce
    .line 94
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v9

    #@d2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v9

    #@d6
    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d9
    throw v8

    #@da
    .line 90
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    #@db
    .line 91
    .local v2, "ex":Ljava/lang/InstantiationException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@dd
    new-instance v9, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string/jumbo v10, "Failed to create service "

    #@e5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v9

    #@e9
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v9

    #@ed
    .line 92
    const-string/jumbo v10, ": service could not be instantiated"

    #@f0
    .line 91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v9

    #@f4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v9

    #@f8
    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@fb
    throw v8

    #@fc
    .line 110
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v7    # "service":Lcom/android/server/SystemService;, "TT;"
    :catch_4
    move-exception v4

    #@fd
    .line 111
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@ff
    new-instance v9, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v10, "Failed to start service "

    #@107
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v9

    #@10b
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v9

    #@10f
    .line 112
    const-string/jumbo v10, ": onStart threw an exception"

    #@112
    .line 111
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v9

    #@116
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v9

    #@11a
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11d
    throw v8
.end method

.method public startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    .line 65
    .local v1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 57
    .end local v1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    :catch_0
    move-exception v0

    #@a
    .line 58
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v2, "SystemServiceManager"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Starting "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 59
    new-instance v2, Ljava/lang/RuntimeException;

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "Failed to create service "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 60
    const-string/jumbo v4, ": service class not found, usually indicates that the caller should "

    #@39
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 61
    const-string/jumbo v4, "have called PackageManager.hasSystemFeature() to check whether the "

    #@40
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 62
    const-string/jumbo v4, "feature is available on this device before trying to start the "

    #@47
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    .line 63
    const-string/jumbo v4, "services that implement it"

    #@4e
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    throw v2
.end method

.method public startUser(I)V
    .locals 7
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 146
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 147
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 148
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/SystemService;

    #@11
    .line 150
    .local v2, "service":Lcom/android/server/SystemService;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onStartUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 147
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 151
    :catch_0
    move-exception v0

    #@18
    .line 152
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@1b
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Failure reporting start of user "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 153
    const-string/jumbo v6, " to service "

    #@2e
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 153
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_1

    #@46
    .line 145
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method

.method public stopUser(I)V
    .locals 7
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 172
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 173
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 174
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/SystemService;

    #@11
    .line 176
    .local v2, "service":Lcom/android/server/SystemService;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onStopUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 173
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 177
    :catch_0
    move-exception v0

    #@18
    .line 178
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@1b
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Failure reporting stop of user "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 179
    const-string/jumbo v6, " to service "

    #@2e
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 179
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_1

    #@46
    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method

.method public switchUser(I)V
    .locals 7
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 159
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 160
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@9
    .line 161
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/server/SystemService;

    #@11
    .line 163
    .local v2, "service":Lcom/android/server/SystemService;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 160
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 164
    :catch_0
    move-exception v0

    #@18
    .line 165
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@1b
    new-instance v5, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v6, "Failure reporting switch of user "

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 166
    const-string/jumbo v6, " to service "

    #@2e
    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    .line 166
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_1

    #@46
    .line 158
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method
