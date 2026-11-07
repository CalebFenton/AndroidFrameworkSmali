.class Landroid/app/backup/BackupAgent$BackupServiceBinder;
.super Landroid/app/IBackupAgent$Stub;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupServiceBinder"
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic blacklist this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor blacklist <init>(Landroid/app/backup/BackupAgent;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1090
    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    return-void
.end method

.method private static blacklist clearUnconsumedDataFromPipe(Landroid/os/ParcelFileDescriptor;J)V
    .registers 6
    .param p0, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "size"    # J

    .line 1310
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_20

    .line 1311
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_12

    .line 1312
    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 1314
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_20

    .line 1316
    .end local v0    # "in":Ljava/io/FileInputStream;
    goto :goto_28

    .line 1310
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_16
    move-exception v1

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "size":J
    :goto_1f
    throw v1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_20

    .line 1314
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "size":J
    :catch_20
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupServiceBinder"

    const-string v2, "Failed to clear unconsumed data from pipe."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1317
    .end local v0    # "e":Ljava/io/IOException;
    :goto_28
    return-void
.end method

.method private blacklist doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 26
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    .local p7, "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const-string v5, ") threw"

    const-string/jumbo v6, "onRestore ("

    const-string v7, "BackupServiceBinder"

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1165
    new-instance v0, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 1168
    .local v10, "input":Landroid/app/backup/BackupDataInput;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1170
    .local v15, "ident":J
    const-wide/16 v8, 0x0

    move-wide v11, v8

    :try_start_25
    iget-object v9, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_27} :catch_a1
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_27} :catch_77
    .catchall {:try_start_25 .. :try_end_27} :catchall_73

    .line 1171
    if-eqz v4, :cond_35

    :try_start_29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_a1
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2e} :catch_77
    .catchall {:try_start_29 .. :try_end_2e} :catchall_30

    move-object v14, v0

    goto :goto_3a

    .line 1181
    :catchall_30
    move-exception v0

    move-object v5, v0

    move-wide v7, v11

    goto/16 :goto_ce

    .line 1172
    :cond_35
    :try_start_35
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_6c
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_39} :catch_77
    .catchall {:try_start_35 .. :try_end_39} :catchall_73

    move-object v14, v0

    .line 1170
    :goto_3a
    move-object/from16 v13, p4

    move-object/from16 v17, v7

    move-wide v7, v11

    move-wide/from16 v11, p2

    :try_start_41
    invoke-virtual/range {v9 .. v14}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;Ljava/util/Set;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_6a
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_44} :catch_68
    .catchall {:try_start_41 .. :try_end_44} :catchall_cc

    .line 1181
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1183
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1185
    :try_start_4c
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v7, v8}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_55} :catch_56

    .line 1188
    goto :goto_57

    .line 1186
    :catch_56
    move-exception v0

    .line 1190
    :goto_57
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_67

    .line 1191
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1192
    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1195
    :cond_67
    return-void

    .line 1176
    :catch_68
    move-exception v0

    goto :goto_7b

    .line 1173
    :catch_6a
    move-exception v0

    goto :goto_70

    :catch_6c
    move-exception v0

    move-object/from16 v17, v7

    move-wide v7, v11

    :goto_70
    move-object/from16 v9, v17

    goto :goto_a4

    .line 1181
    :catchall_73
    move-exception v0

    move-wide v7, v11

    :goto_75
    move-object v5, v0

    goto :goto_ce

    .line 1176
    :catch_77
    move-exception v0

    move-object/from16 v17, v7

    move-wide v7, v11

    .line 1177
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_7b
    :try_start_7b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, v17

    invoke-static {v9, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    nop

    .end local v10    # "input":Landroid/app/backup/BackupDataInput;
    .end local v15    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "appVersionCode":J
    .end local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p5    # "token":I
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p7    # "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0

    .line 1173
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v10    # "input":Landroid/app/backup/BackupDataInput;
    .restart local v15    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "appVersionCode":J
    .restart local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p5    # "token":I
    .restart local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p7    # "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_a1
    move-exception v0

    move-object v9, v7

    move-wide v7, v11

    .line 1174
    .local v0, "ex":Ljava/io/IOException;
    :goto_a4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v10    # "input":Landroid/app/backup/BackupDataInput;
    .end local v15    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "appVersionCode":J
    .end local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p5    # "token":I
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p7    # "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v5
    :try_end_cc
    .catchall {:try_start_7b .. :try_end_cc} :catchall_cc

    .line 1181
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v10    # "input":Landroid/app/backup/BackupDataInput;
    .restart local v15    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "appVersionCode":J
    .restart local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p5    # "token":I
    .restart local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p7    # "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_cc
    move-exception v0

    goto :goto_75

    :goto_ce
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1183
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1185
    :try_start_d6
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v7, v8}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_df} :catch_e0

    .line 1188
    goto :goto_e1

    .line 1186
    :catch_e0
    move-exception v0

    .line 1190
    :goto_e1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_f1

    .line 1191
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1192
    invoke-static/range {p4 .. p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1194
    :cond_f1
    throw v5
.end method


# virtual methods
.method public blacklist clearBackupRestoreEventLogger()V
    .registers 7

    .line 1391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1393
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v2}, Landroid/app/backup/BackupAgent;->clearBackupRestoreEventLogger()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1399
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    nop

    .line 1401
    return-void

    .line 1399
    :catchall_e
    move-exception v2

    goto :goto_3b

    .line 1394
    :catch_10
    move-exception v2

    .line 1395
    .local v2, "e":Ljava/lang/Exception;
    :try_start_11
    const-string v3, "BackupServiceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearBackupRestoreEventLogger ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") threw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1397
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    throw v2
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_e

    .line 1399
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    throw v2
.end method

