.class public final Lcom/android/commands/bu/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# static fields
.field static final TAG:Ljava/lang/String; = "bu"

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mNextArg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private doFullBackup(I)V
    .locals 17
    .param p1, "socketFd"    # I

    #@0
    .prologue
    .line 65
    new-instance v15, Ljava/util/ArrayList;

    #@2
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 66
    .local v15, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@6
    .line 67
    .local v3, "saveApks":Z
    const/4 v4, 0x0

    #@7
    .line 68
    .local v4, "saveObbs":Z
    const/4 v5, 0x0

    #@8
    .line 69
    .local v5, "saveShared":Z
    const/4 v7, 0x0

    #@9
    .line 70
    .local v7, "doEverything":Z
    const/4 v6, 0x0

    #@a
    .line 71
    .local v6, "doWidgets":Z
    const/4 v8, 0x1

    #@b
    .line 72
    .local v8, "allIncludesSystem":Z
    const/4 v9, 0x1

    #@c
    .line 75
    .local v9, "doCompress":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    #@f
    move-result-object v11

    #@10
    .local v11, "arg":Ljava/lang/String;
    if-eqz v11, :cond_e

    #@12
    .line 76
    const-string/jumbo v1, "-"

    #@15
    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_d

    #@1b
    .line 77
    const-string/jumbo v1, "-apk"

    #@1e
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 78
    const/4 v3, 0x1

    #@25
    goto :goto_0

    #@26
    .line 79
    :cond_0
    const-string/jumbo v1, "-noapk"

    #@29
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 80
    const/4 v3, 0x0

    #@30
    goto :goto_0

    #@31
    .line 81
    :cond_1
    const-string/jumbo v1, "-obb"

    #@34
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 82
    const/4 v4, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 83
    :cond_2
    const-string/jumbo v1, "-noobb"

    #@3f
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    if-eqz v1, :cond_3

    #@45
    .line 84
    const/4 v4, 0x0

    #@46
    goto :goto_0

    #@47
    .line 85
    :cond_3
    const-string/jumbo v1, "-shared"

    #@4a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_4

    #@50
    .line 86
    const/4 v5, 0x1

    #@51
    goto :goto_0

    #@52
    .line 87
    :cond_4
    const-string/jumbo v1, "-noshared"

    #@55
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_5

    #@5b
    .line 88
    const/4 v5, 0x0

    #@5c
    goto :goto_0

    #@5d
    .line 89
    :cond_5
    const-string/jumbo v1, "-system"

    #@60
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_6

    #@66
    .line 90
    const/4 v8, 0x1

    #@67
    goto :goto_0

    #@68
    .line 91
    :cond_6
    const-string/jumbo v1, "-nosystem"

    #@6b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v1

    #@6f
    if-eqz v1, :cond_7

    #@71
    .line 92
    const/4 v8, 0x0

    #@72
    goto :goto_0

    #@73
    .line 93
    :cond_7
    const-string/jumbo v1, "-widgets"

    #@76
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_8

    #@7c
    .line 94
    const/4 v6, 0x1

    #@7d
    goto :goto_0

    #@7e
    .line 95
    :cond_8
    const-string/jumbo v1, "-nowidgets"

    #@81
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v1

    #@85
    if-eqz v1, :cond_9

    #@87
    .line 96
    const/4 v6, 0x0

    #@88
    goto :goto_0

    #@89
    .line 97
    :cond_9
    const-string/jumbo v1, "-all"

    #@8c
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v1

    #@90
    if-eqz v1, :cond_a

    #@92
    .line 98
    const/4 v7, 0x1

    #@93
    goto/16 :goto_0

    #@95
    .line 99
    :cond_a
    const-string/jumbo v1, "-compress"

    #@98
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    if-eqz v1, :cond_b

    #@9e
    .line 100
    const/4 v9, 0x1

    #@9f
    goto/16 :goto_0

    #@a1
    .line 101
    :cond_b
    const-string/jumbo v1, "-nocompress"

    #@a4
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_c

    #@aa
    .line 102
    const/4 v9, 0x0

    #@ab
    goto/16 :goto_0

    #@ad
    .line 104
    :cond_c
    const-string/jumbo v1, "bu"

    #@b0
    new-instance v10, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v16, "Unknown backup flag "

    #@b8
    move-object/from16 v0, v16

    #@ba
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v10

    #@be
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v10

    #@c2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v10

    #@c6
    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    goto/16 :goto_0

    #@cb
    .line 109
    :cond_d
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ce
    goto/16 :goto_0

    #@d0
    .line 113
    :cond_e
    if-eqz v7, :cond_f

    #@d2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@d5
    move-result v1

    #@d6
    if-lez v1, :cond_f

    #@d8
    .line 114
    const-string/jumbo v1, "bu"

    #@db
    const-string/jumbo v10, "-all passed for backup along with specific package names"

    #@de
    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 117
    :cond_f
    if-nez v7, :cond_10

    #@e3
    if-eqz v5, :cond_12

    #@e5
    .line 122
    :cond_10
    const/4 v2, 0x0

    #@e6
    .line 124
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    #@e9
    move-result-object v2

    #@ea
    .line 125
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@ed
    move-result v1

    #@ee
    new-array v14, v1, [Ljava/lang/String;

    #@f0
    .line 126
    .local v14, "packArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@f2
    iget-object v1, v0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    #@f4
    .line 127
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f7
    move-result-object v10

    #@f8
    check-cast v10, [Ljava/lang/String;

    #@fa
    .line 126
    invoke-interface/range {v1 .. v10}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@fd
    .line 131
    if-eqz v2, :cond_11

    #@ff
    .line 133
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@102
    .line 64
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "packArray":[Ljava/lang/String;
    :cond_11
    :goto_1
    return-void

    #@103
    .line 117
    :cond_12
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@106
    move-result v1

    #@107
    if-nez v1, :cond_10

    #@109
    .line 118
    const-string/jumbo v1, "bu"

    #@10c
    const-string/jumbo v10, "no backup packages supplied and neither -shared nor -all given"

    #@10f
    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@112
    .line 119
    return-void

    #@113
    .line 134
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "packArray":[Ljava/lang/String;
    :catch_0
    move-exception v13

    #@114
    .local v13, "e":Ljava/io/IOException;
    goto :goto_1

    #@115
    .line 128
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "packArray":[Ljava/lang/String;
    :catch_1
    move-exception v12

    #@116
    .line 129
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "bu"

    #@119
    const-string/jumbo v10, "Unable to invoke backup manager for backup"

    #@11c
    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11f
    .line 131
    if-eqz v2, :cond_11

    #@121
    .line 133
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@124
    goto :goto_1

    #@125
    .line 134
    :catch_2
    move-exception v13

    #@126
    .restart local v13    # "e":Ljava/io/IOException;
    goto :goto_1

    #@127
    .line 130
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@128
    .line 131
    if-eqz v2, :cond_13

    #@12a
    .line 133
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@12d
    .line 130
    :cond_13
    :goto_2
    throw v1

    #@12e
    .line 134
    :catch_3
    move-exception v13

    #@12f
    .restart local v13    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private doFullRestore(I)V
    .locals 5
    .param p1, "socketFd"    # I

    #@0
    .prologue
    .line 141
    const/4 v2, 0x0

    #@1
    .line 143
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    #@4
    move-result-object v2

    #@5
    .line 144
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    #@7
    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 148
    if-eqz v2, :cond_0

    #@c
    .line 150
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@f
    .line 139
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-void

    #@10
    .line 151
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    #@11
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@12
    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    #@13
    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "bu"

    #@16
    const-string/jumbo v4, "Unable to invoke backup manager for restore"

    #@19
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1c
    .line 148
    if-eqz v2, :cond_0

    #@1e
    .line 150
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@21
    goto :goto_0

    #@22
    .line 151
    :catch_2
    move-exception v1

    #@23
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    #@24
    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@25
    .line 148
    if-eqz v2, :cond_1

    #@27
    .line 150
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@2a
    .line 147
    :cond_1
    :goto_1
    throw v3

    #@2b
    .line 151
    :catch_3
    move-exception v1

    #@2c
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 37
    const-string/jumbo v1, "bu"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "Beginning: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    const/4 v3, 0x0

    #@10
    aget-object v3, p0, v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 38
    sput-object p0, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    #@1f
    .line 40
    :try_start_0
    new-instance v1, Lcom/android/commands/bu/Backup;

    #@21
    invoke-direct {v1}, Lcom/android/commands/bu/Backup;-><init>()V

    #@24
    invoke-virtual {v1}, Lcom/android/commands/bu/Backup;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 44
    :goto_0
    const-string/jumbo v1, "bu"

    #@2a
    const-string/jumbo v2, "Finished."

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 36
    return-void

    #@31
    .line 41
    :catch_0
    move-exception v0

    #@32
    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "bu"

    #@35
    const-string/jumbo v2, "Error running backup/restore"

    #@38
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 157
    iget v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    #@2
    sget-object v2, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 158
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 160
    :cond_0
    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 161
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    #@15
    .line 162
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 48
    const-string/jumbo v1, "backup"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    #@d
    .line 49
    iget-object v1, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 50
    const-string/jumbo v1, "bu"

    #@14
    const-string/jumbo v2, "Can\'t obtain Backup Manager binder"

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 51
    return-void

    #@1b
    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 55
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v1, "backup"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 56
    sget v1, Landroid/system/OsConstants;->STDOUT_FILENO:I

    #@2a
    invoke-direct {p0, v1}, Lcom/android/commands/bu/Backup;->doFullBackup(I)V

    #@2d
    .line 47
    :goto_0
    return-void

    #@2e
    .line 57
    :cond_1
    const-string/jumbo v1, "restore"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_2

    #@37
    .line 58
    sget v1, Landroid/system/OsConstants;->STDIN_FILENO:I

    #@39
    invoke-direct {p0, v1}, Lcom/android/commands/bu/Backup;->doFullRestore(I)V

    #@3c
    goto :goto_0

    #@3d
    .line 60
    :cond_2
    const-string/jumbo v1, "bu"

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "Invalid operation \'"

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    const-string/jumbo v3, "\'"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    goto :goto_0
.end method
