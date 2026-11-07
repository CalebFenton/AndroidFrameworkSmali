.class public final Landroid/hardware/input/VirtualTouchEvent;
.super Ljava/lang/Object;
.source "VirtualTouchEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualTouchEvent$Builder;,
        Landroid/hardware/input/VirtualTouchEvent$Action;,
        Landroid/hardware/input/VirtualTouchEvent$ToolType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CANCEL:I = 0x3

.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_MOVE:I = 0x2

.field public static final blacklist ACTION_UNKNOWN:I = -0x1

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_POINTERS:I = 0x10

.field public static final whitelist TOOL_TYPE_FINGER:I = 0x1

.field public static final whitelist TOOL_TYPE_PALM:I = 0x5

.field public static final blacklist TOOL_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mEventTimeNanos:J

.field private final blacklist mMajorAxisSize:F

.field private final blacklist mPointerId:I

.field private final blacklist mPressure:F

.field private final blacklist mToolType:I

.field private final blacklist mX:F

.field private final blacklist mY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 374
    new-instance v0, Landroid/hardware/input/VirtualTouchEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualTouchEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIFFFFJ)V
    .registers 10
    .param p1, "pointerId"    # I
    .param p2, "toolType"    # I
    .param p3, "action"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "pressure"    # F
    .param p7, "majorAxisSize"    # F
    .param p8, "eventTimeNanos"    # J

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    .line 104
    iput p2, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    .line 105
    iput p3, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    .line 106
    iput p4, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    .line 107
    iput p5, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    .line 108
    iput p6, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    .line 109
    iput p7, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    .line 110
    iput-wide p8, p0, Landroid/hardware/input/VirtualTouchEvent;->mEventTimeNanos:J

    .line 111
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIFFFFJLandroid/hardware/input/VirtualTouchEvent-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/hardware/input/VirtualTouchEvent;-><init>(IIIFFFFJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mEventTimeNanos:J

    .line 122
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualTouchEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    return v0
.end method

.method public whitelist getEventTimeNanos()J
    .registers 3

    .line 210
    iget-wide v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist getMajorAxisSize()F
    .registers 2

    .line 200
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    return v0
.end method

.method public whitelist getPointerId()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    return v0
.end method

.method public whitelist getPressure()F
    .registers 2

    .line 193
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    return v0
.end method

.method public whitelist getToolType()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    return v0
.end method

.method public whitelist getX()F
    .registers 2

    .line 179
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    return v0
.end method

.method public whitelist getY()F
    .registers 2

    .line 186
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualTouchEvent( pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " toolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    .line 145
    invoke-static {v1}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    .line 146
    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " majorAxisSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eventTime(ns)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/input/VirtualTouchEvent;->mEventTimeNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 126
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 130
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 132
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 133
    iget-wide v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    return-void
.end method
