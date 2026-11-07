.class public final Landroid/media/NearbyDevice;
.super Ljava/lang/Object;
.source "NearbyDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/NearbyDevice$RangeZone;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/NearbyDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RANGE_CLOSE:I = 0x3

.field public static final whitelist RANGE_FAR:I = 0x1

.field public static final whitelist RANGE_LONG:I = 0x2

.field public static final whitelist RANGE_UNKNOWN:I = 0x0

.field private static final blacklist RANGE_WEIGHT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RANGE_WITHIN_REACH:I = 0x4


# instance fields
.field private final blacklist mMediaRoute2Id:Ljava/lang/String;

.field private final blacklist mRangeZone:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 111
    nop

    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/media/NearbyDevice;->RANGE_WEIGHT_LIST:Ljava/util/List;

    .line 132
    new-instance v0, Landroid/media/NearbyDevice$1;

    invoke-direct {v0}, Landroid/media/NearbyDevice$1;-><init>()V

    sput-object v0, Landroid/media/NearbyDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    .line 129
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/NearbyDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/NearbyDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "mediaRoute2Id"    # Ljava/lang/String;
    .param p2, "rangeZone"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    .line 123
    iput p2, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    .line 124
    return-void
.end method

.method public static blacklist compareRangeZones(II)I
    .registers 5
    .param p0, "rangeZone"    # I
    .param p1, "anotherRangeZone"    # I

    .line 152
    if-ne p0, p1, :cond_4

    .line 153
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_4
    sget-object v0, Landroid/media/NearbyDevice;->RANGE_WEIGHT_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Landroid/media/NearbyDevice;->RANGE_WEIGHT_LIST:Ljava/util/List;

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 155
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_1c

    .line 156
    const/4 v0, -0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x1

    .line 155
    :goto_1d
    return v0
.end method

.method public static blacklist rangeZoneToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "rangeZone"    # I

    .line 92
    packed-switch p0, :pswitch_data_16

    .line 104
    const-string v0, "Invalid"

    return-object v0

    .line 102
    :pswitch_6
    const-string v0, "WITHIN_REACH"

    return-object v0

    .line 100
    :pswitch_9
    const-string v0, "CLOSE"

    return-object v0

    .line 98
    :pswitch_c
    const-string v0, "LONG"

    return-object v0

    .line 96
    :pswitch_f
    const-string v0, "FAR"

    return-object v0

    .line 94
    :pswitch_12
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMediaRoute2Id()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRangeZone()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NearbyDevice{mediaRoute2Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rangeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    .line 168
    invoke-static {v1}, Landroid/media/NearbyDevice;->rangeZoneToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    iget-object v0, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
