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
.field private static final TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor <init>(Landroid/app/backup/BackupAgent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/backup/BackupAgent;

    #@0
    .prologue
    .line 892
    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@2
    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$BackupServiceBinder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/backup/BackupAgent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    #@3
    return-void
.end method


# virtual methods
.method public doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 10
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 901
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 904
    .local v4, "ident":J
    new-instance v3, Landroid/app/backup/BackupDataOutput;

    #@6
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9
    move-result-object v6

    #@a
    invoke-direct {v3, v6}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    #@d
    .line 907
    .local v3, "output":Landroid/app/backup/BackupDataOutput;
    :try_start_0
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@f
    invoke-virtual {v6, p1, v3, p3}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 918
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@14
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@17
    .line 920
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 922
    const-wide/16 v6, 0x0

    #@1c
    :try_start_1
    invoke-interface {p5, p4, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1f
    .line 928
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v6

    #@23
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@26
    move-result v7

    #@27
    if-eq v6, v7, :cond_0

    #@29
    .line 929
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2c
    .line 930
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2f
    .line 931
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@32
    .line 899
    :cond_0
    return-void

    #@33
    .line 923
    :catch_0
    move-exception v0

    #@34
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@35
    .line 911
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@36
    .line 912
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v6, "BackupServiceBinder"

    #@39
    new-instance v7, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v8, "onBackup ("

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@47
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    const-string/jumbo v8, ") threw"

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@61
    .line 913
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .line 914
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    #@63
    .line 918
    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@65
    invoke-static {v7}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@68
    .line 920
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6b
    .line 922
    const-wide/16 v8, 0x0

    #@6d
    :try_start_3
    invoke-interface {p5, p4, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@70
    .line 928
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@73
    move-result v7

    #@74
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@77
    move-result v8

    #@78
    if-eq v7, v8, :cond_1

    #@7a
    .line 929
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@7d
    .line 930
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@80
    .line 931
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@83
    .line 914
    :cond_1
    throw v6

    #@84
    .line 908
    :catch_2
    move-exception v1

    #@85
    .line 909
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "BackupServiceBinder"

    #@88
    new-instance v7, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v8, "onBackup ("

    #@90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v7

    #@94
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@96
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9d
    move-result-object v8

    #@9e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v7

    #@a2
    const-string/jumbo v8, ") threw"

    #@a5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v7

    #@ad
    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b0
    .line 910
    new-instance v6, Ljava/lang/RuntimeException;

    #@b2
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@b5
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b6
    .line 923
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    #@b7
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 12
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "token"    # I
    .param p3, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    #@0
    .prologue
    .line 975
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v6

    #@4
    .line 981
    .local v6, "ident":J
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@6
    invoke-static {v8}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@9
    .line 984
    :try_start_0
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@b
    new-instance v9, Landroid/app/backup/FullBackupDataOutput;

    #@d
    invoke-direct {v9, p1}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@10
    invoke-virtual {v8, v9}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 993
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@15
    invoke-static {v8}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@18
    .line 998
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    #@1a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v8

    #@1e
    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@21
    .line 999
    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v8, 0x4

    #@22
    new-array v0, v8, [B

    #@24
    .line 1000
    .local v0, "buf":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    .line 1005
    .end local v0    # "buf":[B
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 1007
    const-wide/16 v8, 0x0

    #@2c
    :try_start_2
    invoke-interface {p3, p2, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@2f
    .line 1012
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@32
    move-result v8

    #@33
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@36
    move-result v9

    #@37
    if-eq v8, v9, :cond_0

    #@39
    .line 1013
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3c
    .line 973
    :cond_0
    return-void

    #@3d
    .line 1001
    :catch_0
    move-exception v2

    #@3e
    .line 1002
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "BackupServiceBinder"

    #@41
    const-string/jumbo v9, "Unable to finalize backup stream!"

    #@44
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_0

    #@48
    .line 1008
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@49
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@4a
    .line 988
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    #@4b
    .line 989
    .local v4, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    const-string/jumbo v8, "BackupServiceBinder"

    #@4e
    new-instance v9, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v10, "onFullBackup ("

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@5c
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    const-string/jumbo v10, ") threw"

    #@6b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v9

    #@73
    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@76
    .line 990
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@77
    .line 991
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    #@78
    .line 993
    iget-object v9, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@7a
    invoke-static {v9}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@7d
    .line 998
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    #@7f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@82
    move-result-object v9

    #@83
    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@86
    .line 999
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    const/4 v9, 0x4

    #@87
    new-array v0, v9, [B

    #@89
    .line 1000
    .restart local v0    # "buf":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@8c
    .line 1005
    .end local v0    # "buf":[B
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8f
    .line 1007
    const-wide/16 v10, 0x0

    #@91
    :try_start_5
    invoke-interface {p3, p2, v10, v11}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    #@94
    .line 1012
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@97
    move-result v9

    #@98
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@9b
    move-result v10

    #@9c
    if-eq v9, v10, :cond_1

    #@9e
    .line 1013
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a1
    .line 991
    :cond_1
    throw v8

    #@a2
    .line 985
    :catch_3
    move-exception v3

    #@a3
    .line 986
    .local v3, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v8, "BackupServiceBinder"

    #@a6
    new-instance v9, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v10, "onFullBackup ("

    #@ae
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v9

    #@b2
    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@b4
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b7
    move-result-object v10

    #@b8
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@bb
    move-result-object v10

    #@bc
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    const-string/jumbo v10, ") threw"

    #@c3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v9

    #@cb
    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ce
    .line 987
    new-instance v8, Ljava/lang/RuntimeException;

    #@d0
    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@d3
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@d4
    .line 1001
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v2

    #@d5
    .line 1002
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "BackupServiceBinder"

    #@d8
    const-string/jumbo v10, "Unable to finalize backup stream!"

    #@db
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    goto :goto_2

    #@df
    .line 1008
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    #@e0
    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    #@0
    .prologue
    .line 1020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 1021
    .local v4, "ident":J
    new-instance v3, Landroid/app/backup/FullBackupDataOutput;

    #@6
    invoke-direct {v3}, Landroid/app/backup/FullBackupDataOutput;-><init>()V

    #@9
    .line 1023
    .local v3, "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@b
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@e
    .line 1025
    :try_start_0
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@10
    invoke-virtual {v6, v3}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1033
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 1035
    :try_start_1
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    #@19
    move-result-wide v6

    #@1a
    invoke-interface {p2, p1, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@1d
    .line 1018
    :goto_0
    return-void

    #@1e
    .line 1029
    :catch_0
    move-exception v2

    #@1f
    .line 1030
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v6, "BackupServiceBinder"

    #@22
    new-instance v7, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v8, "onFullBackup[M] ("

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@30
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    const-string/jumbo v8, ") threw"

    #@3f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v7

    #@47
    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    .line 1031
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    .line 1032
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    #@4c
    .line 1033
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 1035
    :try_start_3
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    #@52
    move-result-wide v8

    #@53
    invoke-interface {p2, p1, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@56
    .line 1032
    :goto_1
    throw v6

    #@57
    .line 1026
    :catch_1
    move-exception v1

    #@58
    .line 1027
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "BackupServiceBinder"

    #@5b
    new-instance v7, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v8, "onFullBackup[M] ("

    #@63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@69
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    const-string/jumbo v8, ") threw"

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@83
    .line 1028
    new-instance v6, Ljava/lang/RuntimeException;

    #@85
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@88
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@89
    .line 1036
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    #@8a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@8b
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    #@8c
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public doQuotaExceeded(JJ)V
    .locals 7
    .param p1, "backupDataBytes"    # J
    .param p3, "quotaBytes"    # J

    #@0
    .prologue
    .line 1097
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1099
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@6
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onQuotaExceeded(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 1105
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@b
    invoke-static {v1}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@e
    .line 1106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1096
    return-void

    #@12
    .line 1100
    :catch_0
    move-exception v0

    #@13
    .line 1101
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "BackupServiceBinder"

    #@16
    new-instance v4, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v5, "onQuotaExceeded("

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, ") threw"

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 1103
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 1104
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@40
    .line 1105
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@42
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@45
    .line 1106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1104
    throw v1
.end method

.method public doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .locals 10
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "token"    # I
    .param p5, "callbackBinder"    # Landroid/app/backup/IBackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 944
    .local v4, "ident":J
    new-instance v3, Landroid/app/backup/BackupDataInput;

    #@6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9
    move-result-object v6

    #@a
    invoke-direct {v3, v6}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    #@d
    .line 946
    .local v3, "input":Landroid/app/backup/BackupDataInput;
    :try_start_0
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@f
    invoke-virtual {v6, v3, p2, p3}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 955
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@14
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@17
    .line 957
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 959
    const-wide/16 v6, 0x0

    #@1c
    :try_start_1
    invoke-interface {p5, p4, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1f
    .line 964
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v6

    #@23
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@26
    move-result v7

    #@27
    if-eq v6, v7, :cond_0

    #@29
    .line 965
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2c
    .line 966
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@2f
    .line 939
    :cond_0
    return-void

    #@30
    .line 960
    :catch_0
    move-exception v0

    #@31
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@32
    .line 950
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@33
    .line 951
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v6, "BackupServiceBinder"

    #@36
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "onRestore ("

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@44
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    const-string/jumbo v8, ") threw"

    #@53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    .line 952
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    .line 953
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    #@60
    .line 955
    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@62
    invoke-static {v7}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@65
    .line 957
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@68
    .line 959
    const-wide/16 v8, 0x0

    #@6a
    :try_start_3
    invoke-interface {p5, p4, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@6d
    .line 964
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@70
    move-result v7

    #@71
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@74
    move-result v8

    #@75
    if-eq v7, v8, :cond_1

    #@77
    .line 965
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@7a
    .line 966
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@7d
    .line 953
    :cond_1
    throw v6

    #@7e
    .line 947
    :catch_2
    move-exception v1

    #@7f
    .line 948
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "BackupServiceBinder"

    #@82
    new-instance v7, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v8, "onRestore ("

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@97
    move-result-object v8

    #@98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    const-string/jumbo v8, ") threw"

    #@9f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v7

    #@a7
    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@aa
    .line 949
    new-instance v6, Ljava/lang/RuntimeException;

    #@ac
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@af
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b0
    .line 960
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    #@b1
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .locals 19
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

    #@0
    .prologue
    .line 1046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v16

    #@4
    .line 1048
    .local v16, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@8
    move-object/from16 v4, p1

    #@a
    move-wide/from16 v5, p2

    #@c
    move/from16 v7, p4

    #@e
    move-object/from16 v8, p5

    #@10
    move-object/from16 v9, p6

    #@12
    move-wide/from16 v10, p7

    #@14
    move-wide/from16 v12, p9

    #@16
    invoke-virtual/range {v3 .. v13}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 1054
    move-object/from16 v0, p0

    #@1b
    iget-object v3, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@1d
    invoke-static {v3}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@20
    .line 1056
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 1058
    const-wide/16 v4, 0x0

    #@25
    :try_start_1
    move-object/from16 v0, p12

    #@27
    move/from16 v1, p11

    #@29
    invoke-interface {v0, v1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@2c
    .line 1063
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2f
    move-result v3

    #@30
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@33
    move-result v4

    #@34
    if-eq v3, v4, :cond_0

    #@36
    .line 1064
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@39
    .line 1045
    :cond_0
    return-void

    #@3a
    .line 1059
    :catch_0
    move-exception v2

    #@3b
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@3c
    .line 1049
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    #@3d
    .line 1050
    .local v14, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v3, "BackupServiceBinder"

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v5, "onRestoreFile ("

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v5, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@50
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    const-string/jumbo v5, ") threw"

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-static {v3, v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    .line 1051
    new-instance v3, Ljava/lang/RuntimeException;

    #@6c
    invoke-direct {v3, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@6f
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@70
    .line 1052
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@71
    .line 1054
    move-object/from16 v0, p0

    #@73
    iget-object v4, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@75
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@78
    .line 1056
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7b
    .line 1058
    const-wide/16 v4, 0x0

    #@7d
    :try_start_3
    move-object/from16 v0, p12

    #@7f
    move/from16 v1, p11

    #@81
    invoke-interface {v0, v1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@84
    .line 1063
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@87
    move-result v4

    #@88
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@8b
    move-result v5

    #@8c
    if-eq v4, v5, :cond_1

    #@8e
    .line 1064
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@91
    .line 1052
    :cond_1
    throw v3

    #@92
    .line 1059
    :catch_2
    move-exception v2

    #@93
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    #@0
    .prologue
    .line 1071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 1073
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@6
    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 1079
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@b
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@e
    .line 1081
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 1083
    const-wide/16 v4, 0x0

    #@13
    :try_start_1
    invoke-interface {p2, p1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@16
    .line 1070
    :goto_0
    return-void

    #@17
    .line 1084
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@19
    .line 1074
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@1a
    .line 1075
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "BackupServiceBinder"

    #@1d
    new-instance v5, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v6, "onRestoreFinished ("

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@2b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    const-string/jumbo v6, ") threw"

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 1076
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 1077
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@47
    .line 1079
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@49
    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@4c
    .line 1081
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 1083
    const-wide/16 v6, 0x0

    #@51
    :try_start_3
    invoke-interface {p2, p1, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@54
    .line 1077
    :goto_1
    throw v4

    #@55
    .line 1084
    :catch_2
    move-exception v0

    #@56
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1092
    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@2
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Landroid/app/backup/BackupAgent$FailRunnable;

    #@8
    invoke-direct {v1, p1}, Landroid/app/backup/BackupAgent$FailRunnable;-><init>(Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 1091
    return-void
.end method
