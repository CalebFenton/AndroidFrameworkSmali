.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1126
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    .line 1127
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1099
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@8
    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 1100
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@f
    .line 1126
    return-void
.end method

.method private connectToService()Z
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xa

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 1106
    new-instance v1, Landroid/content/Intent;

    #@6
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@9
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    #@b
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@e
    move-result-object v0

    #@f
    .line 1107
    .local v0, "service":Landroid/content/Intent;
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    #@12
    .line 1108
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@14
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@16
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@18
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    #@1b
    move-result-object v2

    #@1c
    .line 1109
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@1e
    .line 1108
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 1110
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    #@27
    .line 1111
    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@29
    .line 1112
    return v4

    #@2a
    .line 1114
    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    #@2d
    .line 1115
    return v5
.end method

.method private disconnectService()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1119
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    #@7
    .line 1120
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@9
    .line 1121
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@c
    .line 1122
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@e
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@10
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@12
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get1(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@19
    .line 1123
    const/16 v0, 0xa

    #@1b
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@1e
    .line 1118
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 56
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1139
    move-object/from16 v0, p1

    #@2
    iget v2, v0, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 1138
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 1141
    :pswitch_1
    move-object/from16 v0, p1

    #@a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    move-object/from16 v36, v0

    #@e
    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@10
    .line 1142
    .local v36, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v26

    #@18
    .line 1147
    .local v26, "idx":I
    move-object/from16 v0, p0

    #@1a
    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@1c
    if-nez v2, :cond_2

    #@1e
    .line 1150
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_1

    #@24
    .line 1151
    const-string/jumbo v2, "PackageManager"

    #@27
    const-string/jumbo v3, "Failed to bind to media container service"

    #@2a
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 1152
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    #@30
    .line 1153
    return-void

    #@31
    .line 1157
    :cond_1
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@35
    move/from16 v0, v26

    #@37
    move-object/from16 v1, v36

    #@39
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1160
    :cond_2
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@41
    move/from16 v0, v26

    #@43
    move-object/from16 v1, v36

    #@45
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@48
    .line 1163
    if-nez v26, :cond_0

    #@4a
    .line 1164
    move-object/from16 v0, p0

    #@4c
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4e
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@50
    const/4 v3, 0x3

    #@51
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@54
    goto :goto_0

    #@55
    .line 1171
    .end local v26    # "idx":I
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    #@57
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@59
    if-eqz v2, :cond_3

    #@5b
    .line 1172
    move-object/from16 v0, p0

    #@5d
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5f
    move-object/from16 v0, p1

    #@61
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@63
    check-cast v2, Lcom/android/internal/app/IMediaContainerService;

    #@65
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    #@68
    .line 1174
    :cond_3
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6c
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@6f
    move-result-object v2

    #@70
    if-nez v2, :cond_6

    #@72
    .line 1175
    move-object/from16 v0, p0

    #@74
    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@76
    if-nez v2, :cond_5

    #@78
    .line 1178
    const-string/jumbo v2, "PackageManager"

    #@7b
    const-string/jumbo v3, "Cannot bind to media container service"

    #@7e
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@81
    .line 1179
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@85
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@88
    move-result-object v38

    #@89
    .local v38, "params$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    #@8c
    move-result v2

    #@8d
    if-eqz v2, :cond_4

    #@8f
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v36

    #@93
    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@95
    .line 1181
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    #@98
    goto :goto_1

    #@99
    .line 1183
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_4
    move-object/from16 v0, p0

    #@9b
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@9d
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@a0
    goto/16 :goto_0

    #@a2
    .line 1185
    .end local v38    # "params$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v2, "PackageManager"

    #@a5
    const-string/jumbo v3, "Waiting to connect to media container service"

    #@a8
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    goto/16 :goto_0

    #@ad
    .line 1187
    :cond_6
    move-object/from16 v0, p0

    #@af
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@b1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b4
    move-result v2

    #@b5
    if-lez v2, :cond_9

    #@b7
    .line 1188
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@bb
    const/4 v3, 0x0

    #@bc
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v36

    #@c0
    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@c2
    .line 1189
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v36, :cond_0

    #@c4
    .line 1190
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    #@c7
    move-result v2

    #@c8
    if-eqz v2, :cond_0

    #@ca
    .line 1196
    move-object/from16 v0, p0

    #@cc
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d1
    move-result v2

    #@d2
    if-lez v2, :cond_7

    #@d4
    .line 1197
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@d8
    const/4 v3, 0x0

    #@d9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@dc
    .line 1199
    :cond_7
    move-object/from16 v0, p0

    #@de
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@e0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e3
    move-result v2

    #@e4
    if-nez v2, :cond_8

    #@e6
    .line 1200
    move-object/from16 v0, p0

    #@e8
    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@ea
    if-eqz v2, :cond_0

    #@ec
    .line 1203
    const/4 v2, 0x6

    #@ed
    move-object/from16 v0, p0

    #@ef
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@f2
    .line 1204
    const/4 v2, 0x6

    #@f3
    move-object/from16 v0, p0

    #@f5
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    #@f8
    move-result-object v48

    #@f9
    .line 1207
    .local v48, "ubmsg":Landroid/os/Message;
    const-wide/16 v2, 0x2710

    #@fb
    move-object/from16 v0, p0

    #@fd
    move-object/from16 v1, v48

    #@ff
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@102
    goto/16 :goto_0

    #@104
    .line 1215
    .end local v48    # "ubmsg":Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    #@106
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@108
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@10a
    const/4 v3, 0x3

    #@10b
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@10e
    goto/16 :goto_0

    #@110
    .line 1221
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_9
    const-string/jumbo v2, "PackageManager"

    #@113
    const-string/jumbo v3, "Empty queue"

    #@116
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@119
    goto/16 :goto_0

    #@11b
    .line 1227
    :pswitch_3
    move-object/from16 v0, p0

    #@11d
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@11f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@122
    move-result v2

    #@123
    if-lez v2, :cond_0

    #@125
    .line 1228
    move-object/from16 v0, p0

    #@127
    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@129
    if-eqz v2, :cond_a

    #@12b
    .line 1229
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    #@12e
    .line 1231
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    #@131
    move-result v2

    #@132
    if-nez v2, :cond_0

    #@134
    .line 1232
    const-string/jumbo v2, "PackageManager"

    #@137
    const-string/jumbo v3, "Failed to bind to media container service"

    #@13a
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13d
    .line 1233
    move-object/from16 v0, p0

    #@13f
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@141
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@144
    move-result-object v38

    #@145
    .restart local v38    # "params$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    #@148
    move-result v2

    #@149
    if-eqz v2, :cond_b

    #@14b
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14e
    move-result-object v36

    #@14f
    check-cast v36, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    #@151
    .line 1235
    .restart local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    #@154
    goto :goto_2

    #@155
    .line 1237
    .end local v36    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_b
    move-object/from16 v0, p0

    #@157
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@159
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@15c
    goto/16 :goto_0

    #@15e
    .line 1246
    .end local v38    # "params$iterator":Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    #@160
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@162
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@165
    move-result v2

    #@166
    if-nez v2, :cond_c

    #@168
    move-object/from16 v0, p0

    #@16a
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@16c
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@16e
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@171
    move-result v2

    #@172
    if-nez v2, :cond_c

    #@174
    .line 1247
    move-object/from16 v0, p0

    #@176
    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    #@178
    if-eqz v2, :cond_0

    #@17a
    .line 1250
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    #@17d
    goto/16 :goto_0

    #@17f
    .line 1252
    :cond_c
    move-object/from16 v0, p0

    #@181
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@183
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@186
    move-result v2

    #@187
    if-lez v2, :cond_0

    #@189
    .line 1256
    move-object/from16 v0, p0

    #@18b
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@18d
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@18f
    const/4 v3, 0x3

    #@190
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@193
    goto/16 :goto_0

    #@195
    .line 1263
    :pswitch_5
    move-object/from16 v0, p0

    #@197
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    #@199
    const/4 v3, 0x0

    #@19a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@19d
    goto/16 :goto_0

    #@19f
    .line 1269
    :pswitch_6
    const/16 v45, 0x0

    #@1a1
    .line 1271
    .local v45, "size":I
    const/4 v2, 0x0

    #@1a2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@1a5
    .line 1272
    move-object/from16 v0, p0

    #@1a7
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1a9
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@1ab
    monitor-enter v3

    #@1ac
    .line 1273
    :try_start_0
    move-object/from16 v0, p0

    #@1ae
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1b0
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b2
    if-nez v2, :cond_d

    #@1b4
    monitor-exit v3

    #@1b5
    .line 1274
    return-void

    #@1b6
    .line 1276
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    #@1b8
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1ba
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@1bc
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1bf
    move-result v45

    #@1c0
    .line 1277
    if-gtz v45, :cond_e

    #@1c2
    monitor-exit v3

    #@1c3
    .line 1279
    return-void

    #@1c4
    .line 1281
    :cond_e
    :try_start_2
    move/from16 v0, v45

    #@1c6
    new-array v0, v0, [Ljava/lang/String;

    #@1c8
    move-object/from16 v35, v0

    #@1ca
    .line 1282
    .local v35, "packages":[Ljava/lang/String;
    move/from16 v0, v45

    #@1cc
    new-array v0, v0, [Ljava/util/ArrayList;

    #@1ce
    move-object/from16 v19, v0

    #@1d0
    .line 1283
    .local v19, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v45

    #@1d2
    new-array v0, v0, [I

    #@1d4
    move-object/from16 v49, v0

    #@1d6
    .line 1284
    .local v49, "uids":[I
    const/16 v25, 0x0

    #@1d8
    .line 1286
    .local v25, "i":I
    const/16 v30, 0x0

    #@1da
    .local v30, "n":I
    :goto_3
    move-object/from16 v0, p0

    #@1dc
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1de
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@1e0
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    #@1e3
    move-result v2

    #@1e4
    move/from16 v0, v30

    #@1e6
    if-ge v0, v2, :cond_11

    #@1e8
    .line 1287
    move-object/from16 v0, p0

    #@1ea
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1ec
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@1ee
    move/from16 v0, v30

    #@1f0
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    #@1f3
    move-result v34

    #@1f4
    .line 1289
    .local v34, "packageUserId":I
    move-object/from16 v0, p0

    #@1f6
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1f8
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@1fa
    move/from16 v0, v34

    #@1fc
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    #@1ff
    move-result-object v2

    #@200
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@203
    move-result-object v2

    #@204
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@207
    move-result-object v28

    #@208
    .line 1291
    .local v28, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    #@20b
    move-result v2

    #@20c
    if-eqz v2, :cond_10

    #@20e
    move/from16 v0, v25

    #@210
    move/from16 v1, v45

    #@212
    if-ge v0, v1, :cond_10

    #@214
    .line 1292
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@217
    move-result-object v24

    #@218
    check-cast v24, Ljava/util/Map$Entry;

    #@21a
    .line 1293
    .local v24, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@21d
    move-result-object v2

    #@21e
    check-cast v2, Ljava/lang/String;

    #@220
    aput-object v2, v35, v25

    #@222
    .line 1294
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@225
    move-result-object v2

    #@226
    check-cast v2, Ljava/util/ArrayList;

    #@228
    aput-object v2, v19, v25

    #@22a
    .line 1295
    move-object/from16 v0, p0

    #@22c
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@22e
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@230
    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    #@232
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@235
    move-result-object v6

    #@236
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@239
    move-result-object v39

    #@23a
    check-cast v39, Lcom/android/server/pm/PackageSetting;

    #@23c
    .line 1296
    .local v39, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v39, :cond_f

    #@23e
    .line 1297
    move-object/from16 v0, v39

    #@240
    iget v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    #@242
    move/from16 v0, v34

    #@244
    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    #@247
    move-result v2

    #@248
    .line 1296
    :goto_5
    aput v2, v49, v25

    #@24a
    .line 1299
    add-int/lit8 v25, v25, 0x1

    #@24c
    goto :goto_4

    #@24d
    .line 1298
    :cond_f
    const/4 v2, -0x1

    #@24e
    goto :goto_5

    #@24f
    .line 1286
    .end local v24    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v39    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_10
    add-int/lit8 v30, v30, 0x1

    #@251
    goto :goto_3

    #@252
    .line 1302
    .end local v28    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v34    # "packageUserId":I
    :cond_11
    move/from16 v45, v25

    #@254
    .line 1303
    move-object/from16 v0, p0

    #@256
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@258
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    #@25a
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25d
    monitor-exit v3

    #@25e
    .line 1306
    const/16 v25, 0x0

    #@260
    :goto_6
    move/from16 v0, v25

    #@262
    move/from16 v1, v45

    #@264
    if-ge v0, v1, :cond_12

    #@266
    .line 1307
    move-object/from16 v0, p0

    #@268
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@26a
    aget-object v3, v35, v25

    #@26c
    aget-object v6, v19, v25

    #@26e
    aget v7, v49, v25

    #@270
    const/4 v9, 0x1

    #@271
    invoke-static {v2, v3, v9, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap33(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    #@274
    .line 1306
    add-int/lit8 v25, v25, 0x1

    #@276
    goto :goto_6

    #@277
    .line 1272
    .end local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v30    # "n":I
    .end local v35    # "packages":[Ljava/lang/String;
    .end local v49    # "uids":[I
    :catchall_0
    move-exception v2

    #@278
    monitor-exit v3

    #@279
    throw v2

    #@27a
    .line 1309
    .restart local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v30    # "n":I
    .restart local v35    # "packages":[Ljava/lang/String;
    .restart local v49    # "uids":[I
    :cond_12
    const/16 v2, 0xa

    #@27c
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@27f
    goto/16 :goto_0

    #@281
    .line 1313
    .end local v19    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v30    # "n":I
    .end local v35    # "packages":[Ljava/lang/String;
    .end local v45    # "size":I
    .end local v49    # "uids":[I
    :pswitch_7
    const/4 v2, 0x0

    #@282
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@285
    .line 1314
    move-object/from16 v0, p1

    #@287
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@289
    check-cast v4, Ljava/lang/String;

    #@28b
    .line 1315
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    #@28d
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@28f
    move/from16 v52, v0

    #@291
    .line 1316
    .local v52, "userId":I
    move-object/from16 v0, p1

    #@293
    iget v2, v0, Landroid/os/Message;->arg2:I

    #@295
    if-eqz v2, :cond_13

    #@297
    const/16 v16, 0x1

    #@299
    .line 1317
    .local v16, "andCode":Z
    :goto_7
    move-object/from16 v0, p0

    #@29b
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@29d
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@29f
    monitor-enter v3

    #@2a0
    .line 1318
    const/4 v2, -0x1

    #@2a1
    move/from16 v0, v52

    #@2a3
    if-ne v0, v2, :cond_14

    #@2a5
    .line 1319
    :try_start_3
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@2a7
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@2aa
    move-result-object v54

    #@2ab
    .line 1320
    .local v54, "users":[I
    const/4 v2, 0x0

    #@2ac
    move-object/from16 v0, v54

    #@2ae
    array-length v6, v0

    #@2af
    :goto_8
    if-ge v2, v6, :cond_15

    #@2b1
    aget v51, v54, v2

    #@2b3
    .line 1321
    .local v51, "user":I
    move-object/from16 v0, p0

    #@2b5
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2b7
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@2b9
    .line 1322
    new-instance v9, Landroid/content/pm/PackageCleanItem;

    #@2bb
    move/from16 v0, v51

    #@2bd
    move/from16 v1, v16

    #@2bf
    invoke-direct {v9, v0, v4, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    #@2c2
    .line 1321
    invoke-virtual {v7, v9}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    #@2c5
    .line 1320
    add-int/lit8 v2, v2, 0x1

    #@2c7
    goto :goto_8

    #@2c8
    .line 1316
    .end local v16    # "andCode":Z
    .end local v51    # "user":I
    .end local v54    # "users":[I
    :cond_13
    const/16 v16, 0x0

    #@2ca
    .restart local v16    # "andCode":Z
    goto :goto_7

    #@2cb
    .line 1325
    :cond_14
    move-object/from16 v0, p0

    #@2cd
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2cf
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@2d1
    .line 1326
    new-instance v6, Landroid/content/pm/PackageCleanItem;

    #@2d3
    move/from16 v0, v52

    #@2d5
    move/from16 v1, v16

    #@2d7
    invoke-direct {v6, v0, v4, v1}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    #@2da
    .line 1325
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2dd
    :cond_15
    monitor-exit v3

    #@2de
    .line 1329
    const/16 v2, 0xa

    #@2e0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@2e3
    .line 1330
    move-object/from16 v0, p0

    #@2e5
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2e7
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    #@2ea
    goto/16 :goto_0

    #@2ec
    .line 1317
    :catchall_1
    move-exception v2

    #@2ed
    monitor-exit v3

    #@2ee
    throw v2

    #@2ef
    .line 1334
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v16    # "andCode":Z
    .end local v52    # "userId":I
    :pswitch_8
    move-object/from16 v0, p0

    #@2f1
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2f3
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@2f5
    move-object/from16 v0, p1

    #@2f7
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@2f9
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2fc
    move-result-object v20

    #@2fd
    check-cast v20, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    #@2ff
    .line 1335
    .local v20, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    #@301
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@303
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    #@305
    move-object/from16 v0, p1

    #@307
    iget v3, v0, Landroid/os/Message;->arg1:I

    #@309
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    #@30c
    .line 1336
    const/16 v21, 0x0

    #@30e
    .line 1338
    .local v21, "deleteOld":Z
    if-eqz v20, :cond_26

    #@310
    .line 1339
    move-object/from16 v0, v20

    #@312
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@314
    move-object/from16 v17, v0

    #@316
    .line 1340
    .local v17, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v20

    #@318
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    #@31a
    move-object/from16 v41, v0

    #@31c
    .line 1342
    .local v41, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v41

    #@31e
    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@320
    const/4 v3, 0x1

    #@321
    if-ne v2, v3, :cond_24

    #@323
    .line 1343
    move-object/from16 v0, v41

    #@325
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@327
    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@329
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@32b
    .line 1344
    .restart local v4    # "packageName":Ljava/lang/String;
    move-object/from16 v0, v41

    #@32d
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@32f
    const/4 v3, 0x0

    #@330
    const/4 v6, 0x1

    #@331
    const/4 v7, 0x0

    #@332
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZZ)V

    #@335
    .line 1345
    new-instance v5, Landroid/os/Bundle;

    #@337
    const/4 v2, 0x1

    #@338
    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(I)V

    #@33b
    .line 1346
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.UID"

    #@33e
    move-object/from16 v0, v41

    #@340
    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    #@342
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@345
    .line 1350
    move-object/from16 v0, v17

    #@347
    iget v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    #@349
    and-int/lit16 v2, v2, 0x100

    #@34b
    if-eqz v2, :cond_16

    #@34d
    .line 1352
    move-object/from16 v0, p0

    #@34f
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@351
    move-object/from16 v0, v41

    #@353
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@355
    move-object/from16 v0, v17

    #@357
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    #@359
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    #@35c
    move-result v6

    #@35d
    .line 1353
    move-object/from16 v0, v17

    #@35f
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    #@361
    .line 1352
    invoke-static {v2, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap24(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;)V

    #@364
    .line 1360
    :cond_16
    const/4 v2, 0x0

    #@365
    new-array v15, v2, [I

    #@367
    .line 1361
    .local v15, "updateUsers":[I
    move-object/from16 v0, v41

    #@369
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    #@36b
    if-eqz v2, :cond_17

    #@36d
    move-object/from16 v0, v41

    #@36f
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    #@371
    array-length v2, v2

    #@372
    if-nez v2, :cond_1d

    #@374
    .line 1362
    :cond_17
    move-object/from16 v0, v41

    #@376
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    #@378
    .line 1389
    .local v8, "firstUsers":[I
    :cond_18
    move-object/from16 v0, p0

    #@37a
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@37c
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    #@37f
    .line 1390
    const/4 v6, 0x0

    #@380
    const/4 v7, 0x0

    #@381
    .line 1389
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@384
    .line 1391
    move-object/from16 v0, v41

    #@386
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@388
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    #@38a
    if-eqz v2, :cond_21

    #@38c
    const/16 v50, 0x1

    #@38e
    .line 1392
    .local v50, "update":Z
    :goto_9
    if-eqz v50, :cond_19

    #@390
    .line 1393
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    #@393
    const/4 v3, 0x1

    #@394
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@397
    .line 1395
    :cond_19
    move-object/from16 v0, p0

    #@399
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@39b
    const-string/jumbo v10, "android.intent.action.PACKAGE_ADDED"

    #@39e
    .line 1396
    const/4 v13, 0x0

    #@39f
    const/4 v14, 0x0

    #@3a0
    move-object v11, v4

    #@3a1
    move-object v12, v5

    #@3a2
    .line 1395
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@3a5
    .line 1397
    if-eqz v50, :cond_1b

    #@3a7
    .line 1398
    move-object/from16 v0, p0

    #@3a9
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3ab
    const-string/jumbo v10, "android.intent.action.PACKAGE_REPLACED"

    #@3ae
    .line 1399
    const/4 v13, 0x0

    #@3af
    const/4 v14, 0x0

    #@3b0
    move-object v11, v4

    #@3b1
    move-object v12, v5

    #@3b2
    .line 1398
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@3b5
    .line 1400
    move-object/from16 v0, p0

    #@3b7
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3b9
    const-string/jumbo v10, "android.intent.action.MY_PACKAGE_REPLACED"

    #@3bc
    .line 1401
    const/4 v11, 0x0

    #@3bd
    const/4 v12, 0x0

    #@3be
    const/4 v14, 0x0

    #@3bf
    move-object v13, v4

    #@3c0
    .line 1400
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    #@3c3
    .line 1404
    move-object/from16 v0, v41

    #@3c5
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3c7
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    #@3ca
    move-result v2

    #@3cb
    if-nez v2, :cond_1a

    #@3cd
    move-object/from16 v0, v41

    #@3cf
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3d1
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Landroid/content/pm/PackageParser$Package;)Z

    #@3d4
    move-result v2

    #@3d5
    if-eqz v2, :cond_1b

    #@3d7
    .line 1409
    :cond_1a
    const/4 v2, 0x1

    #@3d8
    new-array v13, v2, [I

    #@3da
    move-object/from16 v0, v41

    #@3dc
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3de
    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3e0
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@3e2
    const/4 v3, 0x0

    #@3e3
    aput v2, v13, v3

    #@3e5
    .line 1410
    .local v13, "uidArray":[I
    new-instance v12, Ljava/util/ArrayList;

    #@3e7
    const/4 v2, 0x1

    #@3e8
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@3eb
    .line 1411
    .local v12, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3ee
    .line 1412
    move-object/from16 v0, p0

    #@3f0
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@3f2
    const/4 v10, 0x1

    #@3f3
    const/4 v11, 0x1

    #@3f4
    .line 1413
    const/4 v14, 0x0

    #@3f5
    .line 1412
    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->-wrap34(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    #@3f8
    .line 1416
    .end local v12    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "uidArray":[I
    :cond_1b
    move-object/from16 v0, v41

    #@3fa
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@3fc
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@3fe
    if-eqz v2, :cond_1c

    #@400
    .line 1418
    const/16 v21, 0x1

    #@402
    .line 1423
    :cond_1c
    array-length v2, v8

    #@403
    if-lez v2, :cond_23

    #@405
    .line 1426
    move-object/from16 v0, p0

    #@407
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@409
    const/4 v3, 0x0

    #@40a
    aget v3, v8, v3

    #@40c
    invoke-static {v2, v4, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    #@40f
    move-result v2

    #@410
    if-eqz v2, :cond_23

    #@412
    .line 1427
    move-object/from16 v0, p0

    #@414
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@416
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@418
    monitor-enter v3

    #@419
    .line 1428
    const/4 v2, 0x0

    #@41a
    :try_start_4
    array-length v6, v8

    #@41b
    :goto_a
    if-ge v2, v6, :cond_22

    #@41d
    aget v52, v8, v2

    #@41f
    .line 1429
    .restart local v52    # "userId":I
    move-object/from16 v0, p0

    #@421
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@423
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@425
    const/4 v9, 0x0

    #@426
    move/from16 v0, v52

    #@428
    invoke-virtual {v7, v9, v0}, Lcom/android/server/pm/Settings;->setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@42b
    .line 1428
    add-int/lit8 v2, v2, 0x1

    #@42d
    goto :goto_a

    #@42e
    .line 1364
    .end local v8    # "firstUsers":[I
    .end local v50    # "update":Z
    .end local v52    # "userId":I
    :cond_1d
    const/4 v2, 0x0

    #@42f
    new-array v8, v2, [I

    #@431
    .line 1365
    .restart local v8    # "firstUsers":[I
    const/16 v25, 0x0

    #@433
    .restart local v25    # "i":I
    :goto_b
    move-object/from16 v0, v41

    #@435
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    #@437
    array-length v2, v2

    #@438
    move/from16 v0, v25

    #@43a
    if-ge v0, v2, :cond_18

    #@43c
    .line 1366
    move-object/from16 v0, v41

    #@43e
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    #@440
    aget v51, v2, v25

    #@442
    .line 1367
    .restart local v51    # "user":I
    const/16 v27, 0x1

    #@444
    .line 1368
    .local v27, "isNew":Z
    const/16 v29, 0x0

    #@446
    .local v29, "j":I
    :goto_c
    move-object/from16 v0, v41

    #@448
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    #@44a
    array-length v2, v2

    #@44b
    move/from16 v0, v29

    #@44d
    if-ge v0, v2, :cond_1e

    #@44f
    .line 1369
    move-object/from16 v0, v41

    #@451
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    #@453
    aget v2, v2, v29

    #@455
    move/from16 v0, v51

    #@457
    if-ne v2, v0, :cond_1f

    #@459
    .line 1370
    const/16 v27, 0x0

    #@45b
    .line 1374
    :cond_1e
    if-eqz v27, :cond_20

    #@45d
    .line 1375
    array-length v2, v8

    #@45e
    add-int/lit8 v2, v2, 0x1

    #@460
    new-array v0, v2, [I

    #@462
    move-object/from16 v31, v0

    #@464
    .line 1377
    .local v31, "newFirst":[I
    array-length v2, v8

    #@465
    .line 1376
    const/4 v3, 0x0

    #@466
    const/4 v6, 0x0

    #@467
    move-object/from16 v0, v31

    #@469
    invoke-static {v8, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@46c
    .line 1378
    array-length v2, v8

    #@46d
    aput v51, v31, v2

    #@46f
    .line 1379
    move-object/from16 v8, v31

    #@471
    .line 1365
    .end local v31    # "newFirst":[I
    :goto_d
    add-int/lit8 v25, v25, 0x1

    #@473
    goto :goto_b

    #@474
    .line 1368
    :cond_1f
    add-int/lit8 v29, v29, 0x1

    #@476
    goto :goto_c

    #@477
    .line 1381
    :cond_20
    array-length v2, v15

    #@478
    add-int/lit8 v2, v2, 0x1

    #@47a
    new-array v0, v2, [I

    #@47c
    move-object/from16 v32, v0

    #@47e
    .line 1383
    .local v32, "newUpdate":[I
    array-length v2, v15

    #@47f
    .line 1382
    const/4 v3, 0x0

    #@480
    const/4 v6, 0x0

    #@481
    move-object/from16 v0, v32

    #@483
    invoke-static {v15, v3, v0, v6, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@486
    .line 1384
    array-length v2, v15

    #@487
    aput v51, v32, v2

    #@489
    .line 1385
    move-object/from16 v15, v32

    #@48b
    goto :goto_d

    #@48c
    .line 1391
    .end local v25    # "i":I
    .end local v27    # "isNew":Z
    .end local v29    # "j":I
    .end local v32    # "newUpdate":[I
    .end local v51    # "user":I
    :cond_21
    const/16 v50, 0x0

    #@48e
    .restart local v50    # "update":Z
    goto/16 :goto_9

    #@490
    :cond_22
    monitor-exit v3

    #@491
    .line 1436
    :cond_23
    move-object/from16 v0, p0

    #@493
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@495
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap13(Lcom/android/server/pm/PackageManagerService;)I

    #@498
    move-result v2

    #@499
    .line 1435
    const/16 v3, 0xc26

    #@49b
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    #@49e
    .line 1439
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v8    # "firstUsers":[I
    .end local v15    # "updateUsers":[I
    .end local v50    # "update":Z
    :cond_24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@4a1
    move-result-object v2

    #@4a2
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    #@4a5
    .line 1441
    if-eqz v21, :cond_25

    #@4a7
    .line 1442
    move-object/from16 v0, p0

    #@4a9
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4ab
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    #@4ad
    monitor-enter v3

    #@4ae
    .line 1443
    :try_start_5
    move-object/from16 v0, v41

    #@4b0
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    #@4b2
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@4b4
    const/4 v6, 0x1

    #@4b5
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@4b8
    monitor-exit v3

    #@4b9
    .line 1446
    :cond_25
    move-object/from16 v0, v17

    #@4bb
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@4bd
    if-eqz v2, :cond_0

    #@4bf
    .line 1448
    :try_start_6
    move-object/from16 v0, p0

    #@4c1
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@4c3
    move-object/from16 v0, v41

    #@4c5
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Landroid/os/Bundle;

    #@4c8
    move-result-object v5

    #@4c9
    .line 1449
    .restart local v5    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v17

    #@4cb
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    #@4cd
    move-object/from16 v0, v41

    #@4cf
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    #@4d1
    move-object/from16 v0, v41

    #@4d3
    iget v6, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    #@4d5
    .line 1450
    move-object/from16 v0, v41

    #@4d7
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    #@4d9
    .line 1449
    invoke-interface {v2, v3, v6, v7, v5}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@4dc
    goto/16 :goto_0

    #@4de
    .line 1451
    .end local v5    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v23

    #@4df
    .line 1452
    .local v23, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    #@4e2
    const-string/jumbo v3, "Observer no longer exists."

    #@4e5
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4e8
    goto/16 :goto_0

    #@4ea
    .line 1427
    .end local v23    # "e":Landroid/os/RemoteException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v8    # "firstUsers":[I
    .restart local v15    # "updateUsers":[I
    .restart local v50    # "update":Z
    :catchall_2
    move-exception v2

    #@4eb
    monitor-exit v3

    #@4ec
    throw v2

    #@4ed
    .line 1442
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v8    # "firstUsers":[I
    .end local v15    # "updateUsers":[I
    .end local v50    # "update":Z
    :catchall_3
    move-exception v2

    #@4ee
    monitor-exit v3

    #@4ef
    throw v2

    #@4f0
    .line 1456
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v41    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_26
    const-string/jumbo v2, "PackageManager"

    #@4f3
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4f8
    const-string/jumbo v6, "Bogus post-install token "

    #@4fb
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fe
    move-result-object v3

    #@4ff
    move-object/from16 v0, p1

    #@501
    iget v6, v0, Landroid/os/Message;->arg1:I

    #@503
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@506
    move-result-object v3

    #@507
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50a
    move-result-object v3

    #@50b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50e
    goto/16 :goto_0

    #@510
    .line 1461
    .end local v20    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v21    # "deleteOld":Z
    :pswitch_9
    move-object/from16 v0, p1

    #@512
    iget v2, v0, Landroid/os/Message;->arg1:I

    #@514
    const/4 v3, 0x1

    #@515
    if-ne v2, v3, :cond_29

    #@517
    const/16 v40, 0x1

    #@519
    .line 1462
    .local v40, "reportStatus":Z
    :goto_e
    move-object/from16 v0, p1

    #@51b
    iget v2, v0, Landroid/os/Message;->arg2:I

    #@51d
    const/4 v3, 0x1

    #@51e
    if-ne v2, v3, :cond_2a

    #@520
    const/16 v22, 0x1

    #@522
    .line 1464
    .local v22, "doGc":Z
    :goto_f
    if-eqz v22, :cond_27

    #@524
    .line 1466
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@527
    move-result-object v2

    #@528
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    #@52b
    .line 1468
    :cond_27
    move-object/from16 v0, p1

    #@52d
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@52f
    if-eqz v2, :cond_28

    #@531
    .line 1470
    move-object/from16 v0, p1

    #@533
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@535
    move-object/from16 v18, v0

    #@537
    check-cast v18, Ljava/util/Set;

    #@539
    .line 1473
    .local v18, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    #@53b
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@53d
    move-object/from16 v0, v18

    #@53f
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap36(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    #@542
    .line 1475
    .end local v18    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_28
    if-eqz v40, :cond_0

    #@544
    .line 1478
    :try_start_7
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    #@547
    move-result-object v2

    #@548
    invoke-interface {v2}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    #@54b
    goto/16 :goto_0

    #@54d
    .line 1479
    :catch_1
    move-exception v23

    #@54e
    .line 1480
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    #@551
    const-string/jumbo v3, "MountService not running?"

    #@554
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@557
    goto/16 :goto_0

    #@559
    .line 1461
    .end local v22    # "doGc":Z
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v40    # "reportStatus":Z
    :cond_29
    const/16 v40, 0x0

    #@55b
    .restart local v40    # "reportStatus":Z
    goto :goto_e

    #@55c
    .line 1462
    :cond_2a
    const/16 v22, 0x0

    #@55e
    .restart local v22    # "doGc":Z
    goto :goto_f

    #@55f
    .line 1485
    .end local v22    # "doGc":Z
    .end local v40    # "reportStatus":Z
    :pswitch_a
    const/4 v2, 0x0

    #@560
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@563
    .line 1486
    move-object/from16 v0, p0

    #@565
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@567
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@569
    monitor-enter v3

    #@56a
    .line 1487
    const/16 v2, 0xd

    #@56c
    :try_start_8
    move-object/from16 v0, p0

    #@56e
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@571
    .line 1488
    const/16 v2, 0xe

    #@573
    move-object/from16 v0, p0

    #@575
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@578
    .line 1489
    move-object/from16 v0, p0

    #@57a
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@57c
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@57e
    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    #@581
    .line 1490
    move-object/from16 v0, p0

    #@583
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@585
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    #@588
    move-result-object v2

    #@589
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    #@58c
    monitor-exit v3

    #@58d
    .line 1492
    const/16 v2, 0xa

    #@58f
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@592
    goto/16 :goto_0

    #@594
    .line 1486
    :catchall_4
    move-exception v2

    #@595
    monitor-exit v3

    #@596
    throw v2

    #@597
    .line 1495
    :pswitch_b
    const/4 v2, 0x0

    #@598
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@59b
    .line 1496
    move-object/from16 v0, p0

    #@59d
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@59f
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@5a1
    monitor-enter v3

    #@5a2
    .line 1497
    const/16 v2, 0xe

    #@5a4
    :try_start_9
    move-object/from16 v0, p0

    #@5a6
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    #@5a9
    .line 1498
    move-object/from16 v0, p0

    #@5ab
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5ad
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    #@5b0
    move-result-object v2

    #@5b1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5b4
    move-result-object v53

    #@5b5
    .local v53, "userId$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    #@5b8
    move-result v2

    #@5b9
    if-eqz v2, :cond_2b

    #@5bb
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5be
    move-result-object v2

    #@5bf
    check-cast v2, Ljava/lang/Integer;

    #@5c1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@5c4
    move-result v52

    #@5c5
    .line 1499
    .restart local v52    # "userId":I
    move-object/from16 v0, p0

    #@5c7
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5c9
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@5cb
    move/from16 v0, v52

    #@5cd
    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    #@5d0
    goto :goto_10

    #@5d1
    .line 1496
    .end local v52    # "userId":I
    .end local v53    # "userId$iterator":Ljava/util/Iterator;
    :catchall_5
    move-exception v2

    #@5d2
    monitor-exit v3

    #@5d3
    throw v2

    #@5d4
    .line 1501
    .restart local v53    # "userId$iterator":Ljava/util/Iterator;
    :cond_2b
    :try_start_a
    move-object/from16 v0, p0

    #@5d6
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5d8
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    #@5db
    move-result-object v2

    #@5dc
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    #@5df
    monitor-exit v3

    #@5e0
    .line 1503
    const/16 v2, 0xa

    #@5e2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@5e5
    goto/16 :goto_0

    #@5e7
    .line 1506
    .end local v53    # "userId$iterator":Ljava/util/Iterator;
    :pswitch_c
    move-object/from16 v0, p1

    #@5e9
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@5eb
    move/from16 v55, v0

    #@5ed
    .line 1507
    .local v55, "verificationId":I
    move-object/from16 v0, p0

    #@5ef
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@5f1
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@5f3
    move/from16 v0, v55

    #@5f5
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5f8
    move-result-object v47

    #@5f9
    check-cast v47, Lcom/android/server/pm/PackageVerificationState;

    #@5fb
    .line 1509
    .local v47, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v47, :cond_0

    #@5fd
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    #@600
    move-result v2

    #@601
    if-nez v2, :cond_0

    #@603
    .line 1510
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@606
    move-result-object v17

    #@607
    .line 1511
    .restart local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v17

    #@609
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@60b
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    #@60d
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@610
    move-result-object v33

    #@611
    .line 1513
    .local v33, "originUri":Landroid/net/Uri;
    const-string/jumbo v2, "PackageManager"

    #@614
    new-instance v3, Ljava/lang/StringBuilder;

    #@616
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@619
    const-string/jumbo v6, "Verification timed out for "

    #@61c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61f
    move-result-object v3

    #@620
    move-object/from16 v0, v33

    #@622
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@625
    move-result-object v3

    #@626
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@629
    move-result-object v3

    #@62a
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62d
    .line 1514
    move-object/from16 v0, p0

    #@62f
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@631
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@633
    move/from16 v0, v55

    #@635
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    #@638
    .line 1516
    const/16 v44, -0x16

    #@63a
    .line 1518
    .local v44, "ret":I
    move-object/from16 v0, p0

    #@63c
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@63e
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-wrap12(Lcom/android/server/pm/PackageManagerService;)I

    #@641
    move-result v2

    #@642
    const/4 v3, 0x1

    #@643
    if-ne v2, v3, :cond_2c

    #@645
    .line 1519
    const-string/jumbo v2, "PackageManager"

    #@648
    new-instance v3, Ljava/lang/StringBuilder;

    #@64a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64d
    const-string/jumbo v6, "Continuing with installation of "

    #@650
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@653
    move-result-object v3

    #@654
    move-object/from16 v0, v33

    #@656
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@659
    move-result-object v3

    #@65a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65d
    move-result-object v3

    #@65e
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@661
    .line 1520
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@664
    move-result v2

    #@665
    .line 1521
    const/4 v3, 0x2

    #@666
    .line 1520
    move-object/from16 v0, v47

    #@668
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    #@66b
    .line 1522
    move-object/from16 v0, p0

    #@66d
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@66f
    .line 1524
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@672
    move-result-object v3

    #@673
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    #@676
    move-result-object v3

    #@677
    .line 1523
    const/4 v6, 0x1

    #@678
    .line 1522
    move/from16 v0, v55

    #@67a
    move-object/from16 v1, v33

    #@67c
    invoke-static {v2, v0, v1, v6, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    #@67f
    .line 1526
    :try_start_b
    move-object/from16 v0, p0

    #@681
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@683
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@686
    move-result-object v2

    #@687
    const/4 v3, 0x1

    #@688
    move-object/from16 v0, v17

    #@68a
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    #@68d
    move-result v44

    #@68e
    .line 1536
    :goto_11
    move-object/from16 v0, p0

    #@690
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@692
    move-object/from16 v0, v17

    #@694
    move/from16 v1, v44

    #@696
    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    #@699
    .line 1537
    move-object/from16 v0, p0

    #@69b
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@69d
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@69f
    const/4 v3, 0x6

    #@6a0
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@6a3
    goto/16 :goto_0

    #@6a5
    .line 1527
    :catch_2
    move-exception v23

    #@6a6
    .line 1528
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    #@6a9
    const-string/jumbo v3, "Could not contact the ContainerService"

    #@6ac
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6af
    goto :goto_11

    #@6b0
    .line 1531
    .end local v23    # "e":Landroid/os/RemoteException;
    :cond_2c
    move-object/from16 v0, p0

    #@6b2
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6b4
    .line 1533
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@6b7
    move-result-object v3

    #@6b8
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    #@6bb
    move-result-object v3

    #@6bc
    .line 1532
    const/4 v6, -0x1

    #@6bd
    .line 1531
    move/from16 v0, v55

    #@6bf
    move-object/from16 v1, v33

    #@6c1
    invoke-static {v2, v0, v1, v6, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    #@6c4
    goto :goto_11

    #@6c5
    .line 1542
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v33    # "originUri":Landroid/net/Uri;
    .end local v44    # "ret":I
    .end local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v55    # "verificationId":I
    :pswitch_d
    move-object/from16 v0, p1

    #@6c7
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@6c9
    move/from16 v55, v0

    #@6cb
    .line 1544
    .restart local v55    # "verificationId":I
    move-object/from16 v0, p0

    #@6cd
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@6cf
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@6d1
    move/from16 v0, v55

    #@6d3
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6d6
    move-result-object v47

    #@6d7
    check-cast v47, Lcom/android/server/pm/PackageVerificationState;

    #@6d9
    .line 1545
    .restart local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v47, :cond_2d

    #@6db
    .line 1546
    const-string/jumbo v2, "PackageManager"

    #@6de
    new-instance v3, Ljava/lang/StringBuilder;

    #@6e0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e3
    const-string/jumbo v6, "Invalid verification token "

    #@6e6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e9
    move-result-object v3

    #@6ea
    move/from16 v0, v55

    #@6ec
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6ef
    move-result-object v3

    #@6f0
    const-string/jumbo v6, " received"

    #@6f3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f6
    move-result-object v3

    #@6f7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6fa
    move-result-object v3

    #@6fb
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6fe
    goto/16 :goto_0

    #@700
    .line 1550
    :cond_2d
    move-object/from16 v0, p1

    #@702
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@704
    move-object/from16 v43, v0

    #@706
    check-cast v43, Lcom/android/server/pm/PackageVerificationResponse;

    #@708
    .line 1552
    .local v43, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v43

    #@70a
    iget v2, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    #@70c
    move-object/from16 v0, v43

    #@70e
    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    #@710
    move-object/from16 v0, v47

    #@712
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    #@715
    .line 1554
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    #@718
    move-result v2

    #@719
    if-eqz v2, :cond_0

    #@71b
    .line 1555
    move-object/from16 v0, p0

    #@71d
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@71f
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    #@721
    move/from16 v0, v55

    #@723
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    #@726
    .line 1557
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@729
    move-result-object v17

    #@72a
    .line 1558
    .restart local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v17

    #@72c
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    #@72e
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    #@730
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@733
    move-result-object v33

    #@734
    .line 1561
    .restart local v33    # "originUri":Landroid/net/Uri;
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    #@737
    move-result v2

    #@738
    if-eqz v2, :cond_2e

    #@73a
    .line 1562
    const/16 v44, -0x6e

    #@73c
    .line 1563
    .restart local v44    # "ret":I
    move-object/from16 v0, p0

    #@73e
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@740
    .line 1564
    move-object/from16 v0, v43

    #@742
    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    #@744
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    #@747
    move-result-object v6

    #@748
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    #@74b
    move-result-object v6

    #@74c
    .line 1563
    move/from16 v0, v55

    #@74e
    move-object/from16 v1, v33

    #@750
    invoke-static {v2, v0, v1, v3, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    #@753
    .line 1566
    :try_start_c
    move-object/from16 v0, p0

    #@755
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@757
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get0(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    #@75a
    move-result-object v2

    #@75b
    const/4 v3, 0x1

    #@75c
    move-object/from16 v0, v17

    #@75e
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    #@761
    move-result v44

    #@762
    .line 1574
    :goto_12
    move-object/from16 v0, p0

    #@764
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@766
    move-object/from16 v0, v17

    #@768
    move/from16 v1, v44

    #@76a
    invoke-static {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    #@76d
    .line 1576
    move-object/from16 v0, p0

    #@76f
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@771
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    #@773
    const/4 v3, 0x6

    #@774
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    #@777
    goto/16 :goto_0

    #@779
    .line 1567
    :catch_3
    move-exception v23

    #@77a
    .line 1568
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageManager"

    #@77d
    const-string/jumbo v3, "Could not contact the ContainerService"

    #@780
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@783
    goto :goto_12

    #@784
    .line 1571
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v44    # "ret":I
    :cond_2e
    const/16 v44, -0x16

    #@786
    .restart local v44    # "ret":I
    goto :goto_12

    #@787
    .line 1582
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v33    # "originUri":Landroid/net/Uri;
    .end local v43    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    .end local v44    # "ret":I
    .end local v47    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v55    # "verificationId":I
    :pswitch_e
    move-object/from16 v0, p1

    #@789
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78b
    move-object/from16 v37, v0

    #@78d
    check-cast v37, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    #@78f
    .line 1583
    .local v37, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    move-object/from16 v0, p0

    #@791
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@793
    move-object/from16 v0, v37

    #@795
    iget v3, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    #@797
    move-object/from16 v0, v37

    #@799
    iget v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    #@79b
    .line 1584
    move-object/from16 v0, v37

    #@79d
    iget-boolean v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    #@79f
    move-object/from16 v0, v37

    #@7a1
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    #@7a3
    .line 1583
    invoke-static {v2, v3, v6, v7, v9}, Lcom/android/server/pm/PackageManagerService;->-wrap39(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    #@7a6
    goto/16 :goto_0

    #@7a8
    .line 1588
    .end local v37    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_f
    move-object/from16 v0, p1

    #@7aa
    iget v0, v0, Landroid/os/Message;->arg1:I

    #@7ac
    move/from16 v55, v0

    #@7ae
    .line 1590
    .restart local v55    # "verificationId":I
    move-object/from16 v0, p0

    #@7b0
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@7b2
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    #@7b4
    move/from16 v0, v55

    #@7b6
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7b9
    move-result-object v46

    #@7ba
    check-cast v46, Lcom/android/server/pm/IntentFilterVerificationState;

    #@7bc
    .line 1592
    .local v46, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v46, :cond_2f

    #@7be
    .line 1593
    const-string/jumbo v2, "PackageManager"

    #@7c1
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7c6
    const-string/jumbo v6, "Invalid IntentFilter verification token "

    #@7c9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cc
    move-result-object v3

    #@7cd
    move/from16 v0, v55

    #@7cf
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d2
    move-result-object v3

    #@7d3
    .line 1594
    const-string/jumbo v6, " received"

    #@7d6
    .line 1593
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d9
    move-result-object v3

    #@7da
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7dd
    move-result-object v3

    #@7de
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7e1
    goto/16 :goto_0

    #@7e3
    .line 1598
    :cond_2f
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    #@7e6
    move-result v52

    #@7e7
    .line 1605
    .restart local v52    # "userId":I
    move-object/from16 v0, p1

    #@7e9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7eb
    move-object/from16 v42, v0

    #@7ed
    check-cast v42, Lcom/android/server/pm/IntentFilterVerificationResponse;

    #@7ef
    .line 1607
    .local v42, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    move-object/from16 v0, v42

    #@7f1
    iget v2, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    #@7f3
    move-object/from16 v0, v42

    #@7f5
    iget v3, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    #@7f7
    move-object/from16 v0, v46

    #@7f9
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    #@7fc
    .line 1615
    move-object/from16 v0, v42

    #@7fe
    iget v2, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    #@800
    const/4 v3, -0x1

    #@801
    if-ne v2, v3, :cond_30

    #@803
    .line 1620
    :cond_30
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    #@806
    move-result v2

    #@807
    if-eqz v2, :cond_0

    #@809
    .line 1621
    move-object/from16 v0, p0

    #@80b
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@80d
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    #@810
    move-result-object v2

    #@811
    move/from16 v0, v55

    #@813
    invoke-interface {v2, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    #@816
    goto/16 :goto_0

    #@818
    .line 1139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/16 v1, 0xa

    #@2
    .line 1132
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 1134
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@8
    .line 1130
    return-void

    #@9
    .line 1133
    :catchall_0
    move-exception v0

    #@a
    .line 1134
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@d
    .line 1133
    throw v0
.end method