.method public blacklist doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V
    .registers 25
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "quotaBytes"    # J
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupCallback;
    .param p7, "transportFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    const-string v3, ") threw"

    const-string/jumbo v4, "onBackup ("

    const-string v5, "BackupServiceBinder"

    new-instance v0, Landroid/app/backup/BackupDataOutput;

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-wide/from16 v7, p4

    move/from16 v9, p7

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;JI)V

    move-object v6, v0

    .line 1106
    .local v6, "output":Landroid/app/backup/BackupDataOutput;
    const-wide/16 v10, -0x1

    .line 1109
    .local v10, "result":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1111
    .local v12, "ident":J
    :try_start_1f
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_21} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_21} :catch_5c
    .catchall {:try_start_1f .. :try_end_21} :catchall_53

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :try_start_25
    invoke-virtual {v0, v14, v6, v15}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_4d
    .catchall {:try_start_25 .. :try_end_28} :catchall_4b

    .line 1112
    const-wide/16 v3, 0x0

    .line 1123
    .end local v10    # "result":J
    .local v3, "result":J
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1125
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1127
    :try_start_32
    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    .line 1130
    goto :goto_37

    .line 1128
    :catch_36
    move-exception v0

    .line 1133
    :goto_37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_4a

    .line 1134
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1135
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1136
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1139
    :cond_4a
    return-void

    .line 1123
    .end local v3    # "result":J
    .restart local v10    # "result":J
    :catchall_4b
    move-exception v0

    goto :goto_58

    .line 1116
    :catch_4d
    move-exception v0

    goto :goto_61

    .line 1113
    :catch_4f
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_8e

    .line 1123
    :catchall_53
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    :goto_58
    move-object v3, v0

    move-object/from16 v16, v6

    goto :goto_b8

    .line 1116
    :catch_5c
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    .line 1117
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_61
    move-object/from16 v16, v6

    .end local v6    # "output":Landroid/app/backup/BackupDataOutput;
    .local v16, "output":Landroid/app/backup/BackupDataOutput;
    :try_start_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    nop

    .end local v10    # "result":J
    .end local v12    # "ident":J
    .end local v16    # "output":Landroid/app/backup/BackupDataOutput;
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "quotaBytes":J
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    .end local p7    # "transportFlags":I
    throw v0

    .line 1113
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v6    # "output":Landroid/app/backup/BackupDataOutput;
    .restart local v10    # "result":J
    .restart local v12    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p4    # "quotaBytes":J
    .restart local p6    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    .restart local p7    # "transportFlags":I
    :catch_87
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, v6

    .line 1114
    .end local v6    # "output":Landroid/app/backup/BackupDataOutput;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v16    # "output":Landroid/app/backup/BackupDataOutput;
    :goto_8e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1115
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v10    # "result":J
    .end local v12    # "ident":J
    .end local v16    # "output":Landroid/app/backup/BackupDataOutput;
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "quotaBytes":J
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    .end local p7    # "transportFlags":I
    throw v3
    :try_end_b6
    .catchall {:try_start_63 .. :try_end_b6} :catchall_b6

    .line 1123
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v10    # "result":J
    .restart local v12    # "ident":J
    .restart local v16    # "output":Landroid/app/backup/BackupDataOutput;
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p4    # "quotaBytes":J
    .restart local p6    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    .restart local p7    # "transportFlags":I
    :catchall_b6
    move-exception v0

    move-object v3, v0

    :goto_b8
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1125
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1127
    :try_start_c0
    invoke-interface {v2, v10, v11}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c3} :catch_c4

    .line 1130
    goto :goto_c5

    .line 1128
    :catch_c4
    move-exception v0

    .line 1133
    :goto_c5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_d8

    .line 1134
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1135
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1136
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1138
    :cond_d8
    throw v3
