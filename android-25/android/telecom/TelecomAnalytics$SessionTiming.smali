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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomAnalytics$SessionTiming$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/telecom/TimedEvent",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation
.end field

.field public static final CSW_ADD_CONFERENCE_CALL:I = 0x6c

.field public static final CSW_HANDLE_CREATE_CONNECTION_COMPLETE:I = 0x64

.field public static final CSW_REMOVE_CALL:I = 0x6a

.field public static final CSW_SET_ACTIVE:I = 0x65

.field public static final CSW_SET_DIALING:I = 0x67

.field public static final CSW_SET_DISCONNECTED:I = 0x68

.field public static final CSW_SET_IS_CONFERENCED:I = 0x6b

.field public static final CSW_SET_ON_HOLD:I = 0x69

.field public static final CSW_SET_RINGING:I = 0x66

.field public static final ICA_ANSWER_CALL:I = 0x1

.field public static final ICA_CONFERENCE:I = 0x8

.field public static final ICA_DISCONNECT_CALL:I = 0x3

.field public static final ICA_HOLD_CALL:I = 0x4

.field public static final ICA_MUTE:I = 0x6

.field public static final ICA_REJECT_CALL:I = 0x2

.field public static final ICA_SET_AUDIO_ROUTE:I = 0x7

.field public static final ICA_UNHOLD_CALL:I = 0x5


# instance fields
.field private mId:I

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/telecom/TelecomAnalytics$SessionTiming$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/TelecomAnalytics$SessionTiming$1;-><init>()V

    #@5
    .line 46
    sput-object v0, Landroid/telecom/TelecomAnalytics$SessionTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 45
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "time"    # J

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Landroid/telecom/TimedEvent;-><init>()V

    #@3
    .line 83
    iput p1, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mId:I

    #@5
    .line 84
    iput-wide p2, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mTime:J

    #@7
    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Landroid/telecom/TimedEvent;-><init>()V

    #@3
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mId:I

    #@9
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mTime:J

    #@f
    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/TelecomAnalytics$SessionTiming;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/TelecomAnalytics$SessionTiming;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getKey()Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 94
    iget v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mId:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/telecom/TelecomAnalytics$SessionTiming;->getKey()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 99
    iget-wide v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mTime:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 110
    iget-wide v0, p0, Landroid/telecom/TelecomAnalytics$SessionTiming;->mTime:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 108
    return-void
.end method
