.class Landroid/os/ProfilingManager$1;
.super Landroid/os/IProfilingResultCallback$Stub;
.source "ProfilingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/ProfilingManager;->getOrCreateIProfilingServiceLocked(Z)Landroid/os/IProfilingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/ProfilingManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$HQKe_DyiIucS8PsafXMme1ygWwo(Landroid/os/ProfilingManager$1;Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/os/ProfilingManager$1;->lambda$sendResult$0(Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/ProfilingManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/ProfilingManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 598
    iput-object p1, p0, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    invoke-direct {p0}, Landroid/os/IProfilingResultCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist getAppFileDir()Ljava/lang/String;
    .registers 2

    .line 776
    iget-object v0, p0, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    invoke-static {v0}, Landroid/os/ProfilingManager;->-$$Nest$fgetmContext(Landroid/os/ProfilingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$sendResult$0(Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .param p1, "wrapper"    # Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;
    .param p2, "overrideStatusToError"    # Z
    .param p3, "status"    # I
    .param p4, "resultFile"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "error"    # Ljava/lang/String;
    .param p7, "triggerType"    # I

    .line 649
    iget-object v0, p1, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mListener:Ljava/util/function/Consumer;

    new-instance v1, Landroid/os/ProfilingResult;

    .line 650
    if-eqz p2, :cond_9

    .line 651
    const/16 v2, 0x8

    goto :goto_a

    :cond_9
    move v2, p3

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    invoke-direct {p0}, Landroid/os/ProfilingManager$1;->getAppFileDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .end local p5    # "tag":Ljava/lang/String;
    .end local p6    # "error":Ljava/lang/String;
    .end local p7    # "triggerType":I
    .local v4, "tag":Ljava/lang/String;
    .local v5, "error":Ljava/lang/String;
    .local v6, "triggerType":I
    invoke-direct/range {v1 .. v6}, Landroid/os/ProfilingResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 649
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist tryToCleanupGeneratedFile(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)V
    .registers 4
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "file"    # Ljava/io/File;

    .line 744
    if-eqz p1, :cond_7

    .line 746
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 750
    goto :goto_7

    .line 747
    :catch_6
    move-exception v0

    .line 753
    :cond_7
    :goto_7
    if-eqz p2, :cond_e

    .line 755
    :try_start_9
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_c} :catch_d

    .line 759
    goto :goto_e

    .line 756
    :catch_d
    move-exception v0

    .line 761
    :cond_e
    :goto_e
    return-void
.end method


# virtual methods
.method public blacklist deleteFile(Ljava/lang/String;)V
    .registers 4
    .param p1, "relativeFilePathAndName"    # Ljava/lang/String;

    .line 769
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/os/ProfilingManager$1;->getAppFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 772
    goto :goto_21

    .line 770
    :catch_20
    move-exception v0

    .line 773
    :goto_21
    return-void
.end method

.method public blacklist generateFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 18
    .param p1, "filePathRelative"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "keyMostSigBits"    # J
    .param p5, "keyLeastSigBits"    # J

    .line 678
    iget-object v0, p0, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    invoke-static {v0}, Landroid/os/ProfilingManager;->-$$Nest$fgetmLock(Landroid/os/ProfilingManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 679
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/os/ProfilingManager$1;->getAppFileDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_74

    move-object v2, v0

    .line 683
    .local v2, "filePathAbsolute":Ljava/lang/String;
    :try_start_1d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 684
    .local v3, "profilingDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 685
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 689
    :cond_2c
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 691
    .local v4, "profilingFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 692
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4a} :catch_71
    .catchall {:try_start_1d .. :try_end_4a} :catchall_74

    if-nez v0, :cond_4e

    .line 695
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_74

    return-void

    .line 700
    :cond_4e
    const/high16 v0, 0x30000000

    :try_start_50
    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v6, v0

    .line 703
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, p0, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    .line 704
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/ProfilingManager;->getOrCreateIProfilingServiceLocked(Z)Landroid/os/IProfilingService;

    move-result-object v5

    .line 706
    .local v5, "service":Landroid/os/IProfilingService;
    if-nez v5, :cond_63

    .line 711
    invoke-direct {p0, v6, v4}, Landroid/os/ProfilingManager$1;->tryToCleanupGeneratedFile(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_61} :catch_71
    .catchall {:try_start_50 .. :try_end_61} :catchall_74

    .line 712
    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_74

    return-void

    .line 717
    :cond_63
    move-wide v7, p3

    move-wide/from16 v9, p5

    :try_start_66
    invoke-interface/range {v5 .. v10}, Landroid/os/IProfilingService;->receiveFileDescriptor(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_69} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_71
    .catchall {:try_start_66 .. :try_end_69} :catchall_74

    .line 727
    goto :goto_6e

    .line 719
    :catch_6a
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6b
    invoke-direct {p0, v6, v4}, Landroid/os/ProfilingManager$1;->tryToCleanupGeneratedFile(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_71
    .catchall {:try_start_6b .. :try_end_6e} :catchall_74

    .line 732
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "profilingDir":Ljava/io/File;
    .end local v4    # "profilingFile":Ljava/io/File;
    .end local v5    # "service":Landroid/os/IProfilingService;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_6e
    nop

    .line 733
    .end local v2    # "filePathAbsolute":Ljava/lang/String;
    :try_start_6f
    monitor-exit v1

    .line 734
    return-void

    .line 728
    .restart local v2    # "filePathAbsolute":Ljava/lang/String;
    :catch_71
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    monitor-exit v1

    return-void

    .line 733
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "filePathAbsolute":Ljava/lang/String;
    :catchall_74
    move-exception v0

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_74

    throw v0
.end method

.method public blacklist sendResult(Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;I)V
    .registers 27
    .param p1, "resultFile"    # Ljava/lang/String;
    .param p2, "keyMostSigBits"    # J
    .param p4, "keyLeastSigBits"    # J
    .param p6, "status"    # I
    .param p7, "tag"    # Ljava/lang/String;
    .param p8, "error"    # Ljava/lang/String;
    .param p9, "triggerType"    # I

    .line 608
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    invoke-static {v0}, Landroid/os/ProfilingManager;->-$$Nest$fgetmLock(Landroid/os/ProfilingManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 609
    :try_start_9
    iget-object v0, v1, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    iget-object v0, v0, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 613
    iget-object v0, v1, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/ProfilingManager;->mProfilingService:Landroid/os/IProfilingService;

    .line 614
    monitor-exit v9

    return-void

    .line 619
    :cond_1a
    if-nez p1, :cond_20

    if-nez p6, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move v3, v0

    .line 622
    .local v3, "overrideStatusToError":Z
    new-instance v0, Ljava/util/UUID;
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_81

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    :try_start_28
    invoke-direct {v0, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    move-object v14, v0

    .line 623
    .local v14, "key":Ljava/util/UUID;
    const/4 v0, -0x1

    .line 624
    .local v0, "removeListenerPos":I
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_2f
    iget-object v2, v1, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    iget-object v2, v2, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, -0x1

    if-ge v15, v2, :cond_76

    .line 625
    iget-object v2, v1, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    iget-object v2, v2, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;

    .line 626
    .local v2, "wrapper":Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;
    iget-object v5, v2, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mKey:Ljava/util/UUID;

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 630
    if-ne v0, v4, :cond_57

    .line 631
    move v0, v15

    move/from16 v16, v0

    goto :goto_59

    .line 639
    :cond_52
    iget-object v4, v2, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mKey:Ljava/util/UUID;

    if-eqz v4, :cond_57

    .line 643
    goto :goto_71

    .line 649
    :cond_57
    move/from16 v16, v0

    .end local v0    # "removeListenerPos":I
    .local v16, "removeListenerPos":I
    :goto_59
    iget-object v0, v2, Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    move-object v4, v0

    new-instance v0, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;

    move-object/from16 v5, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object v10, v4

    move/from16 v4, p6

    invoke-direct/range {v0 .. v8}, Landroid/os/ProfilingManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/ProfilingManager$1;Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move/from16 v0, v16

    .line 624
    .end local v2    # "wrapper":Landroid/os/ProfilingManager$ProfilingRequestCallbackWrapper;
    .end local v16    # "removeListenerPos":I
    .restart local v0    # "removeListenerPos":I
    :goto_71
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v10, p2

    goto :goto_2f

    .line 658
    .end local v15    # "i":I
    :cond_76
    if-eq v0, v4, :cond_7f

    .line 659
    iget-object v2, v1, Landroid/os/ProfilingManager$1;->this$0:Landroid/os/ProfilingManager;

    iget-object v2, v2, Landroid/os/ProfilingManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 661
    .end local v0    # "removeListenerPos":I
    .end local v3    # "overrideStatusToError":Z
    .end local v14    # "key":Ljava/util/UUID;
    :cond_7f
    monitor-exit v9

    .line 662
    return-void

    .line 661
    :catchall_81
    move-exception v0

    move-wide/from16 v12, p4

    :goto_84
    monitor-exit v9
    :try_end_85
    .catchall {:try_start_28 .. :try_end_85} :catchall_86

    throw v0

    :catchall_86
    move-exception v0

    goto :goto_84
.end method
