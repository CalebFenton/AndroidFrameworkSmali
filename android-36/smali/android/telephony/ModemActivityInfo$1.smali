.class Landroid/telephony/ModemActivityInfo$1;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ModemActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ModemActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 194
    .local v1, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 195
    .local v3, "sleepTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "idleTimeMs":I
    sget-object v0, Landroid/telephony/ActivityStatsTechSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/os/Parcelable;

    .line 199
    .local v6, "tempSpecifiers":[Landroid/os/Parcelable;
    array-length v0, v6

    new-array v5, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 201
    .local v5, "activityStatsTechSpecificInfo":[Landroid/telephony/ActivityStatsTechSpecificInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v7, v6

    if-ge v0, v7, :cond_25

    .line 202
    aget-object v7, v6, v0

    check-cast v7, Landroid/telephony/ActivityStatsTechSpecificInfo;

    aput-object v7, v5, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 205
    .end local v0    # "i":I
    :cond_25
    new-instance v0, Landroid/telephony/ModemActivityInfo;

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 191
    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/ModemActivityInfo;
    .registers 3
    .param p1, "size"    # I

    .line 210
    new-array v0, p1, [Landroid/telephony/ModemActivityInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 191
    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->newArray(I)[Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    return-object p1
.end method
