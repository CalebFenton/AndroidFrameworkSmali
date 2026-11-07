.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x1

.field static final greylist-max-o FLAG_ASYNCHRONOUS:I = 0x2

.field static final greylist-max-o FLAG_IN_USE:I = 0x1

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0x32

.field public static final blacklist UID_NONE:I = -0x1

.field private static greylist-max-o gCheckRecycle:Z

.field private static greylist-max-o sPool:Landroid/os/Message;

.field private static greylist-max-o sPoolSize:I

.field public static final greylist-max-o sPoolSync:Ljava/lang/Object;


# instance fields
.field public whitelist arg1:I

.field public whitelist arg2:I

.field greylist callback:Ljava/lang/Runnable;

.field greylist-max-o data:Landroid/os/Bundle;

.field greylist flags:I

.field public final blacklist mEventId:Ljava/util/concurrent/atomic/AtomicLong;

.field public blacklist mInsertSeq:J

.field public blacklist mSendingThreadName:Ljava/lang/String;

.field greylist next:Landroid/os/Message;

.field public whitelist obj:Ljava/lang/Object;

.field public whitelist replyTo:Landroid/os/Messenger;

.field public whitelist sendingUid:I

.field greylist target:Landroid/os/Handler;

.field public whitelist what:I

.field public greylist when:J

.field public blacklist workSourceUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/os/Message;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    .line 634
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->mEventId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 111
    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 555
    return-void
.end method

.method public static whitelist obtain()Landroid/os/Message;
    .registers 3

    .line 179
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_3
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_1b

    .line 181
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 182
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v2, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 183
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 184
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->flags:I

    .line 185
    sget v2, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 186
    monitor-exit v0

    return-object v1

    .line 188
    .end local v1    # "m":Landroid/os/Message;
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 189
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0

    .line 188
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static whitelist obtain(Landroid/os/Handler;)Landroid/os/Message;
    .registers 2
    .param p0, "h"    # Landroid/os/Handler;

    .line 222
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 223
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 225
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .registers 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .line 251
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 252
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 253
    iput p1, v0, Landroid/os/Message;->what:I

    .line 255
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .registers 5
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 286
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 288
    iput p1, v0, Landroid/os/Message;->what:I

    .line 289
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 290
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 292
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 308
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 309
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 310
    iput p1, v0, Landroid/os/Message;->what:I

    .line 311
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 312
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 313
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 267
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 269
    iput p1, v0, Landroid/os/Message;->what:I

    .line 270
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 238
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 240
    return-object v0
.end method

.method public static whitelist obtain(Landroid/os/Message;)Landroid/os/Message;
    .registers 4
    .param p0, "orig"    # Landroid/os/Message;

    .line 199
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, "m":Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 201
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 202
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 203
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 205
    iget v1, p0, Landroid/os/Message;->sendingUid:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    .line 206
    iget v1, p0, Landroid/os/Message;->workSourceUid:I

    iput v1, v0, Landroid/os/Message;->workSourceUid:I

    .line 207
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_2d

    .line 208
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 210
    :cond_2d
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 211
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 213
    return-object v0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 685
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 687
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 690
    return-void
.end method

.method public static greylist-max-o updateCheckRecycle(I)V
    .registers 2
    .param p0, "targetSdkVersion"    # I

    .line 320
    const/16 v0, 0x15

    if-ge p0, v0, :cond_7

    .line 321
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    .line 323
    :cond_7
    return-void
.end method


# virtual methods
.method public whitelist copyFrom(Landroid/os/Message;)V
    .registers 3
    .param p1, "o"    # Landroid/os/Message;

    .line 380
    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 382
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 383
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 384
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 386
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 387
    iget v0, p1, Landroid/os/Message;->workSourceUid:I

    iput v0, p0, Landroid/os/Message;->workSourceUid:I

    .line 389
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_31

    .line 390
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_34

    .line 392
    :cond_31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 394
    :goto_34
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 604
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 605
    .local v0, "messageToken":J
    const-wide v2, 0x10300000001L

    iget-wide v4, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 607
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v2, :cond_74

    .line 608
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_29

    .line 609
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_33

    .line 611
    :cond_29
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 614
    :goto_33
    iget v2, p0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_41

    .line 615
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 618
    :cond_41
    iget v2, p0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_4f

    .line 619
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 622
    :cond_4f
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_61

    .line 623
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 626
    :cond_61
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_7e

    .line 628
    :cond_74
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 631
    :goto_7e
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 632
    return-void
