.class public final Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;
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
    name = "AnalyticsEvent"
.end annotation


# static fields
.field public static final whitelist AUDIO_ROUTE_BT:I = 0xcc

.field public static final whitelist AUDIO_ROUTE_EARPIECE:I = 0xcd

.field public static final whitelist AUDIO_ROUTE_HEADSET:I = 0xce

.field public static final whitelist AUDIO_ROUTE_SPEAKER:I = 0xcf

.field public static final whitelist BIND_CS:I = 0x5

.field public static final whitelist BLOCK_CHECK_FINISHED:I = 0x69

.field public static final whitelist BLOCK_CHECK_INITIATED:I = 0x68

.field public static final whitelist CONFERENCE_WITH:I = 0x12c

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CS_BOUND:I = 0x6

.field public static final whitelist DIRECT_TO_VM_FINISHED:I = 0x67

.field public static final whitelist DIRECT_TO_VM_INITIATED:I = 0x66

.field public static final whitelist DND_CHECK_COMPLETED:I = 0x6e

.field public static final whitelist DND_CHECK_INITIATED:I = 0x6d

.field public static final whitelist FILTERING_COMPLETED:I = 0x6b

.field public static final whitelist FILTERING_INITIATED:I = 0x6a

.field public static final whitelist FILTERING_TIMED_OUT:I = 0x6c

.field public static final whitelist MUTE:I = 0xca

.field public static final whitelist REMOTELY_HELD:I = 0x192

.field public static final whitelist REMOTELY_UNHELD:I = 0x193

.field public static final whitelist REQUEST_ACCEPT:I = 0x7

.field public static final whitelist REQUEST_HOLD:I = 0x190

.field public static final whitelist REQUEST_PULL:I = 0x1f4

.field public static final whitelist REQUEST_REJECT:I = 0x8

.field public static final whitelist REQUEST_UNHOLD:I = 0x191

.field public static final whitelist SCREENING_COMPLETED:I = 0x65

.field public static final whitelist SCREENING_SENT:I = 0x64

.field public static final whitelist SET_ACTIVE:I = 0x1

.field public static final whitelist SET_DIALING:I = 0x4

.field public static final whitelist SET_DISCONNECTED:I = 0x2

.field public static final whitelist SET_HOLD:I = 0x194

.field public static final whitelist SET_PARENT:I = 0x12e

.field public static final whitelist SET_SELECT_PHONE_ACCOUNT:I = 0x0

.field public static final whitelist SILENCE:I = 0xc9

.field public static final whitelist SKIP_RINGING:I = 0xc8

.field public static final whitelist SPLIT_CONFERENCE:I = 0x12d

.field public static final whitelist START_CONNECTION:I = 0x3

.field public static final whitelist SWAP:I = 0x195

.field public static final whitelist UNMUTE:I = 0xcb


# instance fields
.field private greylist-max-o mEventName:I

.field private greylist-max-o mTimeSinceLastEvent:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 140
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IJ)V
    .registers 4
    .param p1, "eventName"    # I
    .param p2, "timestamp"    # J

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mEventName:I

    .line 159
    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mTimeSinceLastEvent:J

    .line 160
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mEventName:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mTimeSinceLastEvent:J

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventName()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mEventName:I

    return v0
.end method

.method public whitelist getTimeSinceLastEvent()J
    .registers 3

    .line 172
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mTimeSinceLastEvent:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 182
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mEventName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$AnalyticsEvent;->mTimeSinceLastEvent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    return-void
.end method
