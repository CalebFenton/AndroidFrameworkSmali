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
    .line 772
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
    .line 781
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 784
    .local v4, "ident":J
    new-instance v3, Landroid/app/backup/BackupDataOutput;

    #@6
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9
    move-result-object v6

    #@a
    invoke-direct {v3, v6}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    #@d
    .line 787
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
    .line 798
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@14
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@17
    .line 800
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 802
    const-wide/16 v6, 0x0

    #@1c
    :try_start_1
    invoke-interface {p5, p4, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1f
    .line 779
    :goto_0
    return-void

    #@20
    .line 803
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@22
    .line 791
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@23
    .line 792
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v6, "BackupServiceBinder"

    #@26
    new-instance v7, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v8, "onBackup ("

    #@2e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@34
    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    const-string/jumbo v8, ") threw"

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 793
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    .line 794
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    #@50
    .line 798
    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@52
    invoke-static {v7}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@55
    .line 800
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@58
    .line 802
    const-wide/16 v8, 0x0

    #@5a
    :try_start_3
    invoke-interface {p5, p4, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@5d
    .line 794
    :goto_1
    throw v6

    #@5e
    .line 788
    :catch_2
    move-exception v1

    #@5f
    .line 789
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "BackupServiceBinder"

    #@62
    new-instance v7, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v8, "onBackup ("

    #@6a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@70
    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    const-string/jumbo v8, ") threw"

    #@7f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8a
    .line 790
    new-instance v6, Ljava/lang/RuntimeException;

    #@8c
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@8f
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@90
    .line 803
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    #@91
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
    .line 843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v6

    #@4
    .line 849
    .local v6, "ident":J
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@6
    invoke-static {v8}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@9
    .line 852
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
    .line 861
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@15
    invoke-static {v8}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@18
    .line 866
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    #@1a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@1d
    move-result-object v8

    #@1e
    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@21
    .line 867
    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v8, 0x4

    #@22
    new-array v0, v8, [B

    #@24
    .line 868
    .local v0, "buf":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    .line 873
    .end local v0    # "buf":[B
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 875
    const-wide/16 v8, 0x0

    #@2c
    :try_start_2
    invoke-interface {p3, p2, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@2f
    .line 841
    :goto_1
    return-void

    #@30
    .line 869
    :catch_0
    move-exception v2

    #@31
    .line 870
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "BackupServiceBinder"

    #@34
    const-string/jumbo v9, "Unable to finalize backup stream!"

    #@37
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    goto :goto_0

    #@3b
    .line 876
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@3c
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@3d
    .line 856
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    #@3e
    .line 857
    .local v4, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    const-string/jumbo v8, "BackupServiceBinder"

    #@41
    new-instance v9, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v10, "onFullBackup ("

    #@49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v9

    #@4d
    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@4f
    invoke-virtual {v10}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    #@52
    move-result-object v10

    #@53
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    const-string/jumbo v10, ") threw"

    #@5e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    .line 858
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    .line 859
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    #@6b
    .line 861
    iget-object v9, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@6d
    invoke-static {v9}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@70
    .line 866
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    #@72
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@75
    move-result-object v9

    #@76
    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@79
    .line 867
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    const/4 v9, 0x4

    #@7a
    new-array v0, v9, [B

    #@7c
    .line 868
    .restart local v0    # "buf":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    #@7f
    .line 873
    .end local v0    # "buf":[B
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@82
    .line 875
    const-wide/16 v10, 0x0

    #@84
    :try_start_5
    invoke-interface {p3, p2, v10, v11}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    #@87
    .line 859
    :goto_3
    throw v8

    #@88
    .line 853
    :catch_3
    move-exception v3

    #@89
    .line 854
    .local v3, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v8, "BackupServiceBinder"

    #@8c
    new-instance v9, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v10, "onFullBackup ("

    #@94
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v9

    #@98
    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@9a
    invoke-virtual {v10}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    #@9d
    move-result-object v10

    #@9e
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a1
    move-result-object v10

    #@a2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v9

    #@a6
    const-string/jumbo v10, ") threw"

    #@a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v9

    #@b1
    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b4
    .line 855
    new-instance v8, Ljava/lang/RuntimeException;

    #@b6
    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@b9
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ba
    .line 869
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v2

    #@bb
    .line 870
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "BackupServiceBinder"

    #@be
    const-string/jumbo v10, "Unable to finalize backup stream!"

    #@c1
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    goto :goto_2

    #@c5
    .line 876
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    #@c6
    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public doMeasureFullBackup(ILandroid/app/backup/IBackupManager;)V
    .locals 10
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    #@0
    .prologue
    .line 884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 885
    .local v4, "ident":J
    new-instance v3, Landroid/app/backup/FullBackupDataOutput;

    #@6
    invoke-direct {v3}, Landroid/app/backup/FullBackupDataOutput;-><init>()V

    #@9
    .line 887
    .local v3, "measureOutput":Landroid/app/backup/FullBackupDataOutput;
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@b
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@e
    .line 889
    :try_start_0
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@10
    invoke-virtual {v6, v3}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 897
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@16
    .line 899
    :try_start_1
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    #@19
    move-result-wide v6

    #@1a
    invoke-interface {p2, p1, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@1d
    .line 882
    :goto_0
    return-void

    #@1e
    .line 893
    :catch_0
    move-exception v2

    #@1f
    .line 894
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
    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

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
    .line 895
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    .line 896
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    #@4c
    .line 897
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 899
    :try_start_3
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    #@52
    move-result-wide v8

    #@53
    invoke-interface {p2, p1, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@56
    .line 896
    :goto_1
    throw v6

    #@57
    .line 890
    :catch_1
    move-exception v1

    #@58
    .line 891
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
    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

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
    .line 892
    new-instance v6, Ljava/lang/RuntimeException;

    #@85
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@88
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@89
    .line 900
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
    .line 814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v4

    #@4
    .line 817
    .local v4, "ident":J
    new-instance v3, Landroid/app/backup/BackupDataInput;

    #@6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@9
    move-result-object v6

    #@a
    invoke-direct {v3, v6}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    #@d
    .line 819
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
    .line 828
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@14
    invoke-static {v6}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@17
    .line 830
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 832
    const-wide/16 v6, 0x0

    #@1c
    :try_start_1
    invoke-interface {p5, p4, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1f
    .line 812
    :goto_0
    return-void

    #@20
    .line 833
    :catch_0
    move-exception v0

    #@21
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@22
    .line 823
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    #@23
    .line 824
    .local v2, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v6, "BackupServiceBinder"

    #@26
    new-instance v7, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v8, "onRestore ("

    #@2e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@34
    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v7

    #@40
    const-string/jumbo v8, ") threw"

    #@43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    .line 825
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    .line 826
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    #@50
    .line 828
    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@52
    invoke-static {v7}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@55
    .line 830
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@58
    .line 832
    const-wide/16 v8, 0x0

    #@5a
    :try_start_3
    invoke-interface {p5, p4, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@5d
    .line 826
    :goto_1
    throw v6

    #@5e
    .line 820
    :catch_2
    move-exception v1

    #@5f
    .line 821
    .local v1, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v6, "BackupServiceBinder"

    #@62
    new-instance v7, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v8, "onRestore ("

    #@6a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@70
    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    #@73
    move-result-object v8

    #@74
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    const-string/jumbo v8, ") threw"

    #@7f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8a
    .line 822
    new-instance v6, Ljava/lang/RuntimeException;

    #@8c
    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@8f
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@90
    .line 833
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    #@91
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
    .line 910
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v16

    #@4
    .line 912
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
    .line 918
    move-object/from16 v0, p0

    #@1b
    iget-object v3, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@1d
    invoke-static {v3}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@20
    .line 920
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@23
    .line 922
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
    .line 909
    :goto_0
    return-void

    #@2d
    .line 923
    :catch_0
    move-exception v2

    #@2e
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@2f
    .line 913
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    #@30
    .line 914
    .local v14, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v3, "BackupServiceBinder"

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "onRestoreFile ("

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v5, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@43
    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    const-string/jumbo v5, ") threw"

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v3, v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    .line 915
    new-instance v3, Ljava/lang/RuntimeException;

    #@5f
    invoke-direct {v3, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@62
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    .line 916
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    #@64
    .line 918
    move-object/from16 v0, p0

    #@66
    iget-object v4, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@68
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@6b
    .line 920
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6e
    .line 922
    const-wide/16 v4, 0x0

    #@70
    :try_start_3
    move-object/from16 v0, p12

    #@72
    move/from16 v1, p11

    #@74
    invoke-interface {v0, v1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@77
    .line 916
    :goto_1
    throw v3

    #@78
    .line 923
    :catch_2
    move-exception v2

    #@79
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    #@0
    .prologue
    .line 931
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v2

    #@4
    .line 933
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@6
    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 939
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@b
    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@e
    .line 941
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 943
    const-wide/16 v4, 0x0

    #@13
    :try_start_1
    invoke-interface {p2, p1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@16
    .line 930
    :goto_0
    return-void

    #@17
    .line 944
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@19
    .line 934
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@1a
    .line 935
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
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

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
    .line 936
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 937
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@47
    .line 939
    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    #@49
    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    #@4c
    .line 941
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 943
    const-wide/16 v6, 0x0

    #@51
    :try_start_3
    invoke-interface {p2, p1, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@54
    .line 937
    :goto_1
    throw v4

    #@55
    .line 944
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
    .line 952
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
    .line 951
    return-void
.end method
