.class public final Landroid/companion/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Landroid/companion/DeviceFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/BluetoothDeviceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/companion/DeviceFilter<",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/BluetoothDeviceFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAddress:Ljava/lang/String;

.field private final greylist-max-o mNamePattern:Ljava/util/regex/Pattern;

.field private final greylist-max-o mServiceUuidMasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Landroid/companion/BluetoothDeviceFilter$1;

    invoke-direct {v0}, Landroid/companion/BluetoothDeviceFilter$1;-><init>()V

    sput-object v0, Landroid/companion/BluetoothDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    nop

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilter;->readUuids(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    .line 69
    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilter;->readUuids(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v3

    .line 65
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/companion/BluetoothDeviceFilter;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/BluetoothDeviceFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/BluetoothDeviceFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "namePattern"    # Ljava/util/regex/Pattern;
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p3, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p4, "serviceUuidMasks":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    .line 59
    iput-object p2, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    .line 60
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    .line 61
    invoke-static {p4}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/companion/BluetoothDeviceFilter-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/BluetoothDeviceFilter;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static greylist-max-o readUuids(Landroid/os/Parcel;)Ljava/util/List;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 132
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 133
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/companion/BluetoothDeviceFilter;

    .line 134
    .local v2, "that":Landroid/companion/BluetoothDeviceFilter;
    iget-object v3, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v4, v2, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    iget-object v4, v2, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    .line 136
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    iget-object v4, v2, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    .line 137
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 134
    :goto_3f
    return v0

    .line 132
    .end local v2    # "that":Landroid/companion/BluetoothDeviceFilter;
    :cond_40
    :goto_40
    return v1
.end method

.method public greylist-max-r getAddress()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDeviceDisplayName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 87
    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothDeviceFilter;->getDeviceDisplayName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getMediumType()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getNamePattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public greylist-max-o getServiceUuidMasks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getServiceUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 142
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    iget-object v3, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o matches(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 79
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesAddress(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    .line 80
    invoke-static {v0, v1, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesServiceUuids(Ljava/util/List;Ljava/util/List;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 81
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 79
    :goto_1f
    return v0
.end method

.method public bridge synthetic blacklist matches(Landroid/os/Parcelable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothDeviceFilter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothDeviceFilter{mNamePattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuidMasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 126
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 127
    return-void
.end method
