.class public final Lcom/android/commands/sm/Sm;
.super Ljava/lang/Object;
.source "Sm.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Sm"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mNextArg:I

.field mSm:Landroid/os/storage/IMountService;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 38
    const/4 v1, 0x0

    #@1
    .line 40
    .local v1, "success":Z
    :try_start_0
    new-instance v2, Lcom/android/commands/sm/Sm;

    #@3
    invoke-direct {v2}, Lcom/android/commands/sm/Sm;-><init>()V

    #@6
    invoke-virtual {v2, p0}, Lcom/android/commands/sm/Sm;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 41
    const/4 v1, 0x1

    #@a
    .line 49
    :goto_0
    if-eqz v1, :cond_1

    #@c
    const/4 v2, 0x0

    #@d
    :goto_1
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    #@10
    .line 37
    return-void

    #@11
    .line 42
    :catch_0
    move-exception v0

    #@12
    .line 43
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/IllegalArgumentException;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 44
    invoke-static {}, Lcom/android/commands/sm/Sm;->showUsage()I

    #@19
    .line 46
    :cond_0
    const-string/jumbo v2, "Sm"

    #@1c
    const-string/jumbo v3, "Error"

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 47
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Error: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    goto :goto_0

    #@3c
    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    #@3d
    goto :goto_1
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 184
    iget v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@2
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 185
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 188
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@15
    .line 189
    return-object v0
.end method

.method private static showUsage()I
    .locals 2

    #@0
    .prologue
    .line 193
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage: sm list-disks [adoptable]"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 194
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "       sm list-volumes [public|private|emulated|all]"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 195
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "       sm has-adoptable"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 196
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "       sm get-primary-storage-uuid"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 197
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, "       sm set-force-adoptable [true|false]"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 198
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, ""

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 199
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "       sm partition DISK [public|private|mixed] [ratio]"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 200
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "       sm mount VOLUME"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 201
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, "       sm unmount VOLUME"

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 202
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v1, "       sm format VOLUME"

    #@4d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 203
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v1, "       sm benchmark VOLUME"

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 204
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    const-string/jumbo v1, ""

    #@5d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 205
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    const-string/jumbo v1, "       sm forget [UUID|all]"

    #@65
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v1, ""

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 207
    const/4 v0, 0x1

    #@71
    return v0
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 53
    array-length v1, p1

    #@2
    if-ge v1, v2, :cond_0

    #@4
    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v1

    #@a
    .line 57
    :cond_0
    const-string/jumbo v1, "mount"

    #@d
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@17
    .line 58
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 59
    new-instance v1, Landroid/os/RemoteException;

    #@1d
    const-string/jumbo v2, "Failed to find running mount service"

    #@20
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 62
    :cond_1
    iput-object p1, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    #@26
    .line 63
    const/4 v1, 0x0

    #@27
    aget-object v0, p1, v1

    #@29
    .line 64
    .local v0, "op":Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@2b
    .line 66
    const-string/jumbo v1, "list-disks"

    #@2e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 67
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runListDisks()V

    #@37
    .line 52
    :goto_0
    return-void

    #@38
    .line 68
    :cond_2
    const-string/jumbo v1, "list-volumes"

    #@3b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 69
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runListVolumes()V

    #@44
    goto :goto_0

    #@45
    .line 70
    :cond_3
    const-string/jumbo v1, "has-adoptable"

    #@48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_4

    #@4e
    .line 71
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runHasAdoptable()V

    #@51
    goto :goto_0

    #@52
    .line 72
    :cond_4
    const-string/jumbo v1, "get-primary-storage-uuid"

    #@55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_5

    #@5b
    .line 73
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runGetPrimaryStorageUuid()V

    #@5e
    goto :goto_0

    #@5f
    .line 74
    :cond_5
    const-string/jumbo v1, "set-force-adoptable"

    #@62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_6

    #@68
    .line 75
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetForceAdoptable()V

    #@6b
    goto :goto_0

    #@6c
    .line 76
    :cond_6
    const-string/jumbo v1, "partition"

    #@6f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_7

    #@75
    .line 77
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runPartition()V

    #@78
    goto :goto_0

    #@79
    .line 78
    :cond_7
    const-string/jumbo v1, "mount"

    #@7c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_8

    #@82
    .line 79
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runMount()V

    #@85
    goto :goto_0

    #@86
    .line 80
    :cond_8
    const-string/jumbo v1, "unmount"

    #@89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_9

    #@8f
    .line 81
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runUnmount()V

    #@92
    goto :goto_0

    #@93
    .line 82
    :cond_9
    const-string/jumbo v1, "format"

    #@96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_a

    #@9c
    .line 83
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runFormat()V

    #@9f
    goto :goto_0

    #@a0
    .line 84
    :cond_a
    const-string/jumbo v1, "benchmark"

    #@a3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v1

    #@a7
    if-eqz v1, :cond_b

    #@a9
    .line 85
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runBenchmark()V

    #@ac
    goto :goto_0

    #@ad
    .line 86
    :cond_b
    const-string/jumbo v1, "forget"

    #@b0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v1

    #@b4
    if-eqz v1, :cond_c

    #@b6
    .line 87
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runForget()V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 89
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@bd
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c0
    throw v1
.end method

.method public runBenchmark()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 171
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@6
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->benchmark(Ljava/lang/String;)J

    #@9
    .line 169
    return-void
.end method

