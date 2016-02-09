.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Message$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x1

.field static final FLAG_ASYNCHRONOUS:I = 0x2

.field static final FLAG_IN_USE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static gCheckRecycle:Z

.field private static sPool:Landroid/os/Message;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field callback:Ljava/lang/Runnable;

.field data:Landroid/os/Bundle;

.field flags:I

.field next:Landroid/os/Message;

.field public obj:Ljava/lang/Object;

.field public replyTo:Landroid/os/Messenger;

.field public sendingUid:I

.field target:Landroid/os/Handler;

.field public what:I

.field when:J


# direct methods
.method static synthetic -wrap0(Landroid/os/Message;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    #@7
    .line 112
    const/4 v0, 0x0

    #@8
    sput v0, Landroid/os/Message;->sPoolSize:I

    #@a
    .line 116
    const/4 v0, 0x1

    #@b
    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    #@d
    .line 524
    new-instance v0, Landroid/os/Message$1;

    #@f
    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    #@12
    .line 523
    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/os/Message;->sendingUid:I

    #@6
    .line 475
    return-void
.end method

.method public static obtain()Landroid/os/Message;
    .locals 3

    #@0
    .prologue
    .line 123
    sget-object v2, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 124
    :try_start_0
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 125
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    #@9
    .line 126
    .local v0, "m":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    #@b
    sput-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    #@d
    .line 127
    const/4 v1, 0x0

    #@e
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    #@10
    .line 128
    const/4 v1, 0x0

    #@11
    iput v1, v0, Landroid/os/Message;->flags:I

    #@13
    .line 129
    sget v1, Landroid/os/Message;->sPoolSize:I

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    sput v1, Landroid/os/Message;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v2

    #@1a
    .line 130
    return-object v0

    #@1b
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    monitor-exit v2

    #@1c
    .line 133
    new-instance v1, Landroid/os/Message;

    #@1e
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    #@21
    return-object v1

    #@22
    .line 123
    .restart local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public static obtain(Landroid/os/Handler;)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@6
    .line 168
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I

    #@0
    .prologue
    .line 194
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@6
    .line 196
    iput p1, v0, Landroid/os/Message;->what:I

    #@8
    .line 198
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    #@0
    .prologue
    .line 229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 230
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@6
    .line 231
    iput p1, v0, Landroid/os/Message;->what:I

    #@8
    .line 232
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 233
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@c
    .line 235
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 251
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 252
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@6
    .line 253
    iput p1, v0, Landroid/os/Message;->what:I

    #@8
    .line 254
    iput p2, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 255
    iput p3, v0, Landroid/os/Message;->arg2:I

    #@c
    .line 256
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    .line 258
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 210
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 211
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@6
    .line 212
    iput p1, v0, Landroid/os/Message;->what:I

    #@8
    .line 213
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    .line 215
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 179
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "m":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@6
    .line 181
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@8
    .line 183
    return-object v0
.end method

.method public static obtain(Landroid/os/Message;)Landroid/os/Message;
    .locals 3
    .param p0, "orig"    # Landroid/os/Message;

    #@0
    .prologue
    .line 143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 144
    .local v0, "m":Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    #@6
    iput v1, v0, Landroid/os/Message;->what:I

    #@8
    .line 145
    iget v1, p0, Landroid/os/Message;->arg1:I

    #@a
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 146
    iget v1, p0, Landroid/os/Message;->arg2:I

    #@e
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@10
    .line 147
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@12
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    .line 148
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@16
    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@18
    .line 149
    iget v1, p0, Landroid/os/Message;->sendingUid:I

    #@1a
    iput v1, v0, Landroid/os/Message;->sendingUid:I

    #@1c
    .line 150
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 151
    new-instance v1, Landroid/os/Bundle;

    #@22
    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@24
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@27
    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@29
    .line 153
    :cond_0
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@2b
    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@2d
    .line 154
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@2f
    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@31
    .line 156
    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/os/Message;->what:I

    #@6
    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/os/Message;->arg1:I

    #@c
    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/os/Message;->arg2:I

    #@12
    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 571
    invoke-virtual {p0}, Landroid/os/Message;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@26
    .line 573
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@29
    move-result-wide v0

    #@2a
    iput-wide v0, p0, Landroid/os/Message;->when:J

    #@2c
    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@32
    .line 575
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@38
    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/os/Message;->sendingUid:I

    #@3e
    .line 566
    return-void
.end method

.method public static updateCheckRecycle(I)V
    .locals 1
    .param p0, "targetSdkVersion"    # I

    #@0
    .prologue
    .line 263
    const/16 v0, 0x15

    #@2
    if-ge p0, v0, :cond_0

    #@4
    .line 264
    const/4 v0, 0x0

    #@5
    sput-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    #@7
    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/os/Message;)V
    .locals 2
    .param p1, "o"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 321
    iget v0, p1, Landroid/os/Message;->flags:I

    #@3
    and-int/lit8 v0, v0, -0x2

    #@5
    iput v0, p0, Landroid/os/Message;->flags:I

    #@7
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    #@9
    iput v0, p0, Landroid/os/Message;->what:I

    #@b
    .line 323
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@d
    iput v0, p0, Landroid/os/Message;->arg1:I

    #@f
    .line 324
    iget v0, p1, Landroid/os/Message;->arg2:I

    #@11
    iput v0, p0, Landroid/os/Message;->arg2:I

    #@13
    .line 325
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    .line 326
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@19
    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@1b
    .line 327
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    #@1d
    iput v0, p0, Landroid/os/Message;->sendingUid:I

    #@1f
    .line 329
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 330
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@25
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/os/Bundle;

    #@2b
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@2d
    .line 320
    :goto_0
    return-void

    #@2e
    .line 332
    :cond_0
    iput-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@30
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 537
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 384
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@b
    .line 387
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@d
    return-object v0
