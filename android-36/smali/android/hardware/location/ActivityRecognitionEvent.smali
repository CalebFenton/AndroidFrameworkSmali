.class public Landroid/hardware/location/ActivityRecognitionEvent;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mActivity:Ljava/lang/String;

.field private final greylist-max-o mEventType:I

.field private final greylist-max-o mTimestampNs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/hardware/location/ActivityRecognitionEvent$1;

    invoke-direct {v0}, Landroid/hardware/location/ActivityRecognitionEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;IJ)V
    .registers 5
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    .line 34
    iput p2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    .line 35
    iput-wide p3, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getActivity()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getEventType()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    return v0
.end method

.method public greylist-max-o getTimestampNs()J
    .registers 3

    .line 47
    iget-wide v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 81
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 81
    const-string v1, "Activity=\'%s\', EventType=%s, TimestampNs=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-wide v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    return-void
.end method
