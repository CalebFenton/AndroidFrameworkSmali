.class public final Landroid/hardware/location/NanoAppRpcService;
.super Ljava/lang/Object;
.source "NanoAppRpcService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppRpcService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mServiceId:J

.field private blacklist mServiceVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/hardware/location/NanoAppRpcService$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppRpcService$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppRpcService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JI)V
    .registers 4
    .param p1, "serviceId"    # J
    .param p3, "serviceVersion"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    .line 51
    iput p3, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    .line 52
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    .line 106
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppRpcService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppRpcService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getMajorVersion()I
    .registers 3

    .line 86
    iget v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method private blacklist getMinorVersion()I
    .registers 3

    .line 93
    iget v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private blacklist getPatchVersion()I
    .registers 3

    .line 100
    iget v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 142
    return v0

    .line 145
    :cond_4
    const/4 v1, 0x0

    .line 146
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/NanoAppRpcService;

    if-eqz v2, :cond_21

    .line 147
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/NanoAppRpcService;

    .line 148
    .local v2, "other":Landroid/hardware/location/NanoAppRpcService;
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppRpcService;->getId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 149
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppRpcService;->getVersion()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    if-ne v3, v4, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    move v1, v0

    .line 152
    .end local v2    # "other":Landroid/hardware/location/NanoAppRpcService;
    :cond_21
    return v1
.end method

.method public whitelist getId()J
    .registers 3

    .line 65
    iget-wide v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    return-wide v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 157
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppRpcService;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NanoAppRpcService[Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version = v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-direct {p0}, Landroid/hardware/location/NanoAppRpcService;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/hardware/location/NanoAppRpcService;->getMinorVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/hardware/location/NanoAppRpcService;->getPatchVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget-wide v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget v0, p0, Landroid/hardware/location/NanoAppRpcService;->mServiceVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void
.end method
