.class public abstract Landroid/view/VerifiedInputEvent;
.super Ljava/lang/Object;
.source "VerifiedInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VerifiedInputEvent$VerifiedInputEventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/VerifiedInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VerifiedInputEvent"

.field protected static final blacklist VERIFIED_KEY:I = 0x1

.field protected static final blacklist VERIFIED_MOTION:I = 0x2


# instance fields
.field private blacklist mDeviceId:I

.field private blacklist mDisplayId:I

.field private blacklist mEventTimeNanos:J

.field private blacklist mSource:I

.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smpeekInt(Landroid/os/Parcel;)I
    .registers 1

    invoke-static {p0}, Landroid/view/VerifiedInputEvent;->peekInt(Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/view/VerifiedInputEvent$1;

    invoke-direct {v0}, Landroid/view/VerifiedInputEvent$1;-><init>()V

    sput-object v0, Landroid/view/VerifiedInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(IIJII)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "deviceId"    # I
    .param p3, "eventTimeNanos"    # J
    .param p5, "source"    # I
    .param p6, "displayId"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/view/VerifiedInputEvent;->mType:I

    .line 65
    iput p2, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    .line 66
    iput-wide p3, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    .line 67
    iput p5, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    .line 68
    iput p6, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    .line 69
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "expectedType"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    .line 73
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    if-ne v0, p2, :cond_26

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    .line 80
    return-void

    .line 74
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected input event type token in parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist peekInt(Landroid/os/Parcel;)I
    .registers 3
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 137
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 138
    .local v0, "initialDataPosition":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, "data":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 165
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 167
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/VerifiedInputEvent;

    .line 168
    .local v2, "that":Landroid/view/VerifiedInputEvent;
    iget v3, p0, Landroid/view/VerifiedInputEvent;->mType:I

    iget v4, v2, Landroid/view/VerifiedInputEvent;->mType:I

    if-ne v3, v4, :cond_46

    .line 169
    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v4

    if-ne v3, v4, :cond_46

    .line 170
    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_46

    .line 171
    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v4

    if-ne v3, v4, :cond_46

    .line 172
    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    .line 168
    :goto_47
    return v0

    .line 165
    .end local v2    # "that":Landroid/view/VerifiedInputEvent;
    :cond_48
    :goto_48
    return v1
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    return v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    return v0
.end method

.method public whitelist getEventTimeNanos()J
    .registers 3

    .line 99
    iget-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public whitelist getSource()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 177
    const/4 v0, 0x1

    .line 178
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/VerifiedInputEvent;->mType:I

    add-int/2addr v1, v2

    .line 179
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDeviceId()I

    move-result v2

    add-int/2addr v0, v2

    .line 180
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getEventTimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 181
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getSource()I

    move-result v2

    add-int/2addr v0, v2

    .line 182
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/view/VerifiedInputEvent;->getDisplayId()I

    move-result v2

    add-int/2addr v1, v2

    .line 183
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-wide v0, p0, Landroid/view/VerifiedInputEvent;->mEventTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Landroid/view/VerifiedInputEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void
.end method
