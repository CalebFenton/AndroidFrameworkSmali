.class public final Landroid/net/IpSecUdpEncapResponse;
.super Ljava/lang/Object;
.source "IpSecUdpEncapResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecUdpEncapResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IpSecUdpEncapResponse"


# instance fields
.field public final greylist-max-o fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public final greylist-max-o port:I

.field public final greylist-max-o resourceId:I

.field public final greylist-max-o status:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/net/IpSecUdpEncapResponse$1;

    invoke-direct {v0}, Landroid/net/IpSecUdpEncapResponse$1;-><init>()V

    sput-object v0, Landroid/net/IpSecUdpEncapResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "inStatus"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p1, :cond_10

    .line 63
    iput p1, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    .line 65
    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->port:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 67
    return-void

    .line 61
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid status implies other args must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(IIILjava/io/FileDescriptor;)V
    .registers 7
    .param p1, "inStatus"    # I
    .param p2, "inResourceId"    # I
    .param p3, "inPort"    # I
    .param p4, "inFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_10

    if-eqz p4, :cond_8

    goto :goto_10

    .line 72
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid status implies FD must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_10
    :goto_10
    iput p1, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    .line 75
    iput p2, p0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    .line 76
    iput p3, p0, Landroid/net/IpSecUdpEncapResponse;->port:I

    .line 77
    iget v0, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    if-nez v0, :cond_1f

    invoke-static {p4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 78
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecUdpEncapResponse;->port:I

    .line 84
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/IpSecUdpEncapResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/IpSecUdpEncapResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget v0, p0, Landroid/net/IpSecUdpEncapResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Landroid/net/IpSecUdpEncapResponse;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    return-void
.end method
