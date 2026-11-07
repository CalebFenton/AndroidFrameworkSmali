.class public final Landroid/telecom/ParcelableCallAnalytics$VideoEvent;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoEvent"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics$VideoEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o RECEIVE_REMOTE_SESSION_MODIFY_REQUEST:I = 0x2

.field public static final greylist-max-o RECEIVE_REMOTE_SESSION_MODIFY_RESPONSE:I = 0x3

.field public static final greylist-max-o SEND_LOCAL_SESSION_MODIFY_REQUEST:I = 0x0

.field public static final greylist-max-o SEND_LOCAL_SESSION_MODIFY_RESPONSE:I = 0x1


# instance fields
.field private greylist-max-o mEventName:I

.field private greylist-max-o mTimeSinceLastEvent:J

.field private greylist-max-o mVideoState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$VideoEvent$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IJI)V
    .registers 5
    .param p1, "eventName"    # I
    .param p2, "timeSinceLastEvent"    # J
    .param p4, "videoState"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    .line 59
    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    .line 60
    iput p4, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    .line 61
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getEventName()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    return v0
.end method

.method public greylist-max-o getTimeSinceLastEvent()J
    .registers 3

    .line 74
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    return-wide v0
.end method

.method public greylist-max-o getVideoState()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mEventName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mTimeSinceLastEvent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$VideoEvent;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