.end method

.method public getTarget()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public getWhen()J
    .locals 2

    #@0
    .prologue
    .line 340
    iget-wide v0, p0, Landroid/os/Message;->when:J

    #@2
    return-wide v0
.end method

.method public isAsynchronous()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 428
    iget v1, p0, Landroid/os/Message;->flags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method isInUse()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 466
    iget v1, p0, Landroid/os/Message;->flags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method markInUse()V
    .locals 1

    #@0
    .prologue
    .line 470
    iget v0, p0, Landroid/os/Message;->flags:I

    #@2
    or-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/os/Message;->flags:I

    #@6
    .line 469
    return-void
.end method

.method public peekData()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public recycle()V
    .locals 2

    #@0
    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/os/Message;->isInUse()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 278
    sget-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "This message cannot be recycled because it is still in use."

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 282
    :cond_0
    return-void

    #@14
    .line 284
    :cond_1
    invoke-virtual {p0}, Landroid/os/Message;->recycleUnchecked()V

    #@17
    .line 276
    return-void
.end method

.method recycleUnchecked()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 294
    const/4 v0, 0x1

    #@3
    iput v0, p0, Landroid/os/Message;->flags:I

    #@5
    .line 295
    iput v1, p0, Landroid/os/Message;->what:I

    #@7
    .line 296
    iput v1, p0, Landroid/os/Message;->arg1:I

    #@9
    .line 297
    iput v1, p0, Landroid/os/Message;->arg2:I

    #@b
    .line 298
    iput-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    .line 299
    iput-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@f
    .line 300
    const/4 v0, -0x1

    #@10
    iput v0, p0, Landroid/os/Message;->sendingUid:I

    #@12
    .line 301
    const-wide/16 v0, 0x0

    #@14
    iput-wide v0, p0, Landroid/os/Message;->when:J

    #@16
    .line 302
    iput-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@18
    .line 303
    iput-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@1a
    .line 304
    iput-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@1c
    .line 306
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    #@1e
    monitor-enter v1

    #@1f
    .line 307
    :try_start_0
    sget v0, Landroid/os/Message;->sPoolSize:I

    #@21
    const/16 v2, 0x32

    #@23
    if-ge v0, v2, :cond_0

    #@25
    .line 308
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    #@27
    iput-object v0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    #@29
    .line 309
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    #@2b
    .line 310
    sget v0, Landroid/os/Message;->sPoolSize:I

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    sput v0, Landroid/os/Message;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    :cond_0
    monitor-exit v1

    #@32
    .line 291
    return-void

    #@33
    .line 306
    :catchall_0
    move-exception v0

    #@34
    monitor-exit v1

    #@35
    throw v0
