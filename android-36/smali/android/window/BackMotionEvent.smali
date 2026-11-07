.class public final Landroid/window/BackMotionEvent;
.super Ljava/lang/Object;
.source "BackMotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackMotionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field private final blacklist mFrameTimeMillis:J

.field private final blacklist mProgress:F

.field private final blacklist mSwipeEdge:I

.field private final blacklist mTouchX:F

.field private final blacklist mTouchY:F

.field private final blacklist mTriggerBack:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Landroid/window/BackMotionEvent$1;

    invoke-direct {v0}, Landroid/window/BackMotionEvent$1;-><init>()V

    sput-object v0, Landroid/window/BackMotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFJFZILandroid/view/RemoteAnimationTarget;)V
    .registers 9
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "frameTimeMillis"    # J
    .param p5, "progress"    # F
    .param p6, "triggerBack"    # Z
    .param p7, "swipeEdge"    # I
    .param p8, "departingAnimationTarget"    # Landroid/view/RemoteAnimationTarget;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    .line 68
    iput p2, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    .line 69
    iput-wide p3, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    .line 70
    iput p5, p0, Landroid/window/BackMotionEvent;->mProgress:F

    .line 71
    iput-boolean p6, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    .line 72
    iput p7, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    .line 73
    iput-object p8, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 74
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mProgress:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    .line 82
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackMotionEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/BackMotionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public blacklist getFrameTimeMillis()J
    .registers 3

    .line 160
    iget-wide v0, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    return-wide v0
.end method

.method public blacklist getProgress()F
    .registers 2

    .line 136
    iget v0, p0, Landroid/window/BackMotionEvent;->mProgress:F

    return v0
.end method

.method public blacklist getSwipeEdge()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    return v0
.end method

.method public blacklist getTouchX()F
    .registers 2

    .line 119
    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    return v0
.end method

.method public blacklist getTouchY()F
    .registers 2

    .line 126
    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    return v0
.end method

.method public blacklist getTriggerBack()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackMotionEvent{mTouchX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTouchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTriggerBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSwipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDepartingAnimationTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 107
    iget v0, p0, Landroid/window/BackMotionEvent;->mTouchY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 108
    iget v0, p0, Landroid/window/BackMotionEvent;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 109
    iget-boolean v0, p0, Landroid/window/BackMotionEvent;->mTriggerBack:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    iget v0, p0, Landroid/window/BackMotionEvent;->mSwipeEdge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Landroid/window/BackMotionEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 112
    iget-wide v0, p0, Landroid/window/BackMotionEvent;->mFrameTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    return-void
.end method