.method public runForget()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 176
    .local v0, "fsUuid":Ljava/lang/String;
    const-string/jumbo v1, "all"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 177
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@f
    invoke-interface {v1}, Landroid/os/storage/IMountService;->forgetAllVolumes()V

    #@12
    .line 174
    :goto_0
    return-void

    #@13
    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@15
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->forgetVolume(Ljava/lang/String;)V

    #@18
    goto :goto_0
.end method

.method public runFormat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@6
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->format(Ljava/lang/String;)V

    #@9
    .line 164
    return-void
.end method

.method public runGetPrimaryStorageUuid()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 130
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@4
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPrimaryStorageUuid()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b
    .line 129
    return-void
.end method

.method public runHasAdoptable()V
    .locals 3

    #@0
    .prologue
    .line 126
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "vold.has_adoptable"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    #@d
    .line 125
    return-void
.end method

.method public runListDisks()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    const-string/jumbo v3, "adoptable"

    #@3
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    .line 95
    .local v2, "onlyAdoptable":Z
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@d
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getDisks()[Landroid/os/storage/DiskInfo;

    #@10
    move-result-object v1

    #@11
    .line 96
    .local v1, "disks":[Landroid/os/storage/DiskInfo;
    const/4 v3, 0x0

    #@12
    array-length v4, v1

    #@13
    :goto_0
    if-ge v3, v4, :cond_2

    #@15
    aget-object v0, v1, v3

    #@17
    .line 97
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v2, :cond_0

    #@19
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    .line 98
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 96
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 93
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_2
    return-void
.end method

.method public runListVolumes()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 104
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 106
    .local v1, "filter":Ljava/lang/String;
    const-string/jumbo v6, "public"

    #@8
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_2

    #@e
    .line 107
    const/4 v2, 0x0

    #@f
    .line 116
    .local v2, "filterType":I
    :goto_0
    iget-object v6, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@11
    invoke-interface {v6, v5}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    #@14
    move-result-object v4

    #@15
    .line 117
    .local v4, "vols":[Landroid/os/storage/VolumeInfo;
    array-length v6, v4

    #@16
    :goto_1
    if-ge v5, v6, :cond_5

    #@18
    aget-object v3, v4, v5

    #@1a
    .line 118
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    const/4 v7, -0x1

    #@1b
    if-eq v2, v7, :cond_0

    #@1d
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    #@20
    move-result v7

    #@21
    if-ne v2, v7, :cond_1

    #@23
    .line 119
    :cond_0
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    #@26
    move-result v7

    #@27
    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 120
    .local v0, "envState":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2d
    new-instance v8, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@35
    move-result-object v9

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    const-string/jumbo v9, " "

    #@3d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v8

    #@45
    const-string/jumbo v9, " "

    #@48
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v8

    #@54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5b
    .line 117
    .end local v0    # "envState":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 108
    .end local v2    # "filterType":I
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "vols":[Landroid/os/storage/VolumeInfo;
    :cond_2
    const-string/jumbo v6, "private"

    #@61
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v6

    #@65
    if-eqz v6, :cond_3

    #@67
    .line 109
    const/4 v2, 0x1

    #@68
    .restart local v2    # "filterType":I
    goto :goto_0

    #@69
    .line 110
    .end local v2    # "filterType":I
    :cond_3
    const-string/jumbo v6, "emulated"

    #@6c
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v6

    #@70
    if-eqz v6, :cond_4

    #@72
    .line 111
    const/4 v2, 0x2

    #@73
    .restart local v2    # "filterType":I
    goto :goto_0

    #@74
    .line 113
    .end local v2    # "filterType":I
    :cond_4
    const/4 v2, -0x1

    #@75
    .restart local v2    # "filterType":I
    goto :goto_0

    #@76
    .line 103
    .restart local v4    # "vols":[Landroid/os/storage/VolumeInfo;
    :cond_5
    return-void
.end method

.method public runMount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 156
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@6
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->mount(Ljava/lang/String;)V

    #@9
    .line 154
    return-void
.end method

.method public runPartition()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 141
    .local v0, "diskId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 142
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "public"

    #@b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 143
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@13
    invoke-interface {v3, v0}, Landroid/os/storage/IMountService;->partitionPublic(Ljava/lang/String;)V

    #@16
    .line 139
    :goto_0
    return-void

    #@17
    .line 144
    :cond_0
    const-string/jumbo v3, "private"

    #@1a
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 145
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@22
    invoke-interface {v3, v0}, Landroid/os/storage/IMountService;->partitionPrivate(Ljava/lang/String;)V

    #@25
    goto :goto_0

    #@26
    .line 146
    :cond_1
    const-string/jumbo v3, "mixed"

    #@29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 147
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@36
    move-result v1

    #@37
    .line 148
    .local v1, "ratio":I
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@39
    invoke-interface {v3, v0, v1}, Landroid/os/storage/IMountService;->partitionMixed(Ljava/lang/String;I)V

    #@3c
    goto :goto_0

    #@3d
    .line 150
    .end local v1    # "ratio":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Unsupported partition type "

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v3
.end method

.method public runSetForceAdoptable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 134
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    .line 135
    .local v0, "forceAdoptable":Z
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@b
    if-eqz v0, :cond_0

    #@d
    move v1, v2

    #@e
    :goto_0
    invoke-interface {v3, v1, v2}, Landroid/os/storage/IMountService;->setDebugFlags(II)V

    #@11
    .line 133
    return-void

    #@12
    .line 135
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public runUnmount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 161
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@6
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->unmount(Ljava/lang/String;)V

    #@9
    .line 159
    return-void
.end method
