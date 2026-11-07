.class public Landroid/telephony/DataConnectionRealTimeInfo;
.super Ljava/lang/Object;
.source "DataConnectionRealTimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataConnectionRealTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DC_POWER_STATE_HIGH:I = 0x3

.field public static final greylist-max-o DC_POWER_STATE_LOW:I = 0x1

.field public static final greylist-max-o DC_POWER_STATE_MEDIUM:I = 0x2

.field public static final greylist-max-o DC_POWER_STATE_UNKNOWN:I = 0x7fffffff


# instance fields
.field private greylist-max-o mDcPowerState:I

.field private greylist-max-o mTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/telephony/DataConnectionRealTimeInfo$1;

    invoke-direct {v0}, Landroid/telephony/DataConnectionRealTimeInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 60
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 61
    return-void
.end method

.method public constructor greylist-max-o <init>(JI)V
    .registers 4
    .param p1, "time"    # J
    .param p3, "dcPowerState"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 50
    iput p3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 51
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/DataConnectionRealTimeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 122
    return v0

    .line 124
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 125
    return v1

    .line 127
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 128
    return v1

    .line 130
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 131
    .local v2, "other":Landroid/telephony/DataConnectionRealTimeInfo;
    iget-wide v3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    iget-wide v5, v2, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    iget v3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    iget v4, v2, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    if-ne v3, v4, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0
.end method

.method public greylist-max-o getDcPowerState()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return v0
.end method

.method public greylist-max-o getTime()J
    .registers 3

    .line 75
    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 112
    const-wide/16 v0, 0x11

    .line 113
    .local v0, "prime":J
    const-wide/16 v2, 0x1

    .line 114
    .local v2, "result":J
    const-wide/16 v4, 0x11

    mul-long v6, v2, v4

    iget-wide v8, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    add-long/2addr v6, v8

    .line 115
    .end local v2    # "result":J
    .local v6, "result":J
    mul-long/2addr v4, v6

    iget v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    int-to-long v2, v2

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    .line 116
    long-to-int v2, v6

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 140
    const-string v1, " mDcPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void
.end method