.end method

.method public whitelist getCallback()Ljava/lang/Runnable;
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public whitelist getData()Landroid/os/Bundle;
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 451
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 454
    :cond_b
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTarget()Landroid/os/Handler;
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist getWhen()J
    .registers 3

    .line 400
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public whitelist isAsynchronous()Z
    .registers 2

    .line 506
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method greylist-max-o isInUse()Z
    .registers 3

    .line 544
    iget v0, p0, Landroid/os/Message;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method greylist markInUse()V
    .registers 2

    .line 549
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 550
    return-void
.end method

.method public whitelist peekData()Landroid/os/Bundle;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist recycle()V
    .registers 3

    .line 334
    invoke-virtual {p0}, Landroid/os/Message;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 335
    sget-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    if-nez v0, :cond_b

    .line 339
    return-void

    .line 336
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This message cannot be recycled because it is still in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_13
    invoke-virtual {p0}, Landroid/os/Message;->recycleUnchecked()V

    .line 342
    return-void
.end method

.method greylist recycleUnchecked()V
    .registers 5

    .line 352
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 353
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/Message;->what:I

    .line 354
    iput v1, p0, Landroid/os/Message;->arg1:I

    .line 355
    iput v1, p0, Landroid/os/Message;->arg2:I

    .line 356
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iput-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 358
    const/4 v2, -0x1

    iput v2, p0, Landroid/os/Message;->sendingUid:I

    .line 359
    iput v2, p0, Landroid/os/Message;->workSourceUid:I

    .line 360
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/Message;->when:J

    .line 361
    iput-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 362
    iput-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 363
    iput-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 365
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_21
    sget v2, Landroid/os/Message;->sPoolSize:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_32

    .line 367
    sget-object v2, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v2, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 368
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 369
    sget v2, Landroid/os/Message;->sPoolSize:I

    add-int/2addr v2, v0

    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 371
    :cond_32
    monitor-exit v1

    .line 372
    return-void

    .line 371
    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public whitelist sendToTarget()V
    .registers 2

    .line 494
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    return-void
.end method

.method public whitelist setAsynchronous(Z)V
    .registers 3
    .param p1, "async"    # Z

    .line 536
    if-eqz p1, :cond_9

    .line 537
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    goto :goto_f

    .line 539
    :cond_9
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 541
    :goto_f
    return-void
.end method

.method public greylist setCallback(Ljava/lang/Runnable;)Landroid/os/Message;
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 434
    iput-object p1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 435
    return-object p0
.end method

.method public whitelist setData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 476
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 477
    return-void
.end method

.method public whitelist setTarget(Landroid/os/Handler;)V
    .registers 2
    .param p1, "target"    # Landroid/os/Handler;

    .line 404
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 405
    return-void
.end method

.method public greylist-max-o setWhat(I)Landroid/os/Message;
    .registers 2
    .param p1, "what"    # I

    .line 485
    iput p1, p0, Landroid/os/Message;->what:I

    .line 486
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist toString(J)Ljava/lang/String;
    .registers 6
    .param p1, "now"    # J

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 568
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v1, :cond_73

    .line 569
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_2c

    .line 570
    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 573
    :cond_2c
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    :goto_36
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_44

    .line 578
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    :cond_44
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_52

    .line 583
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    :cond_52
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_60

    .line 588
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 592
    :cond_60
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 595
    :cond_73
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    :goto_7d
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 652
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v0, :cond_4a

    .line 656
    iget v0, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    iget v0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    iget v0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2c

    .line 661
    :try_start_17
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    .line 662
    .local v0, "p":Landroid/os/Parcelable;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_22} :catch_23

    .line 667
    .end local v0    # "p":Landroid/os/Parcelable;
    goto :goto_30

    .line 664
    :catch_23
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t marshal non-Parcelable objects across processes."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    :goto_30
    iget-wide v0, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 672
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 673
    iget-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 674
    iget v0, p0, Landroid/os/Message;->sendingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    iget v0, p0, Landroid/os/Message;->workSourceUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    return-void

    .line 653
    :cond_4a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t marshal callbacks across processes."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
