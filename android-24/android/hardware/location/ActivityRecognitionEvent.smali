.class public Landroid/hardware/location/ActivityRecognitionEvent;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Ljava/lang/String;

.field private final mEventType:I

.field private final mTimestampNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    new-instance v0, Landroid/hardware/location/ActivityRecognitionEvent$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/ActivityRecognitionEvent$1;-><init>()V

    #@5
    .line 50
    sput-object v0, Landroid/hardware/location/ActivityRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    #@5
    .line 34
    iput p2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    #@7
    .line 35
    iput-wide p3, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    #@9
    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEventType()I
    .locals 1

    #@0
    .prologue
    .line 43
    iget v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    #@2
    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    #@0
    .prologue
    .line 47
    iget-wide v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    #@2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "Activity=\'%s\', EventType=%s, TimestampNs=%s"

    #@3
    .line 81
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 83
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    .line 84
    iget v2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    #@d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    .line 85
    iget-wide v2, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v2

    #@1a
    const/4 v3, 0x2

    #@1b
    aput-object v2, v1, v3

    #@1d
    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 75
    iget v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mEventType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 76
    iget-wide v0, p0, Landroid/hardware/location/ActivityRecognitionEvent;->mTimestampNs:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 73
    return-void
.end method
