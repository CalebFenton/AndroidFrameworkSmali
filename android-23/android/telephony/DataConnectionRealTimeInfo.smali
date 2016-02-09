.class public Landroid/telephony/DataConnectionRealTimeInfo;
.super Ljava/lang/Object;
.source "DataConnectionRealTimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DataConnectionRealTimeInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/DataConnectionRealTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static DC_POWER_STATE_HIGH:I

.field public static DC_POWER_STATE_LOW:I

.field public static DC_POWER_STATE_MEDIUM:I

.field public static DC_POWER_STATE_UNKNOWN:I


# instance fields
.field private mDcPowerState:I

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const/4 v0, 0x1

    #@1
    sput v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    #@3
    .line 32
    const/4 v0, 0x2

    #@4
    sput v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_MEDIUM:I

    #@6
    .line 33
    const/4 v0, 0x3

    #@7
    sput v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    #@9
    .line 34
    const v0, 0x7fffffff

    #@c
    sput v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_UNKNOWN:I

    #@e
    .line 92
    new-instance v0, Landroid/telephony/DataConnectionRealTimeInfo$1;

    #@10
    invoke-direct {v0}, Landroid/telephony/DataConnectionRealTimeInfo$1;-><init>()V

    #@13
    .line 91
    sput-object v0, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const-wide v0, 0x7fffffffffffffffL

    #@8
    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@a
    .line 55
    sget v0, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_UNKNOWN:I

    #@c
    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@e
    .line 53
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "dcPowerState"    # I

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-wide p1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@5
    .line 45
    iput p3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@7
    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@9
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@f
    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 116
    if-ne p0, p1, :cond_0

    #@4
    .line 117
    return v1

    #@5
    .line 119
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 120
    return v2

    #@8
    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/DataConnectionRealTimeInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 123
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 125
    check-cast v0, Landroid/telephony/DataConnectionRealTimeInfo;

    #@16
    .line 126
    .local v0, "other":Landroid/telephony/DataConnectionRealTimeInfo;
    iget-wide v4, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@18
    iget-wide v6, v0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@1a
    cmp-long v3, v4, v6

    #@1c
    if-nez v3, :cond_4

    #@1e
    .line 127
    iget v3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@20
    iget v4, v0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@22
    if-ne v3, v4, :cond_3

    #@24
    .line 126
    :goto_0
    return v1

    #@25
    :cond_3
    move v1, v2

    #@26
    .line 127
    goto :goto_0

    #@27
    :cond_4
    move v1, v2

    #@28
    .line 126
    goto :goto_0
.end method

.method public getDcPowerState()I
    .locals 1

    #@0
    .prologue
    .line 77
    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@2
    return v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 70
    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@2
    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x11

    #@2
    .line 107
    const-wide/16 v0, 0x11

    #@4
    .line 109
    .local v0, "prime":J
    iget-wide v4, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@6
    add-long v2, v6, v4

    #@8
    .line 110
    .local v2, "result":J
    mul-long v4, v6, v2

    #@a
    iget v6, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@c
    int-to-long v6, v6

    #@d
    add-long/2addr v4, v6

    #@e
    add-long/2addr v2, v4

    #@f
    .line 111
    long-to-int v4, v2

    #@10
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 134
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "mTime="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    iget-wide v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@11
    .line 135
    const-string/jumbo v1, " mDcPowerState="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 87
    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 88
    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 86
    return-void
.end method
