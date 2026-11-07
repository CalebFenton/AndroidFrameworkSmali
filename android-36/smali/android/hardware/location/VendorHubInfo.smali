.class public final Landroid/hardware/location/VendorHubInfo;
.super Ljava/lang/Object;
.source "VendorHubInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/VendorHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtendedInfo:Landroid/os/ParcelableHolder;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Landroid/hardware/location/VendorHubInfo$1;

    invoke-direct {v0}, Landroid/hardware/location/VendorHubInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/location/VendorHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/VendorHubInfo;)V
    .registers 3
    .param p1, "halHubInfo"    # Landroid/hardware/contexthub/VendorHubInfo;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Landroid/hardware/contexthub/VendorHubInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/VendorHubInfo;->mName:Ljava/lang/String;

    .line 41
    iget v0, p1, Landroid/hardware/contexthub/VendorHubInfo;->version:I

    iput v0, p0, Landroid/hardware/location/VendorHubInfo;->mVersion:I

    .line 42
    iget-object v0, p1, Landroid/hardware/contexthub/VendorHubInfo;->extendedInfo:Landroid/os/ParcelableHolder;

    iput-object v0, p0, Landroid/hardware/location/VendorHubInfo;->mExtendedInfo:Landroid/os/ParcelableHolder;

    .line 43
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/VendorHubInfo;->mName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/VendorHubInfo;->mVersion:I

    .line 48
    sget-object v0, Landroid/os/ParcelableHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableHolder;

    iput-object v0, p0, Landroid/hardware/location/VendorHubInfo;->mExtendedInfo:Landroid/os/ParcelableHolder;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/VendorHubInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/VendorHubInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/hardware/location/VendorHubInfo;->mExtendedInfo:Landroid/os/ParcelableHolder;

    invoke-virtual {v0}, Landroid/os/ParcelableHolder;->describeContents()I

    move-result v0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/hardware/location/VendorHubInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 59
    iget v0, p0, Landroid/hardware/location/VendorHubInfo;->mVersion:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "VendorHub Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/location/VendorHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Landroid/hardware/location/VendorHubInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget-object v0, p0, Landroid/hardware/location/VendorHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Landroid/hardware/location/VendorHubInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Landroid/hardware/location/VendorHubInfo;->mExtendedInfo:Landroid/os/ParcelableHolder;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelableHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    return-void
.end method