.end method

.method public greylist-max-o doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    .registers 23
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "quotaBytes"    # J
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .param p6, "transportFlags"    # I

    .line 1204
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    const-string v4, ") threw"

    const-string v5, "Unable to finalize backup stream!"

    const-string/jumbo v6, "onFullBackup ("

    const-string v7, "BackupServiceBinder"

    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1209
    .local v8, "ident":J
    const/4 v12, 0x4

    :try_start_19
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    new-instance v13, Landroid/app/backup/FullBackupDataOutput;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_99
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1d} :catch_6e
    .catchall {:try_start_19 .. :try_end_1d} :catchall_65

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :try_start_23
    invoke-direct {v13, v14, v10, v11, v15}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;JI)V

    invoke-virtual {v0, v13}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_29} :catch_61
    .catchall {:try_start_23 .. :try_end_29} :catchall_5f

    .line 1219
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1224
    :try_start_2e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1225
    .local v0, "out":Ljava/io/FileOutputStream;
    new-array v4, v12, [B

    .line 1226
    .local v4, "buf":[B
    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_3d

    .line 1229
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "buf":[B
    goto :goto_41

    .line 1227
    :catch_3d
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .end local v0    # "e":Ljava/io/IOException;
    :goto_41
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    :try_start_44
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v5}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4f} :catch_50

    .line 1236
    goto :goto_51

    .line 1234
    :catch_50
    move-exception v0

    .line 1238
    :goto_51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v0, v4, :cond_5e

    .line 1239
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1242
    :cond_5e
    return-void

    .line 1219
    :catchall_5f
    move-exception v0

    goto :goto_6c

    .line 1214
    :catch_61
    move-exception v0

    goto :goto_75

    .line 1211
    :catch_63
    move-exception v0

    goto :goto_a0

    .line 1219
    :catchall_65
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    :goto_6c
    move-object v4, v0

    goto :goto_c8

    .line 1214
    :catch_6e
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    .line 1215
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_75
    :try_start_75
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    nop

    .end local v8    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "quotaBytes":J
    .end local p4    # "token":I
    .end local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p6    # "transportFlags":I
    throw v0

    .line 1211
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v8    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "quotaBytes":J
    .restart local p4    # "token":I
    .restart local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p6    # "transportFlags":I
    :catch_99
    move-exception v0

    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move/from16 v15, p6

    .line 1212
    .local v0, "ex":Ljava/io/IOException;
    :goto_a0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v13, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v8    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "quotaBytes":J
    .end local p4    # "token":I
    .end local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p6    # "transportFlags":I
    throw v4
    :try_end_c8
    .catchall {:try_start_75 .. :try_end_c8} :catchall_5f

    .line 1219
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v8    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "quotaBytes":J
    .restart local p4    # "token":I
    .restart local p5    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p6    # "transportFlags":I
    :goto_c8
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1224
    :try_start_cd
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1225
    .local v0, "out":Ljava/io/FileOutputStream;
    new-array v6, v12, [B

    .line 1226
    .local v6, "buf":[B
    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_db} :catch_dc

    .line 1229
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "buf":[B
    goto :goto_e0

    .line 1227
    :catch_dc
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    :try_start_e3
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    const-wide/16 v5, 0x0

    invoke-interface {v3, v0, v2, v5, v6}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_ee} :catch_ef

    .line 1236
    goto :goto_f0

    .line 1234
    :catch_ef
    move-exception v0

    .line 1238
    :goto_f0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v0, v5, :cond_fd

    .line 1239
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1241
    :cond_fd
    throw v4
.end method

.method public greylist-max-o doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V
    .registers 14
    .param p1, "quotaBytes"    # J
    .param p3, "token"    # I
    .param p4, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .param p5, "transportFlags"    # I

    .line 1246
    const-string v0, ") threw"

    const-string/jumbo v1, "onFullBackup[M] ("

    const-string v2, "BackupServiceBinder"

    new-instance v3, Landroid/app/backup/FullBackupDataOutput;

    invoke-direct {v3, p1, p2, p5}, Landroid/app/backup/FullBackupDataOutput;-><init>(JI)V

    .line 1249
    .local v3, "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1254
    .local v4, "ident":J
    :try_start_15
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6, v3}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1a} :catch_30
    .catchall {:try_start_15 .. :try_end_1a} :catchall_2e

    .line 1262
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1264
    :try_start_1d
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    .line 1265
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v1

    .line 1264
    invoke-interface {p4, v0, p3, v1, v2}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_2b

    .line 1268
    goto :goto_2d

    .line 1266
    :catch_2b
    move-exception v0

    .line 1269
    nop

    .line 1270
    :goto_2d
    return-void

    .line 1262
    :catchall_2e
    move-exception v0

    goto :goto_7e

    .line 1258
    :catch_30
    move-exception v6

    .line 1259
    .local v6, "ex":Ljava/lang/RuntimeException;
    :try_start_31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1260
    nop

    .end local v3    # "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    .end local v4    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "quotaBytes":J
    .end local p3    # "token":I
    .end local p4    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p5    # "transportFlags":I
    throw v6

    .line 1255
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    .restart local v4    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "quotaBytes":J
    .restart local p3    # "token":I
    .restart local p4    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p5    # "transportFlags":I
    :catch_55
    move-exception v6

    .line 1256
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1257
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    .end local v4    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "quotaBytes":J
    .end local p3    # "token":I
    .end local p4    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .end local p5    # "transportFlags":I
    throw v0
    :try_end_7e
    .catchall {:try_start_31 .. :try_end_7e} :catchall_2e

    .line 1262
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v3    # "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    .restart local v4    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "quotaBytes":J
    .restart local p3    # "token":I
    .restart local p4    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .restart local p5    # "transportFlags":I
    :goto_7e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1264
    :try_start_81
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v1}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v1

    .line 1265
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v6

    .line 1264
    invoke-interface {p4, v1, p3, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8e} :catch_8f

    .line 1268
    goto :goto_90

    .line 1266
    :catch_8f
    move-exception v1

    .line 1269
    :goto_90
    throw v0
