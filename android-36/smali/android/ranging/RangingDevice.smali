.class public final Landroid/ranging/RangingDevice;
.super Ljava/lang/Object;
.source "RangingDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingDevice$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/RangingDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/ranging/RangingDevice$1;

    invoke-direct {v0}, Landroid/ranging/RangingDevice$1;-><init>()V

    sput-object v0, Landroid/ranging/RangingDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 46
    .local v0, "mostSigBits":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 47
    .local v2, "leastSigBits":J
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v4, p0, Landroid/ranging/RangingDevice;->mId:Ljava/util/UUID;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/RangingDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/RangingDevice$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/RangingDevice$Builder;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Landroid/ranging/RangingDevice$Builder;->-$$Nest$fgetmId(Landroid/ranging/RangingDevice$Builder;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingDevice;->mId:Ljava/util/UUID;

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/RangingDevice$Builder;Landroid/ranging/RangingDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingDevice;-><init>(Landroid/ranging/RangingDevice$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 91
    instance-of v0, p1, Landroid/ranging/RangingDevice;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Landroid/ranging/RangingDevice;

    .line 92
    .local v0, "device":Landroid/ranging/RangingDevice;
    iget-object v1, p0, Landroid/ranging/RangingDevice;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/ranging/RangingDevice;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 94
    .end local v0    # "device":Landroid/ranging/RangingDevice;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/ranging/RangingDevice;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/ranging/RangingDevice;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingDevice{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingDevice;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget-object v0, p0, Landroid/ranging/RangingDevice;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-object v0, p0, Landroid/ranging/RangingDevice;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    return-void
.end method
