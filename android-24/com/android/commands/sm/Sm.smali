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
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 38
    const/4 v1, 0x0

    #@2
    .line 40
    .local v1, "success":Z
    :try_start_0
    new-instance v3, Lcom/android/commands/sm/Sm;

    #@4
    invoke-direct {v3}, Lcom/android/commands/sm/Sm;-><init>()V

    #@7
    invoke-virtual {v3, p0}, Lcom/android/commands/sm/Sm;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 41
    const/4 v1, 0x1

    #@b
    .line 50
    :goto_0
    if-eqz v1, :cond_0

    #@d
    const/4 v2, 0x0

    #@e
    :cond_0
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    #@11
    .line 37
    return-void

    #@12
    .line 42
    :catch_0
    move-exception v0

    #@13
    .line 43
    .local v0, "e":Ljava/lang/Exception;
    instance-of v3, v0, Ljava/lang/IllegalArgumentException;

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 44
    invoke-static {}, Lcom/android/commands/sm/Sm;->showUsage()I

    #@1a
    .line 45
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    #@1d
    .line 47
    :cond_1
    const-string/jumbo v3, "Sm"

    #@20
    const-string/jumbo v4, "Error"

    #@23
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 48
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Error: "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f
    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 223
    iget v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@2
    iget-object v2, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 224
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 227
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@15
    .line 228
    return-object v0
.end method

