.class public final Landroid/companion/DevicePresenceEvent;
.super Ljava/lang/Object;
.source "DevicePresenceEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/DevicePresenceEvent$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/DevicePresenceEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_BLE_APPEARED:I = 0x0

.field public static final whitelist EVENT_BLE_DISAPPEARED:I = 0x1

.field public static final whitelist EVENT_BT_CONNECTED:I = 0x2

.field public static final whitelist EVENT_BT_DISCONNECTED:I = 0x3

.field public static final whitelist EVENT_SELF_MANAGED_APPEARED:I = 0x4

.field public static final whitelist EVENT_SELF_MANAGED_DISAPPEARED:I = 0x5

.field public static final whitelist NO_ASSOCIATION:I = -0x1

.field private static final blacklist PARCEL_UUID_NOT_NULL:I = 0x1

.field private static final blacklist PARCEL_UUID_NULL:I


# instance fields
.field private final blacklist mAssociationId:I

.field private final blacklist mEvent:I

.field private final blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 196
    new-instance v0, Landroid/companion/DevicePresenceEvent$1;

    invoke-direct {v0}, Landroid/companion/DevicePresenceEvent$1;-><init>()V

    sput-object v0, Landroid/companion/DevicePresenceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/ParcelUuid;)V
    .registers 4
    .param p1, "associationId"    # I
    .param p2, "event"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    .line 116
    iput p2, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    .line 117
    iput-object p3, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    .line 118
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_19

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    goto :goto_23

    .line 215
    :cond_19
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    .line 217
    :goto_23
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/DevicePresenceEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/DevicePresenceEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 174
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 175
    :cond_4
    instance-of v1, p1, Landroid/companion/DevicePresenceEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    move-object v1, p1

    check-cast v1, Landroid/companion/DevicePresenceEvent;

    .line 177
    .local v1, "that":Landroid/companion/DevicePresenceEvent;
    iget-object v3, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    iget-object v4, v1, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget v3, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    iget v4, v1, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    iget v4, v1, Landroid/companion/DevicePresenceEvent;->mEvent:I

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    return v0

    .line 175
    .end local v1    # "that":Landroid/companion/DevicePresenceEvent;
    :cond_25
    return v2
.end method

.method public whitelist getAssociationId()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    return v0
.end method

.method public whitelist getEvent()I
    .registers 2

    .line 137
    iget v0, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    return v0
.end method

.method public whitelist getUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 192
    iget v0, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObservingDevicePresenceResult { Association Id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ParcelUuid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Event= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 161
    iget v0, p0, Landroid/companion/DevicePresenceEvent;->mAssociationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Landroid/companion/DevicePresenceEvent;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_13

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 167
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Landroid/companion/DevicePresenceEvent;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 170
    :goto_1c
    return-void
.end method
