.class public final Landroid/net/IpSecSpiResponse;
.super Ljava/lang/Object;
.source "IpSecSpiResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecSpiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IpSecSpiResponse"


# instance fields
.field public final greylist-max-o resourceId:I

.field public final greylist-max-o spi:I

.field public final greylist-max-o status:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/net/IpSecSpiResponse$1;

    invoke-direct {v0}, Landroid/net/IpSecSpiResponse$1;-><init>()V

    sput-object v0, Landroid/net/IpSecSpiResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "inStatus"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_e

    .line 57
    iput p1, p0, Landroid/net/IpSecSpiResponse;->status:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->spi:I

    .line 60
    return-void

    .line 55
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid status implies other args must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(III)V
    .registers 4
    .param p1, "inStatus"    # I
    .param p2, "inResourceId"    # I
    .param p3, "inSpi"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/net/IpSecSpiResponse;->status:I

    .line 49
    iput p2, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 50
    iput p3, p0, Landroid/net/IpSecSpiResponse;->spi:I

    .line 51
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->status:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecSpiResponse;->spi:I

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/IpSecSpiResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/IpSecSpiResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget v0, p0, Landroid/net/IpSecSpiResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Landroid/net/IpSecSpiResponse;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Landroid/net/IpSecSpiResponse;->spi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
