.class public Ljava/util/logging/FileHandler;
.super Ljava/util/logging/StreamHandler;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/FileHandler$MeasureOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_APPEND:Z = false

.field private static final DEFAULT_COUNT:I = 0x1

.field private static final DEFAULT_LIMIT:I = 0x0

.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "%h/java%u.log"

.field private static final LCK_EXT:Ljava/lang/String; = ".lck"

.field private static final allLocks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private count:I

.field fileName:Ljava/lang/String;

.field private files:[Ljava/io/File;

.field private limit:I

.field lock:Ljava/nio/channels/FileLock;

.field private manager:Ljava/util/logging/LogManager;

.field private output:Ljava/util/logging/FileHandler$MeasureOutputStream;

.field private pattern:Ljava/lang/String;

.field uniqueID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    #@7
    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 148
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 133
    iput-object v1, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@6
    .line 136
    iput-object v1, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@8
    .line 139
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@b
    .line 149
    invoke-direct {p0, v1, v1, v1, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    #@e
    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 382
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 133
    iput-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@6
    .line 136
    iput-object v2, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@8
    .line 139
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@b
    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Pattern cannot be empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 386
    :cond_0
    const/4 v0, 0x0

    #@1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v0

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    invoke-direct {p0, p1, v2, v0, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    #@27
    .line 382
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 439
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 133
    iput-object v2, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@6
    .line 136
    iput-object v2, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@8
    .line 139
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@b
    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Pattern cannot be empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 443
    :cond_0
    if-ltz p2, :cond_1

    #@1c
    const/4 v0, 0x1

    #@1d
    if-ge p3, v0, :cond_2

    #@1f
    .line 444
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "limit < 0 || count < 1"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 446
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {p0, p1, v2, v0, v1}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    #@33
    .line 439
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "count"    # I
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 475
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 133
    iput-object v0, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@6
    .line 136
    iput-object v0, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@8
    .line 139
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@b
    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Pattern cannot be empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 479
    :cond_0
    if-ltz p2, :cond_1

    #@1c
    const/4 v0, 0x1

    #@1d
    if-ge p3, v0, :cond_2

    #@1f
    .line 480
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "limit < 0 || count < 1"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 482
    :cond_2
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v1

    #@30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v2

    #@34
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    #@37
    .line 475
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 408
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    #@4
    .line 133
    iput-object v0, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@6
    .line 136
    iput-object v0, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@8
    .line 139
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@b
    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Pattern cannot be empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 412
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1d
    move-result-object v0

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    .line 413
    const/4 v2, 0x1

    #@24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v2

    #@28
    .line 412
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/logging/FileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    #@2b
    .line 408
    return-void
.end method

.method private getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    .line 333
    iget-object v2, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 334
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    .line 335
    return p2

    #@9
    .line 337
    :cond_0
    move v1, p2

    #@a
    .line 338
    .local v1, "result":Z
    const-string/jumbo v2, "true"

    #@d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 339
    const/4 v1, 0x1

    #@14
    .line 343
    .end local v1    # "result":Z
    :cond_1
    :goto_0
    return v1

    #@15
    .line 340
    .restart local v1    # "result":Z
    :cond_2
    const-string/jumbo v2, "false"

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 341
    const/4 v1, 0x0

    #@1f
    .local v1, "result":Z
    goto :goto_0
.end method

.method private getIntProperty(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 354
    iget-object v3, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    #@2
    invoke-virtual {v3, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 355
    .local v1, "property":Ljava/lang/String;
    move v2, p2

    #@7
    .line 356
    .local v2, "result":I
    if-eqz v1, :cond_0

    #@9
    .line 358
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v2

    #@d
    .line 363
    :cond_0
    :goto_0
    return v2

    #@e
    .line 359
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    iget-object v1, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 349
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    #@9
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    #@a
    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/lang/Boolean;
    .param p3, "l"    # Ljava/lang/Integer;
    .param p4, "c"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    #@6
    .line 157
    iget-object v0, p0, Ljava/util/logging/FileHandler;->manager:Ljava/util/logging/LogManager;

    #@8
    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    #@b
    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/logging/FileHandler;->initProperties(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    #@e
    .line 159
    invoke-direct {p0}, Ljava/util/logging/FileHandler;->initOutputFiles()V

    #@11
    .line 154
    return-void
.end method

.method private initOutputFiles()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 165
    :goto_0
    iget v4, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@3
    add-int/lit8 v4, v4, 0x1

    #@5
    iput v4, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@7
    .line 167
    const/4 v2, 0x0

    #@8
    .local v2, "generation":I
    :goto_1
    iget v4, p0, Ljava/util/logging/FileHandler;->count:I

    #@a
    if-ge v2, v4, :cond_0

    #@c
    .line 169
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@e
    new-instance v5, Ljava/io/File;

    #@10
    invoke-direct {p0, v2}, Ljava/util/logging/FileHandler;->parseFileName(I)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@17
    aput-object v5, v4, v2

    #@19
    .line 167
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 171
    :cond_0
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@1e
    aget-object v4, v4, v10

    #@20
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    iput-object v4, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@26
    .line 172
    sget-object v5, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    #@28
    monitor-enter v5

    #@29
    .line 177
    :try_start_0
    sget-object v4, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    #@2b
    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@2d
    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result-object v4

    #@31
    if-eqz v4, :cond_1

    #@33
    :goto_2
    monitor-exit v5

    #@34
    goto :goto_0

    #@35
    .line 180
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@37
    const/4 v6, 0x0

    #@38
    aget-object v4, v4, v6

    #@3a
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_4

    #@40
    .line 181
    iget-boolean v4, p0, Ljava/util/logging/FileHandler;->append:Z

    #@42
    if-eqz v4, :cond_2

    #@44
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@46
    const/4 v6, 0x0

    #@47
    aget-object v4, v4, v6

    #@49
    invoke-virtual {v4}, Ljava/io/File;->length()J

    #@4c
    move-result-wide v6

    #@4d
    iget v4, p0, Ljava/util/logging/FileHandler;->limit:I

    #@4f
    int-to-long v8, v4

    #@50
    cmp-long v4, v6, v8

    #@52
    if-ltz v4, :cond_4

    #@54
    .line 182
    :cond_2
    iget v4, p0, Ljava/util/logging/FileHandler;->count:I

    #@56
    add-int/lit8 v3, v4, -0x1

    #@58
    .local v3, "i":I
    :goto_3
    if-lez v3, :cond_4

    #@5a
    .line 183
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@5c
    aget-object v4, v4, v3

    #@5e
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_3

    #@64
    .line 184
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@66
    aget-object v4, v4, v3

    #@68
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@6b
    .line 186
    :cond_3
    iget-object v4, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@6d
    add-int/lit8 v6, v3, -0x1

    #@6f
    aget-object v4, v4, v6

    #@71
    iget-object v6, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@73
    aget-object v6, v6, v3

    #@75
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@78
    .line 182
    add-int/lit8 v3, v3, -0x1

    #@7a
    goto :goto_3

    #@7b
    .line 189
    .end local v3    # "i":I
    :cond_4
    new-instance v1, Ljava/io/FileOutputStream;

    #@7d
    new-instance v4, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@84
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    .line 190
    const-string/jumbo v6, ".lck"

    #@8b
    .line 189
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@96
    .line 191
    .local v1, "fileStream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@99
    move-result-object v0

    #@9a
    .line 197
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    #@9d
    move-result-object v4

    #@9e
    iput-object v4, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@a0
    .line 198
    iget-object v4, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@a2
    if-nez v4, :cond_5

    #@a4
    .line 199
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a7
    goto :goto_2

    #@a8
    .line 172
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "fileStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    #@a9
    monitor-exit v5

    #@aa
    throw v4

    #@ab
    .line 202
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "fileStream":Ljava/io/FileOutputStream;
    :cond_5
    :try_start_2
    sget-object v4, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    #@ad
    iget-object v6, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@af
    iget-object v7, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@b1
    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b4
    monitor-exit v5

    #@b5
    .line 206
    new-instance v4, Ljava/util/logging/FileHandler$MeasureOutputStream;

    #@b7
    new-instance v5, Ljava/io/BufferedOutputStream;

    #@b9
    .line 207
    new-instance v6, Ljava/io/FileOutputStream;

    #@bb
    iget-object v7, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@bd
    iget-boolean v8, p0, Ljava/util/logging/FileHandler;->append:Z

    #@bf
    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    #@c2
    .line 206
    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@c5
    .line 207
    iget-object v6, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@c7
    aget-object v6, v6, v10

    #@c9
    invoke-virtual {v6}, Ljava/io/File;->length()J

    #@cc
    move-result-wide v6

    #@cd
    .line 206
    invoke-direct {v4, v5, v6, v7}, Ljava/util/logging/FileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;J)V

    #@d0
    iput-object v4, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    #@d2
    .line 208
    iget-object v4, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    #@d4
    invoke-virtual {p0, v4}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@d7
    .line 162
    return-void
.end method

.method private initProperties(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "a"    # Ljava/lang/Boolean;
    .param p3, "l"    # Ljava/lang/Integer;
    .param p4, "c"    # Ljava/lang/Integer;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 212
    const-string/jumbo v1, "ALL"

    #@6
    const-string/jumbo v4, "java.util.logging.XMLFormatter"

    #@9
    invoke-super {p0, v1, v5, v4, v5}, Ljava/util/logging/StreamHandler;->initProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 214
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 215
    .local v0, "className":Ljava/lang/String;
    if-nez p1, :cond_0

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v4, ".pattern"

    #@22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 216
    const-string/jumbo v4, "%h/java%u.log"

    #@2d
    .line 215
    invoke-direct {p0, v1, v4}, Ljava/util/logging/FileHandler;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object p1

    #@31
    .end local p1    # "p":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@33
    .line 217
    iget-object v1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@35
    if-nez v1, :cond_1

    #@37
    .line 218
    new-instance v1, Ljava/lang/NullPointerException;

    #@39
    const-string/jumbo v2, "pattern == null"

    #@3c
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v1

    #@40
    .line 219
    :cond_1
    iget-object v1, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@42
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_2

    #@48
    .line 220
    new-instance v1, Ljava/lang/NullPointerException;

    #@4a
    const-string/jumbo v2, "pattern.isEmpty()"

    #@4d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1

    #@51
    .line 222
    :cond_2
    if-nez p2, :cond_3

    #@53
    new-instance v1, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    const-string/jumbo v4, ".append"

    #@5f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-direct {p0, v1, v3}, Ljava/util/logging/FileHandler;->getBooleanProperty(Ljava/lang/String;Z)Z

    #@6a
    move-result v1

    #@6b
    :goto_0
    iput-boolean v1, p0, Ljava/util/logging/FileHandler;->append:Z

    #@6d
    .line 224
    if-nez p4, :cond_4

    #@6f
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    const-string/jumbo v4, ".count"

    #@7b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-direct {p0, v1, v2}, Ljava/util/logging/FileHandler;->getIntProperty(Ljava/lang/String;I)I

    #@86
    move-result v1

    #@87
    :goto_1
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    #@89
    .line 226
    if-nez p3, :cond_5

    #@8b
    new-instance v1, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    const-string/jumbo v4, ".limit"

    #@97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    invoke-direct {p0, v1, v3}, Ljava/util/logging/FileHandler;->getIntProperty(Ljava/lang/String;I)I

    #@a2
    move-result v1

    #@a3
    :goto_2
    iput v1, p0, Ljava/util/logging/FileHandler;->limit:I

    #@a5
    .line 228
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    #@a7
    if-ge v1, v2, :cond_6

    #@a9
    move v1, v2

    #@aa
    :goto_3
    iput v1, p0, Ljava/util/logging/FileHandler;->count:I

    #@ac
    .line 229
    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    #@ae
    if-gez v1, :cond_7

    #@b0
    move v1, v3

    #@b1
    :goto_4
    iput v1, p0, Ljava/util/logging/FileHandler;->limit:I

    #@b3
    .line 230
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    #@b5
    new-array v1, v1, [Ljava/io/File;

    #@b7
    iput-object v1, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@b9
    .line 211
    return-void

    #@ba
    .line 223
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@bd
    move-result v1

    #@be
    goto :goto_0

    #@bf
    .line 225
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    #@c2
    move-result v1

    #@c3
    goto :goto_1

    #@c4
    .line 227
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@c7
    move-result v1

    #@c8
    goto :goto_2

    #@c9
    .line 228
    :cond_6
    iget v1, p0, Ljava/util/logging/FileHandler;->count:I

    #@cb
    goto :goto_3

    #@cc
    .line 229
    :cond_7
    iget v1, p0, Ljava/util/logging/FileHandler;->limit:I

    #@ce
    goto :goto_4
.end method

.method private parseFileName(I)Ljava/lang/String;
    .locals 14
    .param p1, "gen"    # I

    #@0
    .prologue
    const/16 v13, 0x25

    #@2
    .line 259
    const/4 v0, 0x0

    #@3
    .line 260
    .local v0, "cur":I
    const/4 v5, 0x0

    #@4
    .line 261
    .local v5, "next":I
    const/4 v2, 0x0

    #@5
    .line 262
    .local v2, "hasUniqueID":Z
    const/4 v1, 0x0

    #@6
    .line 264
    .local v1, "hasGeneration":Z
    const-string/jumbo v10, "user.home"

    #@9
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 265
    .local v3, "homePath":Ljava/lang/String;
    if-nez v3, :cond_0

    #@f
    .line 266
    new-instance v10, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v11, "System property \"user.home\" is null"

    #@14
    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v10

    #@18
    .line 268
    :cond_0
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    #@1a
    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d
    move-result v4

    #@1e
    .line 270
    .local v4, "homePathHasSepEnd":Z
    const-string/jumbo v10, "java.io.tmpdir"

    #@21
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    .line 271
    .local v7, "tempPath":Ljava/lang/String;
    if-nez v7, :cond_1

    #@27
    move-object v7, v3

    #@28
    .line 272
    :cond_1
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    #@2a
    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2d
    move-result v8

    #@2e
    .line 274
    .local v8, "tempPathHasSepEnd":Z
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    .line 275
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@35
    sget-char v11, Ljava/io/File;->separatorChar:C

    #@37
    const/16 v12, 0x2f

    #@39
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@3c
    move-result-object v10

    #@3d
    iput-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@3f
    .line 277
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@41
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    #@44
    move-result-object v9

    #@45
    .line 278
    .local v9, "value":[C
    :cond_2
    :goto_0
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@47
    invoke-virtual {v10, v13, v0}, Ljava/lang/String;->indexOf(II)I

    #@4a
    move-result v5

    #@4b
    if-ltz v5, :cond_4

    #@4d
    .line 279
    add-int/lit8 v5, v5, 0x1

    #@4f
    iget-object v10, p0, Ljava/util/logging/FileHandler;->pattern:Ljava/lang/String;

    #@51
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@54
    move-result v10

    #@55
    if-ge v5, v10, :cond_2

    #@57
    .line 280
    aget-char v10, v9, v5

    #@59
    sparse-switch v10, :sswitch_data_0

    #@5c
    .line 309
    sub-int v10, v5, v0

    #@5e
    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@61
    .line 311
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@63
    move v0, v5

    #@64
    goto :goto_0

    #@65
    .line 282
    :sswitch_0
    sub-int v10, v5, v0

    #@67
    add-int/lit8 v10, v10, -0x1

    #@69
    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v10

    #@6d
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    .line 283
    const/4 v1, 0x1

    #@71
    .line 284
    goto :goto_1

    #@72
    .line 286
    :sswitch_1
    sub-int v10, v5, v0

    #@74
    add-int/lit8 v10, v10, -0x1

    #@76
    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@79
    move-result-object v10

    #@7a
    iget v11, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@7c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    .line 287
    const/4 v2, 0x1

    #@80
    .line 288
    goto :goto_1

    #@81
    .line 294
    :sswitch_2
    sub-int v10, v5, v0

    #@83
    add-int/lit8 v10, v10, -0x1

    #@85
    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@88
    move-result-object v10

    #@89
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 295
    if-nez v8, :cond_3

    #@8e
    .line 296
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    #@90
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    goto :goto_1

    #@94
    .line 300
    :sswitch_3
    sub-int v10, v5, v0

    #@96
    add-int/lit8 v10, v10, -0x1

    #@98
    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v10

    #@9c
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    .line 301
    if-nez v4, :cond_3

    #@a1
    .line 302
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    #@a3
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    goto :goto_1

    #@a7
    .line 306
    :sswitch_4
    sub-int v10, v5, v0

    #@a9
    add-int/lit8 v10, v10, -0x1

    #@ab
    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v10

    #@af
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b2
    goto :goto_1

    #@b3
    .line 317
    :cond_4
    array-length v10, v9

    #@b4
    sub-int/2addr v10, v0

    #@b5
    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@b8
    .line 319
    if-nez v1, :cond_5

    #@ba
    iget v10, p0, Ljava/util/logging/FileHandler;->count:I

    #@bc
    const/4 v11, 0x1

    #@bd
    if-le v10, v11, :cond_5

    #@bf
    .line 320
    const-string/jumbo v10, "."

    #@c2
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c9
    .line 323
    :cond_5
    if-nez v2, :cond_6

    #@cb
    iget v10, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@cd
    if-lez v10, :cond_6

    #@cf
    .line 324
    const-string/jumbo v10, "."

    #@d2
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v10

    #@d6
    iget v11, p0, Ljava/util/logging/FileHandler;->uniqueID:I

    #@d8
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db
    .line 327
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v10

    #@df
    return-object v10

    #@e0
    .line 280
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_4
        0x67 -> :sswitch_0
        0x68 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 5

    #@0
    .prologue
    .line 491
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    #@3
    .line 492
    sget-object v3, Ljava/util/logging/FileHandler;->allLocks:Ljava/util/Hashtable;

    #@5
    iget-object v4, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@7
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 494
    :try_start_0
    iget-object v3, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@c
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    #@f
    move-result-object v0

    #@10
    .line 495
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    iget-object v3, p0, Ljava/util/logging/FileHandler;->lock:Ljava/nio/channels/FileLock;

    #@12
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    #@15
    .line 496
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    #@18
    .line 497
    new-instance v2, Ljava/io/File;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    iget-object v4, p0, Ljava/util/logging/FileHandler;->fileName:Ljava/lang/String;

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, ".lck"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@33
    .line 498
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 489
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-void

    #@37
    .line 499
    :catch_0
    move-exception v1

    #@38
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method findNextGeneration()V
    .locals 7

    #@0
    .prologue
    .line 234
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    #@3
    .line 235
    iget v2, p0, Ljava/util/logging/FileHandler;->count:I

    #@5
    add-int/lit8 v1, v2, -0x1

    #@7
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    #@9
    .line 236
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@b
    aget-object v2, v2, v1

    #@d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 237
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@15
    aget-object v2, v2, v1

    #@17
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@1a
    .line 239
    :cond_0
    iget-object v2, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@1c
    add-int/lit8 v3, v1, -0x1

    #@1e
    aget-object v2, v2, v3

    #@20
    iget-object v3, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@22
    aget-object v3, v3, v1

    #@24
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@27
    .line 235
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 242
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/logging/FileHandler$MeasureOutputStream;

    #@2c
    new-instance v3, Ljava/io/BufferedOutputStream;

    #@2e
    .line 243
    new-instance v4, Ljava/io/FileOutputStream;

    #@30
    iget-object v5, p0, Ljava/util/logging/FileHandler;->files:[Ljava/io/File;

    #@32
    const/4 v6, 0x0

    #@33
    aget-object v5, v5, v6

    #@35
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@38
    .line 242
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3b
    invoke-direct {v2, v3}, Ljava/util/logging/FileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3e
    iput-object v2, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    .line 247
    :goto_1
    iget-object v2, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    #@42
    invoke-virtual {p0, v2}, Ljava/util/logging/FileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    #@45
    .line 233
    return-void

    #@46
    .line 244
    :catch_0
    move-exception v0

    #@47
    .line 245
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    #@4a
    move-result-object v2

    #@4b
    const-string/jumbo v3, "Error opening log file"

    #@4e
    const/4 v4, 0x4

    #@4f
    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    #@52
    goto :goto_1
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 512
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    #@4
    .line 513
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->flush()V

    #@7
    .line 514
    iget v0, p0, Ljava/util/logging/FileHandler;->limit:I

    #@9
    if-lez v0, :cond_0

    #@b
    iget-object v0, p0, Ljava/util/logging/FileHandler;->output:Ljava/util/logging/FileHandler$MeasureOutputStream;

    #@d
    invoke-virtual {v0}, Ljava/util/logging/FileHandler$MeasureOutputStream;->getLength()J

    #@10
    move-result-wide v0

    #@11
    iget v2, p0, Ljava/util/logging/FileHandler;->limit:I

    #@13
    int-to-long v2, v2

    #@14
    cmp-long v0, v0, v2

    #@16
    if-ltz v0, :cond_0

    #@18
    .line 515
    invoke-virtual {p0}, Ljava/util/logging/FileHandler;->findNextGeneration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit p0

    #@1c
    .line 511
    return-void

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method
