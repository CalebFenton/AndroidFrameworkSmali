.class public abstract Landroid/view/InputEvent;
.super Ljava/lang/Object;
.source "InputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final greylist-max-o PARCEL_TOKEN_KEY_EVENT:I = 0x2

.field protected static final greylist-max-o PARCEL_TOKEN_MOTION_EVENT:I = 0x1

.field private static final greylist-max-o TRACK_RECYCLED_LOCATION:Z = false

.field private static final greylist-max-o mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected greylist-max-o mRecycled:Z

.field private greylist-max-o mRecycledLocation:Ljava/lang/RuntimeException;

.field protected greylist-max-o mSeq:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 258
    new-instance v0, Landroid/view/InputEvent$1;

    invoke-direct {v0}, Landroid/view/InputEvent$1;-><init>()V

    sput-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Landroid/view/InputEvent;->mSeq:I

    .line 49
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o cancel()V
.end method

.method public abstract greylist-max-o copy()Landroid/view/InputEvent;
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getDevice()Landroid/view/InputDevice;
    .registers 2

    .line 68
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getDeviceId()I
.end method

.method public abstract blacklist getDisplayId()I
.end method

.method public abstract whitelist getEventTime()J
.end method

.method public abstract blacklist getEventTimeNanos()J
.end method

.method public abstract blacklist getId()I
.end method

.method public greylist getSequenceNumber()I
    .registers 2

    .line 236
    iget v0, p0, Landroid/view/InputEvent;->mSeq:I

    return v0
.end method

.method public abstract whitelist getSource()I
.end method

.method public whitelist isFromSource(I)Z
    .registers 3
    .param p1, "source"    # I

    .line 96
    invoke-virtual {p0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public abstract greylist-max-o isTainted()Z
.end method

.method protected greylist-max-o prepareForReuse()V
    .registers 2

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InputEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 165
    sget-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Landroid/view/InputEvent;->mSeq:I

    .line 166
    return-void
.end method

.method public greylist-max-o recycle()V
    .registers 4

    .line 136
    iget-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    if-nez v0, :cond_8

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    .line 141
    return-void

    .line 137
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o recycleIfNeededAfterDispatch()V
    .registers 1

    .line 155
    invoke-virtual {p0}, Landroid/view/InputEvent;->recycle()V

    .line 156
    return-void
.end method

.method public abstract blacklist setDisplayId(I)V
.end method

.method public abstract greylist-max-o setSource(I)V
.end method

.method public abstract greylist-max-o setTainted(Z)V
.end method
