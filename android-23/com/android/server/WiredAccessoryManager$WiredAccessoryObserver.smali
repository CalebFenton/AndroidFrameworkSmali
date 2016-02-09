.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/WiredAccessoryManager;

    #@0
    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@2
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    #@5
    .line 318
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    #@b
    .line 317
    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x10

    #@2
    const/4 v7, 0x0

    #@3
    .line 357
    new-instance v6, Ljava/util/ArrayList;

    #@5
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 361
    .local v6, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;>;"
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@a
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-get3(Lcom/android/server/WiredAccessoryManager;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 362
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    #@12
    const-string/jumbo v2, "h2w"

    #@15
    const/4 v3, 0x1

    #@16
    const/4 v4, 0x2

    #@17
    const/16 v5, 0x20

    #@19
    move-object v1, p0

    #@1a
    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    #@1d
    .line 363
    .local v0, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 364
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 371
    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    #@28
    const-string/jumbo v2, "usb_audio"

    #@2b
    const/4 v3, 0x4

    #@2c
    const/16 v4, 0x8

    #@2e
    move-object v1, p0

    #@2f
    move v5, v7

    #@30
    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    #@33
    .line 372
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_2

    #@39
    .line 373
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    .line 386
    :goto_1
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    #@3e
    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string/jumbo v2, "hdmi_audio"

    #@41
    move-object v1, p0

    #@42
    move v3, v8

    #@43
    move v4, v7

    #@44
    move v5, v7

    #@45
    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    #@48
    .line 387
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_3

    #@4e
    .line 388
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@51
    .line 398
    :goto_2
    return-object v6

    #@52
    .line 366
    :cond_1
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    const-string/jumbo v2, "This kernel does not have wired headset support"

    #@59
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0

    #@5d
    .line 375
    :cond_2
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    const-string/jumbo v2, "This kernel does not have usb audio support"

    #@64
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    goto :goto_1

    #@68
    .line 390
    :cond_3
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    #@6a
    .end local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string/jumbo v2, "hdmi"

    #@6d
    move-object v1, p0

    #@6e
    move v3, v8

    #@6f
    move v4, v7

    #@70
    move v5, v7

    #@71
    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    #@74
    .line 391
    .restart local v0    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_4

    #@7a
    .line 392
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7d
    goto :goto_2

    #@7e
    .line 394
    :cond_4
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    const-string/jumbo v2, "This kernel does not have HDMI audio support"

    #@85
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    goto :goto_2
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    #@0
    .prologue
    .line 418
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    if-ge v0, v2, :cond_1

    #@9
    .line 419
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    #@b
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    #@11
    .line 420
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 421
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@1d
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@1f
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->-get1(Lcom/android/server/WiredAccessoryManager;)I

    #@22
    move-result v3

    #@23
    invoke-virtual {v1, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    #@26
    move-result v3

    #@27
    invoke-static {v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->-wrap2(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    #@2a
    .line 422
    return-void

    #@2b
    .line 418
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 417
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method init()V
    .locals 12

    #@0
    .prologue
    .line 322
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@2
    invoke-static {v8}, Lcom/android/server/WiredAccessoryManager;->-get2(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    #@5
    move-result-object v9

    #@6
    monitor-enter v9

    #@7
    .line 323
    :try_start_0
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    #@a
    move-result-object v8

    #@b
    const-string/jumbo v10, "init()"

    #@e
    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 324
    const/16 v8, 0x400

    #@13
    new-array v0, v8, [C

    #@15
    .line 326
    .local v0, "buffer":[C
    const/4 v5, 0x0

    #@16
    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    #@18
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@1b
    move-result v8

    #@1c
    if-ge v5, v8, :cond_1

    #@1e
    .line 327
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    #@20
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v7

    #@24
    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 330
    .local v7, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    #@28
    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    #@2b
    move-result-object v8

    #@2c
    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@2f
    .line 331
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    #@30
    const/16 v10, 0x400

    #@32
    invoke-virtual {v4, v0, v8, v10}, Ljava/io/FileReader;->read([CII)I

    #@35
    move-result v6

    #@36
    .line 332
    .local v6, "len":I
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    #@39
    .line 333
    new-instance v8, Ljava/lang/String;

    #@3b
    const/4 v10, 0x0

    #@3c
    invoke-direct {v8, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    #@3f
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@4a
    move-result v1

    #@4b
    .line 335
    .local v1, "curState":I
    if-lez v1, :cond_0

    #@4d
    .line 336
    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    #@54
    move-result-object v10

    #@55
    invoke-direct {p0, v8, v10, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    .line 326
    .end local v1    # "curState":I
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 341
    :catch_0
    move-exception v3

    #@5c
    .line 342
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    const-string/jumbo v10, ""

    #@63
    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    goto :goto_1

    #@67
    .line 322
    .end local v0    # "buffer":[C
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catchall_0
    move-exception v8

    #@68
    monitor-exit v9

    #@69
    throw v8

    #@6a
    .line 338
    .restart local v0    # "buffer":[C
    .restart local v5    # "i":I
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_1
    move-exception v2

    #@6b
    .line 339
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    new-instance v10, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    #@77
    move-result-object v11

    #@78
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v10

    #@7c
    .line 340
    const-string/jumbo v11, " not found while attempting to determine initial switch state"

    #@7f
    .line 339
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8a
    goto :goto_1

    #@8b
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_1
    monitor-exit v9

    #@8c
    .line 350
    const/4 v5, 0x0

    #@8d
    :goto_2
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    #@8f
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@92
    move-result v8

    #@93
    if-ge v5, v8, :cond_2

    #@95
    .line 351
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    #@97
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@9a
    move-result-object v7

    #@9b
    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    #@9d
    .line 352
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v9, "DEVPATH="

    #@a5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v8

    #@b1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v8

    #@b5
    invoke-virtual {p0, v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    #@b8
    .line 350
    add-int/lit8 v5, v5, 0x1

    #@ba
    goto :goto_2

    #@bb
    .line 321
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_2
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    #@0
    .prologue
    .line 403
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v6, "Headset UEVENT: "

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 406
    :try_start_0
    const-string/jumbo v4, "DEVPATH"

    #@22
    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 407
    .local v0, "devPath":Ljava/lang/String;
    const-string/jumbo v4, "SWITCH_NAME"

    #@29
    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 408
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "SWITCH_STATE"

    #@30
    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@37
    move-result v3

    #@38
    .line 409
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    #@3a
    invoke-static {v4}, Lcom/android/server/WiredAccessoryManager;->-get2(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    #@3d
    move-result-object v4

    #@3e
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .line 410
    :try_start_1
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    :try_start_2
    monitor-exit v4

    #@43
    .line 402
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :goto_0
    return-void

    #@44
    .line 409
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "state":I
    :catchall_0
    move-exception v5

    #@45
    monitor-exit v4

    #@46
    throw v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@47
    .line 412
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "state":I
    :catch_0
    move-exception v1

    #@48
    .line 413
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v6, "Could not parse switch state from event "

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v5

    #@60
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    goto :goto_0
.end method
