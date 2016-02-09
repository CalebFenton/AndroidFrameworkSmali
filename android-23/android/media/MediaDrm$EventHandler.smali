.class Landroid/media/MediaDrm$EventHandler;
.super Landroid/os/Handler;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaDrm:Landroid/media/MediaDrm;

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method public constructor <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaDrm;
    .param p2, "md"    # Landroid/media/MediaDrm;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 510
    iput-object p1, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    #@2
    .line 511
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 512
    iput-object p2, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    #@7
    .line 510
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    #@2
    invoke-static {v0}, Landroid/media/MediaDrm;->-get0(Landroid/media/MediaDrm;)J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v12, 0x0

    #@8
    cmp-long v0, v0, v12

    #@a
    if-nez v0, :cond_0

    #@c
    .line 518
    const-string/jumbo v0, "MediaDrm"

    #@f
    const-string/jumbo v1, "MediaDrm went away with unhandled events"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 519
    return-void

    #@16
    .line 521
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@18
    packed-switch v0, :pswitch_data_0

    #@1b
    .line 576
    const-string/jumbo v0, "MediaDrm"

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Unknown message type "

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v3, p1, Landroid/os/Message;->what:I

    #@2c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 577
    return-void

    #@38
    .line 524
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    #@3a
    invoke-static {v0}, Landroid/media/MediaDrm;->-get1(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    #@3d
    move-result-object v0

    #@3e
    if-eqz v0, :cond_3

    #@40
    .line 525
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@42
    if-eqz v0, :cond_3

    #@44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@46
    instance-of v0, v0, Landroid/os/Parcel;

    #@48
    if-eqz v0, :cond_3

    #@4a
    .line 526
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c
    check-cast v10, Landroid/os/Parcel;

    #@4e
    .line 527
    .local v10, "parcel":Landroid/os/Parcel;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    #@51
    move-result-object v2

    #@52
    .line 528
    .local v2, "sessionId":[B
    array-length v0, v2

    #@53
    if-nez v0, :cond_1

    #@55
    .line 529
    const/4 v2, 0x0

    #@56
    .line 531
    .end local v2    # "sessionId":[B
    :cond_1
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    #@59
    move-result-object v5

    #@5a
    .line 532
    .local v5, "data":[B
    array-length v0, v5

    #@5b
    if-nez v0, :cond_2

    #@5d
    .line 533
    const/4 v5, 0x0

    #@5e
    .line 536
    .end local v5    # "data":[B
    :cond_2
    const-string/jumbo v0, "MediaDrm"

    #@61
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v3, "Drm event ("

    #@69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@6f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string/jumbo v3, ","

    #@76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@7c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    const-string/jumbo v3, ")"

    #@83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8e
    .line 537
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    #@90
    invoke-static {v0}, Landroid/media/MediaDrm;->-get1(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnEventListener;

    #@93
    move-result-object v0

    #@94
    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    #@96
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@98
    iget v4, p1, Landroid/os/Message;->arg2:I

    #@9a
    invoke-interface/range {v0 .. v5}, Landroid/media/MediaDrm$OnEventListener;->onEvent(Landroid/media/MediaDrm;[BII[B)V

    #@9d
    .line 540
    .end local v10    # "parcel":Landroid/os/Parcel;
    :cond_3
    return-void

    #@9e
    .line 543
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    #@a0
    invoke-static {v0}, Landroid/media/MediaDrm;->-get3(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    #@a3
    move-result-object v0

    #@a4
    if-eqz v0, :cond_4

    #@a6
    .line 544
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a8
    if-eqz v0, :cond_4

    #@aa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ac
    instance-of v0, v0, Landroid/os/Parcel;

    #@ae
    if-eqz v0, :cond_4

    #@b0
    .line 545
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b2
    check-cast v10, Landroid/os/Parcel;

    #@b4
    .line 546
    .restart local v10    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    #@b7
    move-result-object v2

    #@b8
    .line 547
    .restart local v2    # "sessionId":[B
    array-length v0, v2

    #@b9
    if-lez v0, :cond_4

    #@bb
    .line 548
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    #@bd
    invoke-static {v0, v10}, Landroid/media/MediaDrm;->-wrap4(Landroid/media/MediaDrm;Landroid/os/Parcel;)Ljava/util/List;

    #@c0
    move-result-object v9

    #@c1
    .line 549
    .local v9, "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v0

    #@c5
    if-eqz v0, :cond_5

    #@c7
    const/4 v8, 0x1

    #@c8
    .line 551
    .local v8, "hasNewUsableKey":Z
    :goto_0
    const-string/jumbo v0, "MediaDrm"

    #@cb
    const-string/jumbo v1, "Drm key status changed"

    #@ce
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d1
    .line 552
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    #@d3
    invoke-static {v0}, Landroid/media/MediaDrm;->-get3(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnKeyStatusChangeListener;

    #@d6
    move-result-object v0

    #@d7
    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    #@d9
    invoke-interface {v0, v1, v2, v9, v8}, Landroid/media/MediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    #@dc
    .line 557
    .end local v2    # "sessionId":[B
    .end local v8    # "hasNewUsableKey":Z
    .end local v9    # "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    .end local v10    # "parcel":Landroid/os/Parcel;
    :cond_4
    return-void

    #@dd
    .line 549
    .restart local v2    # "sessionId":[B
    .restart local v9    # "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    .restart local v10    # "parcel":Landroid/os/Parcel;
    :cond_5
    const/4 v8, 0x0

    #@de
    .restart local v8    # "hasNewUsableKey":Z
    goto :goto_0

    #@df
    .line 560
    .end local v2    # "sessionId":[B
    .end local v8    # "hasNewUsableKey":Z
    .end local v9    # "keyStatusList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    .end local v10    # "parcel":Landroid/os/Parcel;
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    #@e1
    invoke-static {v0}, Landroid/media/MediaDrm;->-get2(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;

    #@e4
    move-result-object v0

    #@e5
    if-eqz v0, :cond_6

    #@e7
    .line 561
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e9
    if-eqz v0, :cond_6

    #@eb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ed
    instance-of v0, v0, Landroid/os/Parcel;

    #@ef
    if-eqz v0, :cond_6

    #@f1
    .line 562
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f3
    check-cast v10, Landroid/os/Parcel;

    #@f5
    .line 563
    .restart local v10    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    #@f8
    move-result-object v2

    #@f9
    .line 564
    .restart local v2    # "sessionId":[B
    array-length v0, v2

    #@fa
    if-lez v0, :cond_6

    #@fc
    .line 565
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    #@ff
    move-result-wide v6

    #@100
    .line 567
    .local v6, "expirationTime":J
    const-string/jumbo v0, "MediaDrm"

    #@103
    new-instance v1, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v3, "Drm key expiration update: "

    #@10b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@112
    move-result-object v1

    #@113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v1

    #@117
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    .line 568
    iget-object v0, p0, Landroid/media/MediaDrm$EventHandler;->this$0:Landroid/media/MediaDrm;

    #@11c
    invoke-static {v0}, Landroid/media/MediaDrm;->-get2(Landroid/media/MediaDrm;)Landroid/media/MediaDrm$OnExpirationUpdateListener;

    #@11f
    move-result-object v0

    #@120
    iget-object v1, p0, Landroid/media/MediaDrm$EventHandler;->mMediaDrm:Landroid/media/MediaDrm;

    #@122
    invoke-interface {v0, v1, v2, v6, v7}, Landroid/media/MediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V

    #@125
    .line 573
    .end local v2    # "sessionId":[B
    .end local v6    # "expirationTime":J
    .end local v10    # "parcel":Landroid/os/Parcel;
    :cond_6
    return-void

    #@126
    .line 521
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
