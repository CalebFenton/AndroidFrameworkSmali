.class public abstract Landroid/view/InputEvent;
.super Ljava/lang/Object;
.source "InputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PARCEL_TOKEN_KEY_EVENT:I = 0x2

.field protected static final PARCEL_TOKEN_MOTION_EVENT:I = 0x1

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static final mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field protected mSeq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@5
    sput-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    .line 226
    new-instance v0, Landroid/view/InputEvent$1;

    #@9
    invoke-direct {v0}, Landroid/view/InputEvent$1;-><init>()V

    #@c
    .line 225
    sput-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 27
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    sget-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/view/InputEvent;->mSeq:I

    #@b
    .line 45
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract copy()Landroid/view/InputEvent;
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 222
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getDevice()Landroid/view/InputDevice;
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDeviceId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public abstract getDeviceId()I
.end method

.method public abstract getEventTime()J
.end method

.method public abstract getEventTimeNano()J
.end method

.method public getSequenceNumber()I
    .locals 1

    #@0
    .prologue
    .line 218
    iget v0, p0, Landroid/view/InputEvent;->mSeq:I

    #@2
    return v0
.end method

.method public abstract getSource()I
.end method

.method public isFromSource(I)Z
    .locals 1
    .param p1, "source"    # I

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/view/InputEvent;->getSource()I

    #@3
    move-result v0

    #@4
    and-int/2addr v0, p1

    #@5
    if-ne v0, p1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public abstract isTainted()Z
.end method

.method protected prepareForReuse()V
    .locals 1

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    #@3
    .line 147
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/view/InputEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    #@6
    .line 148
    sget-object v0, Landroid/view/InputEvent;->mNextSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/view/InputEvent;->mSeq:I

    #@e
    .line 145
    return-void
.end method

.method public recycle()V
    .locals 3

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {p0}, Landroid/view/InputEvent;->toString()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, " recycled twice!"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 122
    :cond_0
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Landroid/view/InputEvent;->mRecycled:Z

    #@25
    .line 112
    return-void
.end method

.method public recycleIfNeededAfterDispatch()V
    .locals 0

    #@0
    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/view/InputEvent;->recycle()V

    #@3
    .line 137
    return-void
.end method

.method public abstract setSource(I)V
.end method

.method public abstract setTainted(Z)V
.end method
