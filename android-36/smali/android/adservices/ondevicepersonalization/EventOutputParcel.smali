.class public final Landroid/adservices/ondevicepersonalization/EventOutputParcel;
.super Ljava/lang/Object;
.source "EventOutputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/EventOutputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventOutputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/EventOutputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/EventLogRecord;)V
    .registers 3
    .param p1, "eventLogRecord"    # Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 69
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/EventOutput;)V
    .registers 3
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/EventOutput;

    .line 40
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/EventOutput;->getEventLogRecord()Landroid/adservices/ondevicepersonalization/EventLogRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/adservices/ondevicepersonalization/EventOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/EventLogRecord;)V

    .line 41
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 108
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_f

    goto :goto_17

    :cond_f
    sget-object v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 110
    .local v0, "eventLogRecord":Landroid/adservices/ondevicepersonalization/EventLogRecord;
    :goto_17
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 113
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEventLogRecord()Landroid/adservices/ondevicepersonalization/EventLogRecord;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 92
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventOutputParcel;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 94
    :cond_14
    return-void
.end method
