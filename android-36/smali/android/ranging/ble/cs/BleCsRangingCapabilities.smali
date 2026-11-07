.class public final Landroid/ranging/ble/cs/BleCsRangingCapabilities;
.super Ljava/lang/Object;
.source "BleCsRangingCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/ranging/RangingCapabilities$TechnologyCapabilities;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;,
        Landroid/ranging/ble/cs/BleCsRangingCapabilities$SecurityLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/ble/cs/BleCsRangingCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CS_SECURITY_LEVEL_FOUR:I = 0x4

.field public static final whitelist CS_SECURITY_LEVEL_ONE:I = 0x1


# instance fields
.field private final blacklist mBluetoothAddress:Ljava/lang/String;

.field private final blacklist mSupportedSecurityLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/ranging/ble/cs/BleCsRangingCapabilities$1;

    invoke-direct {v0}, Landroid/ranging/ble/cs/BleCsRangingCapabilities$1;-><init>()V

    sput-object v0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mSupportedSecurityLevels:Ljava/util/List;

    .line 91
    iget-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mSupportedSecurityLevels:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/ble/cs/BleCsRangingCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/ble/cs/BleCsRangingCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;->-$$Nest$fgetmSupportedSecurityLevels(Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mSupportedSecurityLevels:Ljava/util/List;

    .line 86
    invoke-static {p1}, Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;->-$$Nest$fgetmBluetoothAddress(Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;Landroid/ranging/ble/cs/BleCsRangingCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/ble/cs/BleCsRangingCapabilities;-><init>(Landroid/ranging/ble/cs/BleCsRangingCapabilities$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSupportedSecurityLevels()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mSupportedSecurityLevels:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getTechnology()I
    .registers 2

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleCsRangingCapabilities{ mBluetoothAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedSecurityLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mSupportedSecurityLevels:Ljava/util/List;

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
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 139
    iget-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mSupportedSecurityLevels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 140
    iget-object v0, p0, Landroid/ranging/ble/cs/BleCsRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return-void
.end method
