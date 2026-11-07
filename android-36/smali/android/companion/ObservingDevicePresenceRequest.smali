.class public final Landroid/companion/ObservingDevicePresenceRequest;
.super Ljava/lang/Object;
.source "ObservingDevicePresenceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ObservingDevicePresenceRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/ObservingDevicePresenceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PARCEL_UUID_NOT_NULL:I = 0x1

.field private static final blacklist PARCEL_UUID_NULL:I


# instance fields
.field private final blacklist mAssociationId:I

.field private final blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/companion/ObservingDevicePresenceRequest$1;

    invoke-direct {v0}, Landroid/companion/ObservingDevicePresenceRequest$1;-><init>()V

    sput-object v0, Landroid/companion/ObservingDevicePresenceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/ParcelUuid;)V
    .registers 3
    .param p1, "associationId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    .line 55
    iput-object p2, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/ParcelUuid;Landroid/companion/ObservingDevicePresenceRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(ILandroid/os/ParcelUuid;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_13

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_1d

    .line 63
    :cond_13
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    .line 65
    :goto_1d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/ObservingDevicePresenceRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 126
    :cond_4
    instance-of v1, p1, Landroid/companion/ObservingDevicePresenceRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    move-object v1, p1

    check-cast v1, Landroid/companion/ObservingDevicePresenceRequest;

    .line 128
    .local v1, "that":Landroid/companion/ObservingDevicePresenceRequest;
    iget-object v3, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    iget-object v4, v1, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    iget v4, v1, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 126
    .end local v1    # "that":Landroid/companion/ObservingDevicePresenceRequest;
    :cond_1f
    return v2
.end method

.method public whitelist getAssociationId()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    return v0
.end method

.method public whitelist getUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 133
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObservingDevicePresenceRequest { Association Id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ParcelUuid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mAssociationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_e

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 91
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    :goto_17
    return-void
.end method