.end method

.method public sendToTarget()V
    .locals 1

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@5
    .line 415
    return-void
.end method

.method public setAsynchronous(Z)V
    .locals 1
    .param p1, "async"    # Z

    #@0
    .prologue
    .line 458
    if-eqz p1, :cond_0

    #@2
    .line 459
    iget v0, p0, Landroid/os/Message;->flags:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Landroid/os/Message;->flags:I

    #@8
    .line 457
    :goto_0
    return-void

    #@9
    .line 461
    :cond_0
    iget v0, p0, Landroid/os/Message;->flags:I

    #@b
    and-int/lit8 v0, v0, -0x3

    #@d
    iput v0, p0, Landroid/os/Message;->flags:I

    #@f
    goto :goto_0
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 408
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@2
    .line 407
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .param p1, "target"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 344
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@2
    .line 343
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 480
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method toString(J)Ljava/lang/String;
    .locals 5
    .param p1, "now"    # J

    #@0
    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 485
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ when="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 486
    iget-wide v2, p0, Landroid/os/Message;->when:J

    #@d
    sub-long/2addr v2, p1

    #@e
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@11
    .line 488
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@13
    if-eqz v1, :cond_4

    #@15
    .line 489
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 490
    const-string/jumbo v1, " callback="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 491
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 497
    :goto_0
    iget v1, p0, Landroid/os/Message;->arg1:I

    #@2e
    if-eqz v1, :cond_0

    #@30
    .line 498
    const-string/jumbo v1, " arg1="

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 499
    iget v1, p0, Landroid/os/Message;->arg1:I

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 502
    :cond_0
    iget v1, p0, Landroid/os/Message;->arg2:I

    #@3d
    if-eqz v1, :cond_1

    #@3f
    .line 503
    const-string/jumbo v1, " arg2="

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 504
    iget v1, p0, Landroid/os/Message;->arg2:I

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    .line 507
    :cond_1
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c
    if-eqz v1, :cond_2

    #@4e
    .line 508
    const-string/jumbo v1, " obj="

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 509
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    .line 512
    :cond_2
    const-string/jumbo v1, " target="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 513
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    #@61
    invoke-virtual {v1}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    .line 519
    :goto_1
    const-string/jumbo v1, " }"

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v1

    #@76
    return-object v1

    #@77
    .line 493
    :cond_3
    const-string/jumbo v1, " what="

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 494
    iget v1, p0, Landroid/os/Message;->what:I

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    goto :goto_0

    #@83
    .line 515
    :cond_4
    const-string/jumbo v1, " barrier="

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 516
    iget v1, p0, Landroid/os/Message;->arg1:I

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8e
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 541
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 542
    new-instance v2, Ljava/lang/RuntimeException;

    #@6
    .line 543
    const-string/jumbo v3, "Can\'t marshal callbacks across processes."

    #@9
    .line 542
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 545
    :cond_0
    iget v2, p0, Landroid/os/Message;->what:I

    #@f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 546
    iget v2, p0, Landroid/os/Message;->arg1:I

    #@14
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 547
    iget v2, p0, Landroid/os/Message;->arg2:I

    #@19
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 548
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 550
    :try_start_0
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@22
    check-cast v1, Landroid/os/Parcelable;

    #@24
    .line 551
    .local v1, "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    #@25
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 552
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 560
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_0
    iget-wide v2, p0, Landroid/os/Message;->when:J

    #@2d
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@30
    .line 561
    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    #@32
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@35
    .line 562
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@37
    invoke-static {v2, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    #@3a
    .line 563
    iget v2, p0, Landroid/os/Message;->sendingUid:I

    #@3c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 540
    return-void

    #@40
    .line 553
    :catch_0
    move-exception v0

    #@41
    .line 554
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@43
    .line 555
    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    #@46
    .line 554
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v2

    #@4a
    .line 558
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    const/4 v2, 0x0

    #@4b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    goto :goto_0
.end method
