.class public final Landroid/app/admin/ConnectEvent;
.super Landroid/app/admin/NetworkEvent;
.source "ConnectEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ConnectEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mIpAddress:Ljava/lang/String;

.field private final greylist-max-o mPort:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/app/admin/ConnectEvent$1;

    invoke-direct {v0}, Landroid/app/admin/ConnectEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/ConnectEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Landroid/app/admin/NetworkEvent;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ConnectEvent;->mIpAddress:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/ConnectEvent;->mPort:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ConnectEvent;->mPackageName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/ConnectEvent;->mTimestamp:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/ConnectEvent;->mId:J

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/ConnectEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/ConnectEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .line 42
    invoke-direct {p0, p3, p4, p5}, Landroid/app/admin/NetworkEvent;-><init>(Ljava/lang/String;J)V

    .line 43
    iput-object p1, p0, Landroid/app/admin/ConnectEvent;->mIpAddress:Ljava/lang/String;

    .line 44
    iput p2, p0, Landroid/app/admin/ConnectEvent;->mPort:I

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInetAddress()Ljava/net/InetAddress;
    .registers 3

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/ConnectEvent;->mIpAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 59
    :catch_7
    move-exception v0

    .line 61
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPort()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/app/admin/ConnectEvent;->mPort:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 71
    iget-wide v0, p0, Landroid/app/admin/ConnectEvent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ConnectEvent;->mIpAddress:Ljava/lang/String;

    iget v2, p0, Landroid/app/admin/ConnectEvent;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/app/admin/ConnectEvent;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/app/admin/ConnectEvent;->mPackageName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ConnectEvent(%d, %s, %d, %d, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/app/admin/ConnectEvent;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Landroid/app/admin/ConnectEvent;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Landroid/app/admin/ConnectEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-wide v0, p0, Landroid/app/admin/ConnectEvent;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Landroid/app/admin/ConnectEvent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    return-void
.end method
