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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@a
    .line 42
    const/4 v0, -0x1

    #@b
    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@d
    .line 45
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    #@f
    .line 44
    return-void
.end method


# virtual methods
.method public cleanupUser(I)V
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x80000

    #@3
    .line 220
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    .line 221
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    .line 222
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/SystemService;

    #@14
    .line 223
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "onCleanupUser "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 224
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 223
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@33
    .line 226
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onCleanupUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 231
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    .line 221
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 227
    :catch_0
    move-exception v0

    #@3d
    .line 228
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Failure reporting cleanup of user "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 229
    const-string/jumbo v6, " to service "

    #@53
    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 229
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    goto :goto_1

    #@6b
    .line 219
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 6

    #@0
    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 253
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
    .line 254
    const-string/jumbo v4, "Services:\n"

    #@1b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 255
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v3

    #@24
    .line 256
    .local v3, "startedLen":I
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@27
    .line 257
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Lcom/android/server/SystemService;

    #@2f
    .line 258
    .local v2, "service":Lcom/android/server/SystemService;
    const-string/jumbo v4, "\t"

    #@32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 259
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 260
    const-string/jumbo v5, "\n"

    #@45
    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 256
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 263
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
    .line 251
    return-void
.end method

.method public isSafeMode()Z
    .locals 1

    #@0
    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    #@2
    return v0
.end method

.method public setSafeMode(Z)V
    .locals 0
    .param p1, "safeMode"    # Z

    #@0
    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    #@2
    .line 236
    return-void
.end method

.method public startBootPhase(I)V
    .locals 10
    .param p1, "phase"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x80000

    #@3
    .line 130
    iget v4, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@5
    if-gt p1, v4, :cond_0

    #@7
    .line 131
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v5, "Next phase must be larger than previous"

    #@c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4

    #@10
    .line 133
    :cond_0
    iput p1, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@12
    .line 135
    const-string/jumbo v4, "SystemServiceManager"

    #@15
    new-instance v5, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v6, "Starting phase "

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    iget v6, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 137
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "OnBootPhase "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    const-wide/32 v6, 0x80000

    #@45
    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@48
    .line 138
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v3

    #@4e
    .line 139
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@4f
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@51
    .line 140
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    check-cast v2, Lcom/android/server/SystemService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .line 142
    .local v2, "service":Lcom/android/server/SystemService;
    :try_start_1
    iget v4, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@5b
    invoke-virtual {v2, v4}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5e
    .line 139
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_0

    #@61
    .line 143
    :catch_0
    move-exception v0

    #@62
    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    #@64
    new-instance v5, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v6, "Failed to boot service "

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    .line 145
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 146
    const-string/jumbo v6, ": onBootPhase threw an exception during phase "

    #@7f
    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    .line 147
    iget v6, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    #@85
    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@90
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@91
    .line 150
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "service":Lcom/android/server/SystemService;
    .end local v3    # "serviceLen":I
    :catchall_0
    move-exception v4

    #@92
    .line 151
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@95
    .line 150
    throw v4

    #@96
    .line 151
    .restart local v1    # "i":I
    .restart local v3    # "serviceLen":I
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@99
    .line 129
    return-void
.end method

