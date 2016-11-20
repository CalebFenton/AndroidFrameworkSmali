.class final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DockObserver;

    #@0
    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DockObserver;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    #@3
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 248
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@3
    invoke-virtual {v5}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    #@6
    move-result-object v5

    #@7
    const-string/jumbo v6, "android.permission.DUMP"

    #@a
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_0

    #@10
    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "Permission Denial: can\'t dump dock observer service from from pid="

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1f
    move-result v6

    #@20
    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    .line 252
    const-string/jumbo v6, ", uid="

    #@27
    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    .line 252
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2e
    move-result v6

    #@2f
    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 253
    return-void

    #@3b
    .line 256
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3e
    move-result-wide v2

    #@3f
    .line 258
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@41
    invoke-static {v5}, Lcom/android/server/DockObserver;->-get1(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    #@44
    move-result-object v6

    #@45
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@46
    .line 259
    if-eqz p3, :cond_1

    #@48
    :try_start_1
    array-length v5, p3

    #@49
    if-nez v5, :cond_3

    #@4b
    .line 260
    :cond_1
    const-string/jumbo v5, "Current Dock Observer Service state:"

    #@4e
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 261
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@53
    invoke-static {v5}, Lcom/android/server/DockObserver;->-get4(Lcom/android/server/DockObserver;)Z

    #@56
    move-result v5

    #@57
    if-eqz v5, :cond_2

    #@59
    .line 262
    const-string/jumbo v5, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    #@5c
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 264
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v7, "  reported state: "

    #@67
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@6d
    invoke-static {v7}, Lcom/android/server/DockObserver;->-get3(Lcom/android/server/DockObserver;)I

    #@70
    move-result v7

    #@71
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7c
    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v7, "  previous state: "

    #@84
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@8a
    invoke-static {v7}, Lcom/android/server/DockObserver;->-get2(Lcom/android/server/DockObserver;)I

    #@8d
    move-result v7

    #@8e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@99
    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v7, "  actual state: "

    #@a1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@a7
    invoke-static {v7}, Lcom/android/server/DockObserver;->-get0(Lcom/android/server/DockObserver;)I

    #@aa
    move-result v7

    #@ab
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v5

    #@af
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v5

    #@b3
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b6
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@b7
    .line 290
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ba
    .line 247
    return-void

    #@bb
    .line 259
    :cond_3
    :try_start_3
    const-string/jumbo v5, "-a"

    #@be
    const/4 v7, 0x0

    #@bf
    aget-object v7, p3, v7

    #@c1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v5

    #@c5
    if-nez v5, :cond_1

    #@c7
    .line 267
    array-length v5, p3

    #@c8
    const/4 v7, 0x3

    #@c9
    if-ne v5, v7, :cond_5

    #@cb
    const-string/jumbo v5, "set"

    #@ce
    const/4 v7, 0x0

    #@cf
    aget-object v7, p3, v7

    #@d1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v5

    #@d5
    if-eqz v5, :cond_5

    #@d7
    .line 268
    const/4 v5, 0x1

    #@d8
    aget-object v1, p3, v5

    #@da
    .line 269
    .local v1, "key":Ljava/lang/String;
    const/4 v5, 0x2

    #@db
    aget-object v4, p3, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@dd
    .line 271
    .local v4, "value":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v5, "state"

    #@e0
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v5

    #@e4
    if-eqz v5, :cond_4

    #@e6
    .line 272
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@e8
    const/4 v7, 0x1

    #@e9
    invoke-static {v5, v7}, Lcom/android/server/DockObserver;->-set0(Lcom/android/server/DockObserver;Z)Z

    #@ec
    .line 273
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@ee
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@f1
    move-result v7

    #@f2
    invoke-static {v5, v7}, Lcom/android/server/DockObserver;->-wrap2(Lcom/android/server/DockObserver;I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@f5
    goto :goto_0

    #@f6
    .line 277
    :catch_0
    move-exception v0

    #@f7
    .line 278
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v7, "Bad value: "

    #@ff
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v5

    #@103
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v5

    #@107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v5

    #@10b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@10e
    goto :goto_0

    #@10f
    .line 258
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@110
    :try_start_6
    monitor-exit v6

    #@111
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@112
    .line 289
    :catchall_1
    move-exception v5

    #@113
    .line 290
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@116
    .line 289
    throw v5

    #@117
    .line 275
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_4
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    const-string/jumbo v7, "Unknown set option: "

    #@11f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v5

    #@123
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v5

    #@127
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v5

    #@12b
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@12e
    goto :goto_0

    #@12f
    .line 280
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    :try_start_8
    array-length v5, p3

    #@130
    if-ne v5, v8, :cond_6

    #@132
    const-string/jumbo v5, "reset"

    #@135
    const/4 v7, 0x0

    #@136
    aget-object v7, p3, v7

    #@138
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13b
    move-result v5

    #@13c
    if-eqz v5, :cond_6

    #@13e
    .line 281
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@140
    const/4 v7, 0x0

    #@141
    invoke-static {v5, v7}, Lcom/android/server/DockObserver;->-set0(Lcom/android/server/DockObserver;Z)Z

    #@144
    .line 282
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@146
    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    #@148
    invoke-static {v7}, Lcom/android/server/DockObserver;->-get0(Lcom/android/server/DockObserver;)I

    #@14b
    move-result v7

    #@14c
    invoke-static {v5, v7}, Lcom/android/server/DockObserver;->-wrap2(Lcom/android/server/DockObserver;I)V

    #@14f
    goto/16 :goto_0

    #@151
    .line 284
    :cond_6
    const-string/jumbo v5, "Dump current dock state, or:"

    #@154
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@157
    .line 285
    const-string/jumbo v5, "  set state <value>"

    #@15a
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15d
    .line 286
    const-string/jumbo v5, "  reset"

    #@160
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@163
    goto/16 :goto_0
.end method
