.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mContext:Landroid/content/Context;

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    #@a
    .line 55
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    #@c
    .line 52
    return-void
.end method

.method private pinFile(Ljava/lang/String;JJ)Z
    .locals 16
    .param p1, "fileToPin"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    #@0
    .prologue
    .line 83
    new-instance v8, Ljava/io/FileDescriptor;

    #@2
    invoke-direct {v8}, Ljava/io/FileDescriptor;-><init>()V

    #@5
    .line 85
    .local v8, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    #@7
    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    #@9
    or-int/2addr v2, v3

    #@a
    sget v3, Landroid/system/OsConstants;->O_NOFOLLOW:I

    #@c
    or-int/2addr v2, v3

    #@d
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-static {v0, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@14
    move-result-object v8

    #@15
    .line 87
    invoke-static {v8}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@18
    move-result-object v15

    #@19
    .line 89
    .local v15, "sb":Landroid/system/StructStat;
    add-long v2, p2, p4

    #@1b
    iget-wide v4, v15, Landroid/system/StructStat;->st_size:J

    #@1d
    cmp-long v2, v2, v4

    #@1f
    if-lez v2, :cond_0

    #@21
    .line 90
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    #@24
    .line 91
    const/4 v2, 0x0

    #@25
    return v2

    #@26
    .line 94
    :cond_0
    const-wide/16 v2, 0x0

    #@28
    cmp-long v2, p4, v2

    #@2a
    if-nez v2, :cond_1

    #@2c
    .line 95
    iget-wide v2, v15, Landroid/system/StructStat;->st_size:J

    #@2e
    sub-long p4, v2, p2

    #@30
    .line 98
    :cond_1
    const-wide/16 v2, 0x0

    #@32
    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    #@34
    sget v7, Landroid/system/OsConstants;->MAP_PRIVATE:I

    #@36
    move-wide/from16 v4, p4

    #@38
    move-wide/from16 v9, p2

    #@3a
    invoke-static/range {v2 .. v10}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    #@3d
    move-result-wide v12

    #@3e
    .line 99
    .local v12, "address":J
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    #@41
    .line 101
    move-wide/from16 v0, p4

    #@43
    invoke-static {v12, v13, v0, v1}, Landroid/system/Os;->mlock(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 103
    const/4 v2, 0x1

    #@47
    return v2

    #@48
    .line 104
    .end local v12    # "address":J
    .end local v15    # "sb":Landroid/system/StructStat;
    :catch_0
    move-exception v11

    #@49
    .line 105
    .local v11, "e":Landroid/system/ErrnoException;
    const-string/jumbo v2, "PinnerService"

    #@4c
    new-instance v3, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v4, "Failed to pin file "

    #@54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    move-object/from16 v0, p1

    #@5a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    const-string/jumbo v4, " with error "

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v11}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 106
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->valid()Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_2

    #@7a
    .line 107
    :try_start_1
    invoke-static {v8}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@7d
    .line 110
    :cond_2
    :goto_0
    const/4 v2, 0x0

    #@7e
    return v2

    #@7f
    .line 108
    :catch_1
    move-exception v14

    #@80
    .local v14, "eClose":Landroid/system/ErrnoException;
    const-string/jumbo v2, "PinnerService"

    #@83
    new-instance v3, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v4, "Failed to close fd, error = "

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v14}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 9

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 61
    const-string/jumbo v0, "PinnerService"

    #@5
    const-string/jumbo v1, "Starting PinnerService"

    #@8
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 63
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$BinderService;)V

    #@11
    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    #@13
    .line 64
    const-string/jumbo v0, "pinner"

    #@16
    iget-object v1, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    #@18
    invoke-virtual {p0, v0, v1}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1b
    .line 68
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    #@1d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v0

    #@21
    const v1, 0x1070049

    #@24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@27
    move-result-object v6

    #@28
    .line 69
    .local v6, "filesToPin":[Ljava/lang/String;
    const/4 v7, 0x0

    #@29
    .local v7, "i":I
    :goto_0
    array-length v0, v6

    #@2a
    if-ge v7, v0, :cond_1

    #@2c
    .line 70
    aget-object v1, v6, v7

    #@2e
    move-object v0, p0

    #@2f
    move-wide v4, v2

    #@30
    invoke-direct/range {v0 .. v5}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;JJ)Z

    #@33
    move-result v8

    #@34
    .line 71
    .local v8, "success":Z
    if-eqz v8, :cond_0

    #@36
    .line 72
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    #@38
    aget-object v1, v6, v7

    #@3a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 73
    const-string/jumbo v0, "PinnerService"

    #@40
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "Pinned file = "

    #@48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    aget-object v4, v6, v7

    #@4e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 69
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 75
    :cond_0
    const-string/jumbo v0, "PinnerService"

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v4, "Failed to pin file = "

    #@67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    aget-object v4, v6, v7

    #@6d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    goto :goto_1

    #@79
    .line 60
    .end local v8    # "success":Z
    :cond_1
    return-void
.end method