.method public startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .locals 14
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
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-wide/32 v12, 0x80000

    #@3
    .line 80
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6
    move-result-object v6

    #@7
    .line 81
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v8, "SystemServiceManager"

    #@a
    new-instance v9, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v10, "Starting "

    #@12
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v9

    #@16
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v9

    #@1e
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v9, "StartService "

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    const-wide/32 v10, 0x80000

    #@38
    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3b
    .line 85
    const-class v8, Lcom/android/server/SystemService;

    #@3d
    invoke-virtual {v8, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@40
    move-result v8

    #@41
    if-nez v8, :cond_0

    #@43
    .line 86
    new-instance v8, Ljava/lang/RuntimeException;

    #@45
    new-instance v9, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v10, "Failed to create "

    #@4d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    .line 87
    const-string/jumbo v10, ": service must extend "

    #@58
    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v9

    #@5c
    .line 87
    const-class v10, Lcom/android/server/SystemService;

    #@5e
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@61
    move-result-object v10

    #@62
    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v9

    #@6a
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6e
    .line 118
    .end local v6    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v8

    #@6f
    .line 119
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@72
    .line 118
    throw v8

    #@73
    .line 91
    .restart local v6    # "name":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x1

    #@74
    :try_start_1
    new-array v8, v8, [Ljava/lang/Class;

    #@76
    const-class v9, Landroid/content/Context;

    #@78
    const/4 v10, 0x0

    #@79
    aput-object v9, v8, v10

    #@7b
    invoke-virtual {p1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@7e
    move-result-object v0

    #@7f
    .line 92
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v8, 0x1

    #@80
    new-array v8, v8, [Ljava/lang/Object;

    #@82
    iget-object v9, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    #@84
    const/4 v10, 0x0

    #@85
    aput-object v9, v8, v10

    #@87
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    move-result-object v7

    #@8b
    check-cast v7, Lcom/android/server/SystemService;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8d
    .line 108
    .local v7, "service":Lcom/android/server/SystemService;, "TT;"
    :try_start_2
    iget-object v8, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@8f
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@92
    .line 112
    :try_start_3
    invoke-virtual {v7}, Lcom/android/server/SystemService;->onStart()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@95
    .line 119
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    #@98
    .line 117
    return-object v7

    #@99
    .line 102
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v7    # "service":Lcom/android/server/SystemService;, "TT;"
    :catch_0
    move-exception v5

    #@9a
    .line 103
    .local v5, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    new-instance v8, Ljava/lang/RuntimeException;

    #@9c
    new-instance v9, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v10, "Failed to create service "

    #@a4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v9

    #@ac
    .line 104
    const-string/jumbo v10, ": service constructor threw an exception"

    #@af
    .line 103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v9

    #@b3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v9

    #@b7
    invoke-direct {v8, v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ba
    throw v8

    #@bb
    .line 99
    .end local v5    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    #@bc
    .line 100
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@be
    new-instance v9, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v10, "Failed to create service "

    #@c6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v9

    #@ca
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v9

    #@ce
    .line 101
    const-string/jumbo v10, ": service must have a public constructor with a Context argument"

    #@d1
    .line 100
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v9

    #@d5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@dc
    throw v8

    #@dd
    .line 96
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    #@de
    .line 97
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@e0
    new-instance v9, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v10, "Failed to create service "

    #@e8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v9

    #@ec
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    .line 98
    const-string/jumbo v10, ": service must have a public constructor with a Context argument"

    #@f3
    .line 97
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v9

    #@f7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v9

    #@fb
    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@fe
    throw v8

    #@ff
    .line 93
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    #@100
    .line 94
    .local v2, "ex":Ljava/lang/InstantiationException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@102
    new-instance v9, Ljava/lang/StringBuilder;

    #@104
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    const-string/jumbo v10, "Failed to create service "

    #@10a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v9

    #@10e
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v9

    #@112
    .line 95
    const-string/jumbo v10, ": service could not be instantiated"

    #@115
    .line 94
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v9

    #@119
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v9

    #@11d
    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@120
    throw v8

    #@121
    .line 113
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v7    # "service":Lcom/android/server/SystemService;, "TT;"
    :catch_4
    move-exception v4

    #@122
    .line 114
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/RuntimeException;

    #@124
    new-instance v9, Ljava/lang/StringBuilder;

    #@126
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@129
    const-string/jumbo v10, "Failed to start service "

    #@12c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v9

    #@130
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v9

    #@134
    .line 115
    const-string/jumbo v10, ": onStart threw an exception"

    #@137
    .line 114
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v9

    #@13b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v9

    #@13f
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@142
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    .line 66
    .local v1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7
    move-result-object v2

    #@8
    return-object v2

    #@9
    .line 58
    .end local v1    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    :catch_0
    move-exception v0

    #@a
    .line 59
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
    .line 60
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
    .line 61
    const-string/jumbo v4, ": service class not found, usually indicates that the caller should "

    #@39
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    .line 62
    const-string/jumbo v4, "have called PackageManager.hasSystemFeature() to check whether the "

    #@40
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 63
    const-string/jumbo v4, "feature is available on this device before trying to start the "

    #@47
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    .line 64
    const-string/jumbo v4, "services that implement it"

    #@4e
    .line 60
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
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x80000

    #@3
    .line 156
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    .line 157
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    .line 158
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/SystemService;

    #@14
    .line 159
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "onStartUser "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 160
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@33
    .line 162
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onStartUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 167
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    .line 157
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 163
    :catch_0
    move-exception v0

    #@3d
    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Failure reporting start of user "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 165
    const-string/jumbo v6, " to service "

    #@53
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 165
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    goto :goto_1

    #@6b
    .line 155
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method

.method public stopUser(I)V
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x80000

    #@3
    .line 204
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    .line 205
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    .line 206
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/SystemService;

    #@14
    .line 207
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "onStopUser "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 208
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@33
    .line 210
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onStopUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 215
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    .line 205
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 211
    :catch_0
    move-exception v0

    #@3d
    .line 212
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Failure reporting stop of user "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 213
    const-string/jumbo v6, " to service "

    #@53
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 213
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    goto :goto_1

    #@6b
    .line 203
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method

.method public switchUser(I)V
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x80000

    #@3
    .line 188
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    .line 189
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    .line 190
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/SystemService;

    #@14
    .line 191
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "onSwitchUser "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 192
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@33
    .line 194
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 199
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    .line 189
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 195
    :catch_0
    move-exception v0

    #@3d
    .line 196
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Failure reporting switch of user "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 197
    const-string/jumbo v6, " to service "

    #@53
    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 197
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    goto :goto_1

    #@6b
    .line 187
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method

.method public unlockUser(I)V
    .locals 10
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const-wide/32 v8, 0x80000

    #@3
    .line 172
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v3

    #@9
    .line 173
    .local v3, "serviceLen":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@c
    .line 174
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/SystemService;

    #@14
    .line 175
    .local v2, "service":Lcom/android/server/SystemService;
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "onUnlockUser "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 176
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@33
    .line 178
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/android/server/SystemService;->onUnlockUser(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 183
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@39
    .line 173
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 179
    :catch_0
    move-exception v0

    #@3d
    .line 180
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SystemServiceManager"

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "Failure reporting unlock of user "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 181
    const-string/jumbo v6, " to service "

    #@53
    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 181
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v6

    #@5b
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v6

    #@5f
    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    goto :goto_1

    #@6b
    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Lcom/android/server/SystemService;
    :cond_0
    return-void
.end method
