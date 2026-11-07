.class public final Landroid/telecom/TelecomAnalytics$SessionTiming;
.super Landroid/telecom/TimedEvent;
.source "TelecomAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/TelecomAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionTiming"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/telecom/TimedEvent<",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CSW_ADD_CONFERENCE_CALL:I = 0x6c

.field public static final whitelist CSW_HANDLE_CREATE_CONNECTION_COMPLETE:I = 0x64

.field public static final whitelist CSW_REMOVE_CALL:I = 0x6a

.field public static final whitelist CSW_SET_ACTIVE:I = 0x65

.field public static final whitelist CSW_SET_DIALING:I = 0x67

.field public static final whitelist CSW_SET_DISCONNECTED:I = 0x68

.field public static final whitelist CSW_SET_IS_CONFERENCED:I = 0x6b

.field public static final whitelist CSW_SET_ON_HOLD:I = 0x69

.field public static final whitelist CSW_SET_RINGING:I = 0x66

.field public static final whitelist ICA_ANSWER_CALL:I = 0x1

.field public static final whitelist ICA_CONFERENCE:I = 0x8

.field public static final whitelist ICA_DISCONNECT_CALL:I = 0x3

.field public static final whitelist ICA_HOLD_CALL:I = 0x4

.field public static final whitelist ICA_MUTE:I = 0x6

.field public static final whitelist ICA_REJECT_CALL:I = 0x2

.field public static final whitelist ICA_SET_AUDIO_ROUTE:I = 0x7

.field public static final whitelist ICA_UNHOLD_CALL:I = 0x5


# instance fields
.field private greylist-max-o mId:I

.field private greylist-max-o mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/telecom/TelecomAnalytics$SessionTiming$1;

    invoke-direct {v0}, Landroid/telecom/TelecomAnalytics$SessionTiming$1;-><init>()V

    sput-object v0, Landroid/telecom/TelecomAnalytics$SessionTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IJ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "time"    # J

    .line 82
    invoke-direct {p0}, Landroid/telecom/TimedEvent;-><init>()V

    .line 83
    iput p1, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mId:I

    .line 84
    iput-wide p2, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mTime:J

    .line 85
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Landroid/telecom/TimedEvent;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mId:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mTime:J

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/TelecomAnalytics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/TelecomAnalytics$SessionTiming;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKey()Ljava/lang/Integer;
    .registers 2

    .line 94
    iget v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getKey()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/telecom/TelecomAnalytics$SessionTiming;->getKey()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTime()J
    .registers 3

    .line 99
    iget-wide v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mTime:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-wide v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    return-void
.end method