.method private static showUsage()I
    .locals 2

    #@0
    .prologue
    .line 232
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage: sm list-disks [adoptable]"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 233
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "       sm list-volumes [public|private|emulated|all]"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 234
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "       sm has-adoptable"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 235
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "       sm get-primary-storage-uuid"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 236
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, "       sm set-force-adoptable [true|false]"

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 237
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, ""

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 238
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "       sm partition DISK [public|private|mixed] [ratio]"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 239
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "       sm mount VOLUME"

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 240
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, "       sm unmount VOLUME"

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 241
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v1, "       sm format VOLUME"

    #@4d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 242
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v1, "       sm benchmark VOLUME"

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 243
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    const-string/jumbo v1, ""

    #@5d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 244
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    const-string/jumbo v1, "       sm forget [UUID|all]"

    #@65
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 245
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v1, ""

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 246
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@72
    const-string/jumbo v1, "       sm set-emulate-fbe [true|false]"

    #@75
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    .line 247
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7a
    const-string/jumbo v1, ""

    #@7d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 248
    const/4 v0, 0x1

    #@81
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
    .line 54
    array-length v1, p1

    #@2
    if-ge v1, v2, :cond_0

    #@4
    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v1

    #@a
    .line 58
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
    .line 59
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 60
    new-instance v1, Landroid/os/RemoteException;

    #@1d
    const-string/jumbo v2, "Failed to find running mount service"

    #@20
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 63
    :cond_1
    iput-object p1, p0, Lcom/android/commands/sm/Sm;->mArgs:[Ljava/lang/String;

    #@26
    .line 64
    const/4 v1, 0x0

    #@27
    aget-object v0, p1, v1

    #@29
    .line 65
    .local v0, "op":Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/sm/Sm;->mNextArg:I

    #@2b
    .line 67
    const-string/jumbo v1, "list-disks"

    #@2e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 68
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runListDisks()V

    #@37
    .line 53
    :goto_0
    return-void

    #@38
    .line 69
    :cond_2
    const-string/jumbo v1, "list-volumes"

    #@3b
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 70
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runListVolumes()V

    #@44
    goto :goto_0

    #@45
    .line 71
    :cond_3
    const-string/jumbo v1, "has-adoptable"

    #@48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_4

    #@4e
    .line 72
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runHasAdoptable()V

    #@51
    goto :goto_0

    #@52
    .line 73
    :cond_4
    const-string/jumbo v1, "get-primary-storage-uuid"

    #@55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_5

    #@5b
    .line 74
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runGetPrimaryStorageUuid()V

    #@5e
    goto :goto_0

    #@5f
    .line 75
    :cond_5
    const-string/jumbo v1, "set-force-adoptable"

    #@62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_6

    #@68
    .line 76
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetForceAdoptable()V

    #@6b
    goto :goto_0

    #@6c
    .line 77
    :cond_6
    const-string/jumbo v1, "set-sdcardfs"

    #@6f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_7

    #@75
    .line 78
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetSdcardfs()V

    #@78
    goto :goto_0

    #@79
    .line 79
    :cond_7
    const-string/jumbo v1, "partition"

    #@7c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_8

    #@82
    .line 80
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runPartition()V

    #@85
    goto :goto_0

    #@86
    .line 81
    :cond_8
    const-string/jumbo v1, "mount"

    #@89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_9

    #@8f
    .line 82
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runMount()V

    #@92
    goto :goto_0

    #@93
    .line 83
    :cond_9
    const-string/jumbo v1, "unmount"

    #@96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_a

    #@9c
    .line 84
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runUnmount()V

    #@9f
    goto :goto_0

    #@a0
    .line 85
    :cond_a
    const-string/jumbo v1, "format"

    #@a3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v1

    #@a7
    if-eqz v1, :cond_b

    #@a9
    .line 86
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runFormat()V

    #@ac
    goto :goto_0

    #@ad
    .line 87
    :cond_b
    const-string/jumbo v1, "benchmark"

    #@b0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v1

    #@b4
    if-eqz v1, :cond_c

    #@b6
    .line 88
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runBenchmark()V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 89
    :cond_c
    const-string/jumbo v1, "forget"

    #@be
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v1

    #@c2
    if-eqz v1, :cond_d

    #@c4
    .line 90
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runForget()V

    #@c7
    goto/16 :goto_0

    #@c9
    .line 91
    :cond_d
    const-string/jumbo v1, "set-emulate-fbe"

    #@cc
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result v1

    #@d0
    if-eqz v1, :cond_e

    #@d2
    .line 92
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runSetEmulateFbe()V

    #@d5
    goto/16 :goto_0

    #@d7
    .line 93
    :cond_e
    const-string/jumbo v1, "get-fbe-mode"

    #@da
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v1

    #@de
    if-eqz v1, :cond_f

    #@e0
    .line 94
    invoke-virtual {p0}, Lcom/android/commands/sm/Sm;->runGetFbeMode()V

    #@e3
    goto/16 :goto_0

    #@e5
    .line 96
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e7
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@ea
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
    .line 209
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 210
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@6
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->benchmark(Ljava/lang/String;)J

    #@9
    .line 208
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
    .line 214
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 215
    .local v0, "fsUuid":Ljava/lang/String;
    const-string/jumbo v1, "all"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 216
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@f
    invoke-interface {v1}, Landroid/os/storage/IMountService;->forgetAllVolumes()V

    #@12
    .line 213
    :goto_0
    return-void

    #@13
    .line 218
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
    .line 204
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 205
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@6
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->format(Ljava/lang/String;)V

    #@9
    .line 203
    return-void
.end method

.method public runGetFbeMode()V
    .locals 2

    #@0
    .prologue
    .line 169
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v1, "native"

    #@b
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 168
    :goto_0
    return-void

    #@f
    .line 171
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 172
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    const-string/jumbo v1, "emulated"

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    goto :goto_0

    #@1e
    .line 174
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v1, "none"

    #@23
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    goto :goto_0
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
    .line 137
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
    .line 136
    return-void
.end method

.method public runHasAdoptable()V
    .locals 3

    #@0
    .prologue
    .line 133
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
    .line 132
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
    .line 101
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
    .line 102
    .local v2, "onlyAdoptable":Z
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@d
    invoke-interface {v3}, Landroid/os/storage/IMountService;->getDisks()[Landroid/os/storage/DiskInfo;

    #@10
    move-result-object v1

    #@11
    .line 103
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
    .line 104
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v2, :cond_0

    #@19
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    .line 105
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 103
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 100
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
    .line 111
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 113
    .local v1, "filter":Ljava/lang/String;
    const-string/jumbo v6, "public"

    #@8
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_2

    #@e
    .line 114
    const/4 v2, 0x0

    #@f
    .line 123
    .local v2, "filterType":I
    :goto_0
    iget-object v6, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@11
    invoke-interface {v6, v5}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    #@14
    move-result-object v4

    #@15
    .line 124
    .local v4, "vols":[Landroid/os/storage/VolumeInfo;
    array-length v6, v4

    #@16
    :goto_1
    if-ge v5, v6, :cond_5

    #@18
    aget-object v3, v4, v5

    #@1a
    .line 125
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
    .line 126
    :cond_0
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    #@26
    move-result v7

    #@27
    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 127
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
    .line 124
    .end local v0    # "envState":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 115
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
    .line 116
    const/4 v2, 0x1

    #@68
    .restart local v2    # "filterType":I
    goto :goto_0

    #@69
    .line 117
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
    .line 118
    const/4 v2, 0x2

    #@73
    .restart local v2    # "filterType":I
    goto :goto_0

    #@74
    .line 120
    .end local v2    # "filterType":I
    :cond_4
    const/4 v2, -0x1

    #@75
    .restart local v2    # "filterType":I
    goto :goto_0

    #@76
    .line 110
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
    .line 194
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@6
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->mount(Ljava/lang/String;)V

    #@9
    .line 193
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
    .line 179
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "diskId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 181
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "public"

    #@b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 182
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@13
    invoke-interface {v3, v0}, Landroid/os/storage/IMountService;->partitionPublic(Ljava/lang/String;)V

    #@16
    .line 178
    :goto_0
    return-void

    #@17
    .line 183
    :cond_0
    const-string/jumbo v3, "private"

    #@1a
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 184
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@22
    invoke-interface {v3, v0}, Landroid/os/storage/IMountService;->partitionPrivate(Ljava/lang/String;)V

    #@25
    goto :goto_0

    #@26
    .line 185
    :cond_1
    const-string/jumbo v3, "mixed"

    #@29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 186
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@36
    move-result v1

    #@37
    .line 187
    .local v1, "ratio":I
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@39
    invoke-interface {v3, v0, v1}, Landroid/os/storage/IMountService;->partitionMixed(Ljava/lang/String;I)V

    #@3c
    goto :goto_0

    #@3d
    .line 189
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

.method public runSetEmulateFbe()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 163
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    .line 164
    .local v0, "emulateFbe":Z
    iget-object v3, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@b
    if-eqz v0, :cond_0

    #@d
    move v1, v2

    #@e
    :goto_0
    invoke-interface {v3, v1, v2}, Landroid/os/storage/IMountService;->setDebugFlags(II)V

    #@11
    .line 162
    return-void

    #@12
    .line 164
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
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
    .line 141
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    .line 142
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
    .line 140
    return-void

    #@12
    .line 142
    :cond_0
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public runSetSdcardfs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0xc

    #@2
    .line 147
    const/16 v0, 0xc

    #@4
    .line 149
    .local v0, "mask":I
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v2, "on"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 151
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-interface {v1, v2, v3}, Landroid/os/storage/IMountService;->setDebugFlags(II)V

    #@17
    .line 146
    :cond_0
    :goto_0
    return-void

    #@18
    .line 149
    :cond_1
    const-string/jumbo v2, "off"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 154
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@23
    const/16 v2, 0x8

    #@25
    invoke-interface {v1, v2, v3}, Landroid/os/storage/IMountService;->setDebugFlags(II)V

    #@28
    goto :goto_0

    #@29
    .line 149
    :cond_2
    const-string/jumbo v2, "default"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    .line 157
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@34
    const/4 v2, 0x0

    #@35
    invoke-interface {v1, v2, v3}, Landroid/os/storage/IMountService;->setDebugFlags(II)V

    #@38
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
    .line 199
    invoke-direct {p0}, Lcom/android/commands/sm/Sm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 200
    .local v0, "volId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/commands/sm/Sm;->mSm:Landroid/os/storage/IMountService;

    #@6
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->unmount(Ljava/lang/String;)V

    #@9
    .line 198
    return-void
.end method
