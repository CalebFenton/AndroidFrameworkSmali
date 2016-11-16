.class Lcom/android/server/vr/VrManagerService$3;
.super Landroid/service/vr/IVrManager$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    #@0
    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 317
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    invoke-virtual {v8}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v8

    #@6
    const-string/jumbo v9, "android.permission.DUMP"

    #@9
    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v8

    #@d
    if-eqz v8, :cond_0

    #@f
    .line 319
    new-instance v8, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v9, "permission denied: can\'t dump VrManagerService from pid="

    #@17
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    .line 320
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v9

    #@1f
    .line 319
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v8

    #@23
    .line 320
    const-string/jumbo v9, ", uid="

    #@26
    .line 319
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    .line 320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v9

    #@2e
    .line 319
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 321
    return-void

    #@3a
    .line 323
    :cond_0
    const-string/jumbo v8, "********* Dump of VrManagerService *********"

    #@3d
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@40
    .line 324
    const-string/jumbo v8, "Previous state transitions:\n"

    #@43
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 325
    const-string/jumbo v6, "  "

    #@49
    .line 326
    .local v6, "tab":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@4b
    invoke-static {v8, p2}, Lcom/android/server/vr/VrManagerService;->-wrap5(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V

    #@4e
    .line 327
    const-string/jumbo v8, "\n\nRemote Callbacks:"

    #@51
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 328
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@56
    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    #@59
    move-result-object v8

    #@5a
    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@5d
    move-result v1

    #@5e
    .local v1, "i":I
    move v2, v1

    #@5f
    .line 329
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    #@61
    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_2

    #@63
    .line 330
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    .line 331
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@68
    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@73
    .line 332
    if-lez v1, :cond_1

    #@75
    const-string/jumbo v8, ","

    #@78
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    :cond_1
    move v2, v1

    #@7c
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@7d
    .line 334
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@7f
    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@86
    .line 335
    const-string/jumbo v8, "\n"

    #@89
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 336
    const-string/jumbo v8, "Installed VrListenerService components:"

    #@8f
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@92
    .line 337
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@94
    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get1(Lcom/android/server/vr/VrManagerService;)I

    #@97
    move-result v7

    #@98
    .line 338
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@9a
    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get0(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    #@9d
    move-result-object v8

    #@9e
    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getInstalled(I)Landroid/util/ArraySet;

    #@a1
    move-result-object v3

    #@a2
    .line 339
    .local v3, "installed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_3

    #@a4
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    #@a7
    move-result v8

    #@a8
    if-nez v8, :cond_7

    #@aa
    .line 340
    :cond_3
    const-string/jumbo v8, "None"

    #@ad
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b0
    .line 347
    :cond_4
    const-string/jumbo v8, "Enabled VrListenerService components:"

    #@b3
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b6
    .line 348
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@b8
    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get0(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    #@bf
    move-result-object v0

    #@c0
    .line 349
    .local v0, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_5

    #@c2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@c5
    move-result v8

    #@c6
    if-nez v8, :cond_8

    #@c8
    .line 350
    :cond_5
    const-string/jumbo v8, "None"

    #@cb
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ce
    .line 357
    :cond_6
    const-string/jumbo v8, "\n"

    #@d1
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d4
    .line 358
    const-string/jumbo v8, "********* End of VrManagerService Dump *********"

    #@d7
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@da
    .line 316
    return-void

    #@db
    .line 342
    .end local v0    # "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@de
    move-result-object v5

    #@df
    .local v5, "n$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@e2
    move-result v8

    #@e3
    if-eqz v8, :cond_4

    #@e5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e8
    move-result-object v4

    #@e9
    check-cast v4, Landroid/content/ComponentName;

    #@eb
    .line 343
    .local v4, "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ee
    .line 344
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@f1
    move-result-object v8

    #@f2
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f5
    goto :goto_1

    #@f6
    .line 352
    .end local v4    # "n":Landroid/content/ComponentName;
    .end local v5    # "n$iterator":Ljava/util/Iterator;
    .restart local v0    # "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f9
    move-result-object v5

    #@fa
    .restart local v5    # "n$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@fd
    move-result v8

    #@fe
    if-eqz v8, :cond_6

    #@100
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@103
    move-result-object v4

    #@104
    check-cast v4, Landroid/content/ComponentName;

    #@106
    .line 353
    .restart local v4    # "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@109
    .line 354
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@10c
    move-result-object v8

    #@10d
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@110
    goto :goto_2
.end method

.method public getVrModeState()Z
    .locals 1

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap0(Lcom/android/server/vr/VrManagerService;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_VR_MANAGER"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap6(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    #@8
    .line 293
    if-nez p1, :cond_0

    #@a
    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Callback binder object is null."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@15
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap3(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    #@18
    .line 291
    return-void
.end method

.method public unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 2
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_VR_MANAGER"

    #@5
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap6(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V

    #@8
    .line 303
    if-nez p1, :cond_0

    #@a
    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Callback binder object is null."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$3;->this$0:Lcom/android/server/vr/VrManagerService;

    #@15
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap10(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    #@18
    .line 301
    return-void
.end method
