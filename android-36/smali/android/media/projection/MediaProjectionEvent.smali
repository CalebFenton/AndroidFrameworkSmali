.class public final Landroid/media/projection/MediaProjectionEvent;
.super Ljava/lang/Object;
.source "MediaProjectionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionEvent$EventType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/projection/MediaProjectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PROJECTION_STARTED_DURING_CALL_AND_ACTIVE_POST_CALL:I


# instance fields
.field private final blacklist mEventType:I

.field private final blacklist mTimestampMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/media/projection/MediaProjectionEvent$1;

    invoke-direct {v0}, Landroid/media/projection/MediaProjectionEvent$1;-><init>()V

    sput-object v0, Landroid/media/projection/MediaProjectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJ)V
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "timestampMillis"    # J

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    .line 45
    iput-wide p2, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/projection/MediaProjectionEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/projection/MediaProjectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 63
    instance-of v0, p1, Landroid/media/projection/MediaProjectionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Landroid/media/projection/MediaProjectionEvent;

    .line 64
    .local v0, "other":Landroid/media/projection/MediaProjectionEvent;
    iget v2, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    iget v3, v0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    if-ne v2, v3, :cond_17

    iget-wide v2, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    iget-wide v4, v0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 66
    .end local v0    # "other":Landroid/media/projection/MediaProjectionEvent;
    :cond_18
    return v1
.end method

.method public blacklist getEventType()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    return v0
.end method

.method public blacklist getTimestampMillis()J
    .registers 3

    .line 58
    iget-wide v0, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 71
    iget v0, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaProjectionEvent{mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget v0, p0, Landroid/media/projection/MediaProjectionEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-wide v0, p0, Landroid/media/projection/MediaProjectionEvent;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    return-void
.end method
