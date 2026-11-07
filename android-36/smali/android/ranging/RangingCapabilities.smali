.class public final Landroid/ranging/RangingCapabilities;
.super Ljava/lang/Object;
.source "RangingCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingCapabilities$Builder;,
        Landroid/ranging/RangingCapabilities$RangingTechnologyAvailability;,
        Landroid/ranging/RangingCapabilities$TechnologyCapabilities;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/RangingCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISABLED_REGULATORY:I = 0x2

.field public static final whitelist DISABLED_USER:I = 0x1

.field public static final whitelist DISABLED_USER_RESTRICTIONS:I = 0x4

.field public static final whitelist ENABLED:I = 0x3

.field public static final whitelist NOT_SUPPORTED:I


# instance fields
.field private final blacklist mAvailabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBleRssiCapabilities:Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

.field private final blacklist mCsCapabilities:Landroid/ranging/ble/cs/BleCsRangingCapabilities;

.field private final blacklist mRttRangingCapabilities:Landroid/ranging/wifi/rtt/RttRangingCapabilities;

.field private final blacklist mUwbCapabilities:Landroid/ranging/uwb/UwbRangingCapabilities;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 154
    new-instance v0, Landroid/ranging/RangingCapabilities$1;

    invoke-direct {v0}, Landroid/ranging/RangingCapabilities$1;-><init>()V

    sput-object v0, Landroid/ranging/RangingCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-class v0, Landroid/ranging/uwb/UwbRangingCapabilities;

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/uwb/UwbRangingCapabilities;

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/uwb/UwbRangingCapabilities;

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mUwbCapabilities:Landroid/ranging/uwb/UwbRangingCapabilities;

    .line 137
    const-class v0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mRttRangingCapabilities:Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    .line 139
    const-class v0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mCsCapabilities:Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    .line 141
    const-class v0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mBleRssiCapabilities:Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/ranging/RangingCapabilities;->mAvailabilities:Ljava/util/Map;

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4f
    if-ge v1, v0, :cond_69

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    .local v3, "value":I
    iget-object v4, p0, Landroid/ranging/RangingCapabilities;->mAvailabilities:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v2    # "key":I
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 151
    .end local v1    # "i":I
    :cond_69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/RangingCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/RangingCapabilities$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/ranging/RangingCapabilities$Builder;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {p1}, Landroid/ranging/RangingCapabilities$Builder;->-$$Nest$fgetmCapabilities(Landroid/ranging/RangingCapabilities$Builder;)Ljava/util/HashMap;

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/uwb/UwbRangingCapabilities;

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mUwbCapabilities:Landroid/ranging/uwb/UwbRangingCapabilities;

    .line 124
    invoke-static {p1}, Landroid/ranging/RangingCapabilities$Builder;->-$$Nest$fgetmCapabilities(Landroid/ranging/RangingCapabilities$Builder;)Ljava/util/HashMap;

    move-result-object v0

    .line 125
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mRttRangingCapabilities:Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    .line 126
    invoke-static {p1}, Landroid/ranging/RangingCapabilities$Builder;->-$$Nest$fgetmCapabilities(Landroid/ranging/RangingCapabilities$Builder;)Ljava/util/HashMap;

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mCsCapabilities:Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    .line 128
    invoke-static {p1}, Landroid/ranging/RangingCapabilities$Builder;->-$$Nest$fgetmCapabilities(Landroid/ranging/RangingCapabilities$Builder;)Ljava/util/HashMap;

    move-result-object v0

    .line 129
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mBleRssiCapabilities:Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    .line 130
    invoke-static {p1}, Landroid/ranging/RangingCapabilities$Builder;->-$$Nest$fgetmAvailabilities(Landroid/ranging/RangingCapabilities$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/RangingCapabilities;->mAvailabilities:Ljava/util/Map;

    .line 131
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/RangingCapabilities$Builder;Landroid/ranging/RangingCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingCapabilities;-><init>(Landroid/ranging/RangingCapabilities$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBleRssiCapabilities()Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mBleRssiCapabilities:Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    return-object v0
.end method

.method public whitelist getCsCapabilities()Landroid/ranging/ble/cs/BleCsRangingCapabilities;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mCsCapabilities:Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    return-object v0
.end method

.method public whitelist getRttRangingCapabilities()Landroid/ranging/wifi/rtt/RttRangingCapabilities;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mRttRangingCapabilities:Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    return-object v0
.end method

.method public whitelist getTechnologyAvailability()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mAvailabilities:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getUwbCapabilities()Landroid/ranging/uwb/UwbRangingCapabilities;
    .registers 2

    .line 189
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mUwbCapabilities:Landroid/ranging/uwb/UwbRangingCapabilities;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingCapabilities{ mUwbCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingCapabilities;->mUwbCapabilities:Landroid/ranging/uwb/UwbRangingCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRttRangingCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingCapabilities;->mRttRangingCapabilities:Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCsCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingCapabilities;->mCsCapabilities:Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBleRssiCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingCapabilities;->mBleRssiCapabilities:Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvailabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingCapabilities;->mAvailabilities:Ljava/util/Map;

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
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mUwbCapabilities:Landroid/ranging/uwb/UwbRangingCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 231
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mRttRangingCapabilities:Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 232
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mCsCapabilities:Landroid/ranging/ble/cs/BleCsRangingCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mBleRssiCapabilities:Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mAvailabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Landroid/ranging/RangingCapabilities;->mAvailabilities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_27

    .line 239
    :cond_4e
    return-void
.end method
