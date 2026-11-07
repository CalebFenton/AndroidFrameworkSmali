.class public final Landroid/telecom/ParcelableCallAnalytics$EventTiming;
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
    name = "EventTiming"
.end annotation


# static fields
.field public static final whitelist ACCEPT_TIMING:I = 0x0

.field public static final whitelist BIND_CS_TIMING:I = 0x6

.field public static final whitelist BLOCK_CHECK_FINISHED_TIMING:I = 0x9

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIRECT_TO_VM_FINISHED_TIMING:I = 0x8

.field public static final whitelist DISCONNECT_TIMING:I = 0x2

.field public static final whitelist DND_PRE_CALL_PRE_CHECK_TIMING:I = 0xc

.field public static final whitelist FILTERING_COMPLETED_TIMING:I = 0xa

.field public static final whitelist FILTERING_TIMED_OUT_TIMING:I = 0xb

.field public static final whitelist HOLD_TIMING:I = 0x3

.field public static final whitelist INVALID:I = 0xf423f

.field public static final whitelist OUTGOING_TIME_TO_DIALING_TIMING:I = 0x5

.field public static final whitelist REJECT_TIMING:I = 0x1

.field public static final whitelist SCREENING_COMPLETED_TIMING:I = 0x7

.field public static final blacklist START_CONNECTION_TO_REQUEST_DISCONNECT_TIMING:I = 0xc

.field public static final whitelist UNHOLD_TIMING:I = 0x4


# instance fields
.field private greylist-max-o mName:I

.field private greylist-max-o mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 206
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IJ)V
    .registers 4
    .param p1, "name"    # I
    .param p2, "time"    # J

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p1, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    .line 225
    iput-wide p2, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    .line 226
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    .line 231
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/ParcelableCallAnalytics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$EventTiming;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getName()I
    .registers 2

    .line 234
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    return v0
.end method

.method public whitelist getTime()J
    .registers 3

    .line 238
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 248
    iget v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-wide v0, p0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    return-void
.end method
