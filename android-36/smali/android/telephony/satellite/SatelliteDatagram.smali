.class public final Landroid/telephony/satellite/SatelliteDatagram;
.super Ljava/lang/Object;
.source "SatelliteDatagram.java"

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
            "Landroid/telephony/satellite/SatelliteDatagram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/telephony/satellite/SatelliteDatagram$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteDatagram$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteDatagram;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteDatagram-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteDatagram;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "data"    # [B

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/telephony/satellite/SatelliteDatagram;->mData:[B

    .line 41
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteDatagram;->mData:[B

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSatelliteDatagram()[B
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteDatagram;->mData:[B

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Landroid/telephony/satellite/SatelliteDatagram;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 55
    return-void
.end method
