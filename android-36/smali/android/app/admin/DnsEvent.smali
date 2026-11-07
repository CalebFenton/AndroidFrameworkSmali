.class public final Landroid/app/admin/DnsEvent;
.super Landroid/app/admin/NetworkEvent;
.source "DnsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DnsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mHostname:Ljava/lang/String;

.field private final greylist-max-o mIpAddresses:[Ljava/lang/String;

.field private final greylist-max-o mIpAddressesCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Landroid/app/admin/DnsEvent$1;

    invoke-direct {v0}, Landroid/app/admin/DnsEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/DnsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Landroid/app/admin/NetworkEvent;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DnsEvent;->mHostname:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/DnsEvent;->mIpAddressesCount:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DnsEvent;->mPackageName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DnsEvent;->mTimestamp:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DnsEvent;->mId:J

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/DnsEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/DnsEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "ipAddressesCount"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 51
    invoke-direct {p0, p4, p5, p6}, Landroid/app/admin/NetworkEvent;-><init>(Ljava/lang/String;J)V

    .line 52
    iput-object p1, p0, Landroid/app/admin/DnsEvent;->mHostname:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    .line 54
    iput p3, p0, Landroid/app/admin/DnsEvent;->mIpAddressesCount:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHostname()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/app/admin/DnsEvent;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInetAddresses()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_27

    .line 76
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v0, "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 80
    .local v4, "ipAddress":Ljava/lang/String;
    :try_start_1a
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_21} :catch_22

    .line 83
    goto :goto_23

    .line 81
    :catch_22
    move-exception v5

    .line 77
    .end local v4    # "ipAddress":Ljava/lang/String;
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 85
    :cond_26
    return-object v0

    .line 74
    .end local v0    # "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_27
    :goto_27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTotalResolvedAddressCount()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/app/admin/DnsEvent;->mIpAddressesCount:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 99
    iget-wide v0, p0, Landroid/app/admin/DnsEvent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/DnsEvent;->mHostname:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "NONE"

    goto :goto_17

    :cond_f
    const-string v0, " "

    iget-object v1, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    move-object v4, v0

    iget v0, p0, Landroid/app/admin/DnsEvent;->mIpAddressesCount:I

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v0, p0, Landroid/app/admin/DnsEvent;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Landroid/app/admin/DnsEvent;->mPackageName:Ljava/lang/String;

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 99
    const-string v1, "DnsEvent(%d, %s, %s, %d, %d, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Landroid/app/admin/DnsEvent;->mHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Landroid/app/admin/DnsEvent;->mIpAddresses:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 131
    iget v0, p0, Landroid/app/admin/DnsEvent;->mIpAddressesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Landroid/app/admin/DnsEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-wide v0, p0, Landroid/app/admin/DnsEvent;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Landroid/app/admin/DnsEvent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    return-void
.end method
