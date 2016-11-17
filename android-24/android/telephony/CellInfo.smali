.class public abstract Landroid/telephony/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_TYPE_ANTENNA:I = 0x1

.field public static final TIMESTAMP_TYPE_JAVA_RIL:I = 0x4

.field public static final TIMESTAMP_TYPE_MODEM:I = 0x2

.field public static final TIMESTAMP_TYPE_OEM_RIL:I = 0x3

.field public static final TIMESTAMP_TYPE_UNKNOWN:I = 0x0

.field protected static final TYPE_CDMA:I = 0x2

.field protected static final TYPE_GSM:I = 0x1

.field protected static final TYPE_LTE:I = 0x3

.field protected static final TYPE_WCDMA:I = 0x4


# instance fields
.field private mRegistered:Z

.field private mTimeStamp:J

.field private mTimeStampType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 198
    new-instance v0, Landroid/telephony/CellInfo$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@6
    .line 63
    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@8
    .line 64
    const-wide v0, 0x7fffffffffffffffL

    #@d
    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@f
    .line 61
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    if-ne v1, v0, :cond_0

    #@a
    :goto_0
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@c
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@12
    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@18
    .line 191
    return-void

    #@19
    .line 192
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/telephony/CellInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/telephony/CellInfo;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iget-boolean v0, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    #@5
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@7
    .line 70
    iget v0, p1, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@9
    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@b
    .line 71
    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@d
    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@f
    .line 68
    return-void
.end method

.method private static timeStampTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 135
    packed-switch p0, :pswitch_data_0

    #@3
    .line 145
    const-string/jumbo v0, "unknown"

    #@6
    return-object v0

    #@7
    .line 137
    :pswitch_0
    const-string/jumbo v0, "antenna"

    #@a
    return-object v0

    #@b
    .line 139
    :pswitch_1
    const-string/jumbo v0, "modem"

    #@e
    return-object v0

    #@f
    .line 141
    :pswitch_2
    const-string/jumbo v0, "oem_ril"

    #@12
    return-object v0

    #@13
    .line 143
    :pswitch_3
    const-string/jumbo v0, "java_ril"

    #@16
    return-object v0

    #@17
    .line 135
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 167
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 119
    if-nez p1, :cond_0

    #@4
    .line 120
    return v5

    #@5
    .line 122
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 123
    return v4

    #@8
    .line 126
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/telephony/CellInfo;

    #@b
    move-object v3, v0

    #@c
    .line 127
    .local v3, "o":Landroid/telephony/CellInfo;
    iget-boolean v6, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@e
    iget-boolean v7, v3, Landroid/telephony/CellInfo;->mRegistered:Z

    #@10
    if-ne v6, v7, :cond_3

    #@12
    .line 128
    iget-wide v6, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@14
    iget-wide v8, v3, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@16
    cmp-long v6, v6, v8

    #@18
    if-nez v6, :cond_3

    #@1a
    iget v6, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@1c
    iget v7, v3, Landroid/telephony/CellInfo;->mTimeStampType:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    if-ne v6, v7, :cond_2

    #@20
    .line 127
    :goto_0
    return v4

    #@21
    :cond_2
    move v4, v5

    #@22
    .line 128
    goto :goto_0

    #@23
    :cond_3
    move v4, v5

    #@24
    .line 127
    goto :goto_0

    #@25
    .line 129
    .end local v3    # "o":Landroid/telephony/CellInfo;
    :catch_0
    move-exception v2

    #@26
    .line 130
    .local v2, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method public getTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 85
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@2
    return-wide v0
.end method

.method public getTimeStampType()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    #@7
    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@9
    const-wide/16 v4, 0x3e8

    #@b
    div-long/2addr v2, v4

    #@c
    long-to-int v1, v2

    #@d
    mul-int/lit8 v1, v1, 0x1f

    #@f
    add-int/2addr v0, v1

    #@10
    .line 114
    iget v1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@12
    mul-int/lit8 v1, v1, 0x1f

    #@14
    .line 113
    add-int/2addr v0, v1

    #@15
    return v0

    #@16
    :cond_0
    const/4 v0, 0x1

    #@17
    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    #@0
    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@2
    return v0
.end method

.method public setRegistered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    #@0
    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@2
    .line 79
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    #@0
    .prologue
    .line 89
    iput-wide p1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@2
    .line 88
    return-void
.end method

.method public setTimeStampType(I)V
    .locals 2
    .param p1, "timeStampType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x4

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 104
    :cond_0
    iput v1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@8
    .line 102
    :goto_0
    return-void

    #@9
    .line 106
    :cond_1
    iput p1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 154
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "mRegistered="

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v3

    #@c
    iget-boolean v2, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    const-string/jumbo v2, "YES"

    #@13
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 155
    iget v2, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@18
    invoke-static {v2}, Landroid/telephony/CellInfo;->timeStampTypeToString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 156
    .local v1, "timeStampType":Ljava/lang/String;
    const-string/jumbo v2, " mTimeStampType="

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    .line 157
    const-string/jumbo v2, " mTimeStamp="

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    move-result-object v2

    #@2d
    iget-wide v4, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@2f
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, "ns"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    return-object v2

    #@3e
    .line 154
    .end local v1    # "timeStampType":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "NO"

    #@41
    goto :goto_0
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "type"    # I

    #@0
    .prologue
    .line 180
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@3
    .line 181
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 182
    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 183
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    #@12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 179
    return-void

    #@16
    .line 181
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method