.end method

.method public blacklist doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V
    .registers 14
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupCallback;

    .line 1350
    const-wide/16 v0, -0x1

    .line 1353
    .local v0, "result":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1355
    .local v2, "ident":J
    :try_start_6
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onQuotaExceeded(JJ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_1e
    .catchall {:try_start_6 .. :try_end_b} :catchall_1c

    .line 1356
    const-wide/16 v0, 0x0

    .line 1362
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1363
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    :try_start_15
    invoke-interface {p5, v0, v1}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    .line 1369
    goto :goto_1b

    .line 1367
    :catch_19
    move-exception v4

    .line 1370
    nop

    .line 1371
    :goto_1b
    return-void

    .line 1362
    :catchall_1c
    move-exception v4

    goto :goto_4a

    .line 1357
    :catch_1e
    move-exception v4

    .line 1358
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1f
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onQuotaExceeded("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1360
    nop

    .end local v0    # "result":J
    .end local v2    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "backupDataBytes":J
    .end local p3    # "quotaBytes":J
    .end local p5    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    throw v4
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_1c

    .line 1362
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "result":J
    .restart local v2    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "backupDataBytes":J
    .restart local p3    # "quotaBytes":J
    .restart local p5    # "callbackBinder":Landroid/app/backup/IBackupCallback;
    :goto_4a
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1363
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    :try_start_52
    invoke-interface {p5, v0, v1}, Landroid/app/backup/IBackupCallback;->operationComplete(J)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    .line 1369
    goto :goto_57

    .line 1367
    :catch_56
    move-exception v5

    .line 1370
    :goto_57
    throw v4
.end method

.method public greylist-max-o doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 15
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "appVersionCode":J
    .end local p4    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local p5    # "token":I
    .end local p6    # "callbackBinder":Landroid/app/backup/IBackupManager;
    .local v1, "data":Landroid/os/ParcelFileDescriptor;
    .local v2, "appVersionCode":J
    .local v4, "newState":Landroid/os/ParcelFileDescriptor;
    .local v5, "token":I
    .local v6, "callbackBinder":Landroid/app/backup/IBackupManager;
    invoke-direct/range {v0 .. v7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 1147
    return-void
.end method

.method public greylist-max-o doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 32
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1276
    move-object/from16 v1, p0

    move/from16 v2, p11

    move-object/from16 v3, p12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1278
    .local v4, "ident":J
    const-wide/16 v6, 0x0

    :try_start_c
    iget-object v8, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    invoke-virtual/range {v8 .. v18}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_51
    .catchall {:try_start_c .. :try_end_1f} :catchall_4e

    .line 1284
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1286
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1292
    invoke-static {}, Lcom/android/server/backup/Flags;->enableClearPipeAfterRestoreFile()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1293
    invoke-static/range {p1 .. p3}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->clearUnconsumedDataFromPipe(Landroid/os/ParcelFileDescriptor;J)V

    .line 1296
    :cond_32
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    :try_start_35
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_3f

    .line 1301
    goto :goto_40

    .line 1299
    :catch_3f
    move-exception v0

    .line 1303
    :goto_40
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_4d

    .line 1304
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1307
    :cond_4d
    return-void

    .line 1284
    :catchall_4e
    move-exception v0

    move-object v8, v0

    goto :goto_81

    .line 1279
    :catch_51
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/io/IOException;
    :try_start_52
    const-string v8, "BackupServiceBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onRestoreFile ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") threw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "size":J
    .end local p4    # "type":I
    .end local p5    # "domain":Ljava/lang/String;
    .end local p6    # "path":Ljava/lang/String;
    .end local p7    # "mode":J
    .end local p9    # "mtime":J
    .end local p11    # "token":I
    .end local p12    # "callbackBinder":Landroid/app/backup/IBackupManager;
    throw v8
    :try_end_81
    .catchall {:try_start_52 .. :try_end_81} :catchall_4e

    .line 1284
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "data":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "size":J
    .restart local p4    # "type":I
    .restart local p5    # "domain":Ljava/lang/String;
    .restart local p6    # "path":Ljava/lang/String;
    .restart local p7    # "mode":J
    .restart local p9    # "mtime":J
    .restart local p11    # "token":I
    .restart local p12    # "callbackBinder":Landroid/app/backup/IBackupManager;
    :goto_81
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1286
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    .line 1292
    invoke-static {}, Lcom/android/server/backup/Flags;->enableClearPipeAfterRestoreFile()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1293
    invoke-static/range {p1 .. p3}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->clearUnconsumedDataFromPipe(Landroid/os/ParcelFileDescriptor;J)V

    .line 1296
    :cond_94
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    :try_start_97
    iget-object v0, v1, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v0

    invoke-interface {v3, v0, v2, v6, v7}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_a0} :catch_a1

    .line 1301
    goto :goto_a2

    .line 1299
    :catch_a1
    move-exception v0

    .line 1303
    :goto_a2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v0, v6, :cond_af

    .line 1304
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1306
    :cond_af
    throw v8
.end method

.method public greylist-max-o doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .registers 11
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .line 1321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1323
    .local v0, "ident":J
    const-wide/16 v2, 0x0

    :try_start_6
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_22
    .catchall {:try_start_6 .. :try_end_b} :catchall_20

    .line 1329
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    :try_start_13
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v4

    invoke-interface {p2, v4, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_1d

    .line 1336
    goto :goto_1f

    .line 1334
    :catch_1d
    move-exception v2

    .line 1337
    nop

    .line 1338
    :goto_1f
    return-void

    .line 1329
    :catchall_20
    move-exception v4

    goto :goto_4e

    .line 1324
    :catch_22
    move-exception v4

    .line 1325
    .local v4, "e":Ljava/lang/Exception;
    :try_start_23
    const-string v5, "BackupServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onRestoreFinished ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") threw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .end local p1    # "token":I
    .end local p2    # "callbackBinder":Landroid/app/backup/IBackupManager;
    throw v4
    :try_end_4e
    .catchall {:try_start_23 .. :try_end_4e} :catchall_20

    .line 1329
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Landroid/app/backup/BackupAgent$BackupServiceBinder;
    .restart local p1    # "token":I
    .restart local p2    # "callbackBinder":Landroid/app/backup/IBackupManager;
    :goto_4e
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mwaitForSharedPrefs(Landroid/app/backup/BackupAgent;)V

    .line 1331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    :try_start_56
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-$$Nest$mgetBackupUserId(Landroid/app/backup/BackupAgent;)I

    move-result v5

    invoke-interface {p2, v5, p1, v2, v3}, Landroid/app/backup/IBackupManager;->opCompleteForUser(IIJ)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5f} :catch_60

    .line 1336
    goto :goto_61

    .line 1334
    :catch_60
    move-exception v2

    .line 1337
    :goto_61
    throw v4
.end method

.method public blacklist doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    .registers 8
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # J
    .param p4, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "J",
            "Landroid/os/ParcelFileDescriptor;",
            "I",
            "Landroid/app/backup/IBackupManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    .local p7, "excludedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Landroid/app/backup/BackupAgent$BackupServiceBinder;->doRestoreInternal(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 1154
    return-void
.end method

.method public greylist-max-o fail(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 1342
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/backup/BackupAgent$FailRunnable;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupAgent$FailRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1343
    return-void
.end method

.method public blacklist getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1376
    .local p1, "in":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;>;>;"
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1377
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger;->getLoggingResults()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1379
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 1381
    :goto_1d
    return-void
.end method

.method public blacklist getOperationType(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1386
    .local p1, "in":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    goto :goto_14

    :cond_a
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v0}, Landroid/app/backup/BackupAgent;->-$$Nest$fgetmLogger(Landroid/app/backup/BackupAgent;)Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/backup/BackupRestoreEventLogger;->getOperationType()I

    move-result v0

    :goto_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 1387
    return-void
.end method
