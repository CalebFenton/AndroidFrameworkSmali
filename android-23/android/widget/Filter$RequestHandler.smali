.class Landroid/widget/Filter$RequestHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/widget/Filter;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Filter;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 216
    iput-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@2
    .line 217
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 216
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 228
    iget v4, p1, Landroid/os/Message;->what:I

    #@2
    .line 230
    .local v4, "what":I
    sparse-switch v4, :sswitch_data_0

    #@5
    .line 227
    :goto_0
    return-void

    #@6
    .line 232
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/widget/Filter$RequestArguments;

    #@a
    .line 234
    .local v0, "args":Landroid/widget/Filter$RequestArguments;
    :try_start_0
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@c
    iget-object v6, v0, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    #@e
    invoke-virtual {v5, v6}, Landroid/widget/Filter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    #@11
    move-result-object v5

    #@12
    iput-object v5, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 239
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@16
    invoke-static {v5}, Landroid/widget/Filter;->-get1(Landroid/widget/Filter;)Landroid/os/Handler;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@1d
    move-result-object v3

    #@1e
    .line 240
    .local v3, "message":Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20
    .line 241
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@23
    .line 244
    :goto_1
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@25
    invoke-static {v5}, Landroid/widget/Filter;->-get0(Landroid/widget/Filter;)Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    monitor-enter v6

    #@2a
    .line 245
    :try_start_1
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@2c
    invoke-static {v5}, Landroid/widget/Filter;->-get2(Landroid/widget/Filter;)Landroid/os/Handler;

    #@2f
    move-result-object v5

    #@30
    if-eqz v5, :cond_0

    #@32
    .line 246
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@34
    invoke-static {v5}, Landroid/widget/Filter;->-get2(Landroid/widget/Filter;)Landroid/os/Handler;

    #@37
    move-result-object v5

    #@38
    const v7, -0x21524111

    #@3b
    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@3e
    move-result-object v2

    #@3f
    .line 247
    .local v2, "finishMessage":Landroid/os/Message;
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@41
    invoke-static {v5}, Landroid/widget/Filter;->-get2(Landroid/widget/Filter;)Landroid/os/Handler;

    #@44
    move-result-object v5

    #@45
    const-wide/16 v8, 0xbb8

    #@47
    invoke-virtual {v5, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4a
    .end local v0    # "args":Landroid/widget/Filter$RequestArguments;
    .end local v2    # "finishMessage":Landroid/os/Message;
    .end local v3    # "message":Landroid/os/Message;
    :cond_0
    :goto_2
    monitor-exit v6

    #@4b
    goto :goto_0

    #@4c
    .line 235
    .restart local v0    # "args":Landroid/widget/Filter$RequestArguments;
    :catch_0
    move-exception v1

    #@4d
    .line 236
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Landroid/widget/Filter$FilterResults;

    #@4f
    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    #@52
    iput-object v5, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    #@54
    .line 237
    const-string/jumbo v5, "Filter"

    #@57
    const-string/jumbo v6, "An exception occured during performFiltering()!"

    #@5a
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    .line 239
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@5f
    invoke-static {v5}, Landroid/widget/Filter;->-get1(Landroid/widget/Filter;)Landroid/os/Handler;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@66
    move-result-object v3

    #@67
    .line 240
    .restart local v3    # "message":Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@69
    .line 241
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@6c
    goto :goto_1

    #@6d
    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v5

    #@6e
    .line 239
    iget-object v6, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@70
    invoke-static {v6}, Landroid/widget/Filter;->-get1(Landroid/widget/Filter;)Landroid/os/Handler;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@77
    move-result-object v3

    #@78
    .line 240
    .restart local v3    # "message":Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7a
    .line 241
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@7d
    .line 238
    throw v5

    #@7e
    .line 244
    :catchall_1
    move-exception v5

    #@7f
    monitor-exit v6

    #@80
    throw v5

    #@81
    .line 252
    .end local v0    # "args":Landroid/widget/Filter$RequestArguments;
    .end local v3    # "message":Landroid/os/Message;
    :sswitch_1
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@83
    invoke-static {v5}, Landroid/widget/Filter;->-get0(Landroid/widget/Filter;)Ljava/lang/Object;

    #@86
    move-result-object v6

    #@87
    monitor-enter v6

    #@88
    .line 253
    :try_start_3
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@8a
    invoke-static {v5}, Landroid/widget/Filter;->-get2(Landroid/widget/Filter;)Landroid/os/Handler;

    #@8d
    move-result-object v5

    #@8e
    if-eqz v5, :cond_0

    #@90
    .line 254
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@92
    invoke-static {v5}, Landroid/widget/Filter;->-get2(Landroid/widget/Filter;)Landroid/os/Handler;

    #@95
    move-result-object v5

    #@96
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    #@9d
    .line 255
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    #@9f
    const/4 v7, 0x0

    #@a0
    invoke-static {v5, v7}, Landroid/widget/Filter;->-set0(Landroid/widget/Filter;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@a3
    goto :goto_2

    #@a4
    .line 252
    :catchall_2
    move-exception v5

    #@a5
    monitor-exit v6

    #@a6
    throw v5

    #@a7
    .line 230
    nop

    #@a8
    :sswitch_data_0
    .sparse-switch
        -0x2f2f0ff3 -> :sswitch_0
        -0x21524111 -> :sswitch_1
    .end sparse-switch
.end method
