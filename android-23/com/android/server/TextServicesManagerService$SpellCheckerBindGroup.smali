.class Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mBound:Z

.field public mConnected:Z

.field private final mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;
    .param p2, "connection"    # Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .param p3, "listener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "locale"    # Ljava/lang/String;
    .param p5, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p6, "uid"    # I
    .param p7, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 819
    const-class v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    #@d
    .line 822
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@12
    .line 821
    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@14
    .line 830
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@16
    .line 831
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    #@19
    .line 832
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    #@1c
    move-object v0, p0

    #@1d
    move-object v1, p3

    #@1e
    move-object v2, p4

    #@1f
    move-object v3, p5

    #@20
    move v4, p6

    #@21
    move-object v5, p7

    #@22
    .line 833
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@25
    .line 829
    return-void
.end method

.method private cleanLocked()V
    .locals 4

    #@0
    .prologue
    .line 927
    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 928
    const/4 v2, 0x0

    #@d
    iput-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    #@f
    .line 929
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@11
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->-get0(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 930
    .local v1, "sciId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@17
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@21
    .line 931
    .local v0, "cur":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-ne v0, p0, :cond_0

    #@23
    .line 935
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@25
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 937
    :cond_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2e
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@34
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@37
    .line 921
    .end local v0    # "cur":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v1    # "sciId":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .locals 14
    .param p1, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p4, "uid"    # I
    .param p5, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 868
    const/4 v11, 0x0

    #@1
    .line 869
    .local v11, "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@3
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@6
    move-result-object v13

    #@7
    monitor-enter v13

    #@8
    .line 871
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@d
    move-result v12

    #@e
    .line 872
    .local v12, "size":I
    const/4 v10, 0x0

    #@f
    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_1

    #@11
    .line 873
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@13
    invoke-virtual {v2, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@19
    move-object/from16 v0, p3

    #@1b
    invoke-virtual {v2, v0}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 875
    const/4 v2, 0x0

    #@22
    monitor-exit v13

    #@23
    return-object v2

    #@24
    .line 872
    :cond_0
    add-int/lit8 v10, v10, 0x1

    #@26
    goto :goto_0

    #@27
    .line 878
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@29
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2b
    move-object v3, p0

    #@2c
    move-object v4, p1

    #@2d
    move-object/from16 v5, p2

    #@2f
    move-object/from16 v6, p3

    #@31
    move/from16 v7, p4

    #@33
    move-object/from16 v8, p5

    #@35
    invoke-direct/range {v1 .. v8}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 880
    .local v1, "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_start_2
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    #@3b
    .end local v11    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    move-result-object v2

    #@3c
    const/4 v3, 0x0

    #@3d
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@40
    .line 881
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@42
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@45
    .line 885
    .end local v10    # "i":I
    .end local v12    # "size":I
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@48
    monitor-exit v13

    #@49
    .line 887
    return-object v1

    #@4a
    .line 869
    .end local v1    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v11    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :catchall_0
    move-exception v2

    #@4b
    move-object v1, v11

    #@4c
    .end local v11    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v1    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :goto_2
    monitor-exit v13

    #@4d
    throw v2

    #@4e
    :catchall_1
    move-exception v2

    #@4f
    goto :goto_2

    #@50
    .line 882
    .end local v1    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v11    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :catch_0
    move-exception v9

    #@51
    .local v9, "e":Landroid/os/RemoteException;
    move-object v1, v11

    #@52
    .restart local v1    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    goto :goto_1

    #@53
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v11    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v10    # "i":I
    .restart local v12    # "size":I
    :catch_1
    move-exception v9

    #@54
    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .locals 7
    .param p1, "spellChecker"    # Lcom/android/internal/textservice/ISpellCheckerService;

    #@0
    .prologue
    .line 841
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@12
    .line 844
    .local v1, "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_start_0
    iget-object v4, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    #@14
    iget-object v5, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@16
    iget-object v6, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mBundle:Landroid/os/Bundle;

    #@18
    .line 843
    invoke-interface {p1, v4, v5, v6}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    #@1b
    move-result-object v3

    #@1c
    .line 845
    .local v3, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@1e
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@21
    move-result-object v5

    #@22
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 846
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@25
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 847
    iget-object v4, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    #@2d
    invoke-interface {v4, v3}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    :cond_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@31
    goto :goto_0

    #@32
    .line 850
    .end local v3    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_0
    move-exception v0

    #@33
    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    #@35
    const-string/jumbo v5, "Exception in getting the spell checker session.Reconnect to the spellchecker. "

    #@38
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 853
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    #@3e
    .line 854
    return-void

    #@3f
    .line 845
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catchall_0
    move-exception v4

    #@40
    :try_start_3
    monitor-exit v5

    #@41
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@42
    .line 857
    .end local v1    # "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .end local v3    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :cond_1
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@44
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@47
    move-result-object v5

    #@48
    monitor-enter v5

    #@49
    .line 858
    :try_start_4
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    #@4b
    .line 859
    const/4 v4, 0x1

    #@4c
    iput-boolean v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4e
    monitor-exit v5

    #@4f
    .line 836
    return-void

    #@50
    .line 857
    :catchall_1
    move-exception v4

    #@51
    monitor-exit v5

    #@52
    throw v4
.end method

.method public removeAll()V
    .locals 6

    #@0
    .prologue
    .line 942
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    #@2
    const-string/jumbo v4, "Remove the spell checker bind unexpectedly."

    #@5
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    .line 943
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@a
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@d
    move-result-object v4

    #@e
    monitor-enter v4

    #@f
    .line 944
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@11
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@14
    move-result v2

    #@15
    .line 945
    .local v2, "size":I
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@18
    .line 946
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1a
    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@20
    .line 947
    .local v1, "idr":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v3, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@22
    invoke-interface {v3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    #@25
    move-result-object v3

    #@26
    const/4 v5, 0x0

    #@27
    invoke-interface {v3, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@2a
    .line 945
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 949
    .end local v1    # "idr":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2f
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    #@32
    .line 950
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit v4

    #@36
    .line 941
    return-void

    #@37
    .line 943
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    throw v3
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@0
    .prologue
    .line 894
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    .line 895
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    #@c
    move-result v4

    #@d
    .line 897
    .local v4, "size":I
    new-instance v2, Ljava/util/ArrayList;

    #@f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 898
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;>;"
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@15
    .line 899
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@17
    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v5

    #@1b
    check-cast v5, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@1d
    .line 900
    .local v5, "tempRecipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_0

    #@23
    .line 904
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    .line 898
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 907
    .end local v5    # "tempRecipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v3

    #@2d
    .line 908
    .local v3, "removeSize":I
    const/4 v0, 0x0

    #@2e
    :goto_1
    if-ge v0, v3, :cond_2

    #@30
    .line 912
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    #@36
    .line 913
    .local v1, "idr":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v6, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    #@38
    invoke-interface {v6}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    #@3b
    move-result-object v6

    #@3c
    const/4 v8, 0x0

    #@3d
    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@40
    .line 914
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@42
    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@45
    .line 908
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 916
    .end local v1    # "idr":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    monitor-exit v7

    #@4c
    .line 890
    return-void

    #@4d
    .line 894
    .end local v0    # "i":I
    .end local v2    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;>;"
    .end local v3    # "removeSize":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v6

    #@4e
    monitor-exit v7

    #@4f
    throw v6
.end method
