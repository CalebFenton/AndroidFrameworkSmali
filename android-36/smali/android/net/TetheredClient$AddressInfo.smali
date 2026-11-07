.class public final Landroid/net/TetheredClient$AddressInfo;
.super Ljava/lang/Object;
.source "TetheredClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheredClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TetheredClient$AddressInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAddress:Landroid/net/LinkAddress;

.field private final blacklist mHostname:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 187
    new-instance v0, Landroid/net/TetheredClient$AddressInfo$1;

    invoke-direct {v0}, Landroid/net/TetheredClient$AddressInfo$1;-><init>()V

    sput-object v0, Landroid/net/TetheredClient$AddressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "hostname"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroid/net/TetheredClient$AddressInfo;->mAddress:Landroid/net/LinkAddress;

    .line 127
    iput-object p2, p0, Landroid/net/TetheredClient$AddressInfo;->mHostname:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/TetheredClient$AddressInfo;-><init>(Landroid/net/LinkAddress;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/TetheredClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/TetheredClient$AddressInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 178
    instance-of v0, p1, Landroid/net/TetheredClient$AddressInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 179
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/TetheredClient$AddressInfo;

    .line 182
    .local v0, "other":Landroid/net/TetheredClient$AddressInfo;
    iget-object v2, v0, Landroid/net/TetheredClient$AddressInfo;->mAddress:Landroid/net/LinkAddress;

    iget-object v3, p0, Landroid/net/TetheredClient$AddressInfo;->mAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/net/TetheredClient$AddressInfo;->mHostname:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/TetheredClient$AddressInfo;->mHostname:Ljava/lang/String;

    .line 183
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 182
    :goto_20
    return v1
.end method

.method public whitelist getAddress()Landroid/net/LinkAddress;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/net/TetheredClient$AddressInfo;->mAddress:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public blacklist getExpirationTime()J
    .registers 3

    .line 163
    iget-object v0, p0, Landroid/net/TetheredClient$AddressInfo;->mAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getExpirationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getHostname()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/net/TetheredClient$AddressInfo;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 173
    iget-object v0, p0, Landroid/net/TetheredClient$AddressInfo;->mAddress:Landroid/net/LinkAddress;

    iget-object v1, p0, Landroid/net/TetheredClient$AddressInfo;->mHostname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressInfo {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/TetheredClient$AddressInfo;->mAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    iget-object v1, p0, Landroid/net/TetheredClient$AddressInfo;->mHostname:Ljava/lang/String;

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheredClient$AddressInfo;->mHostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_2b
    const-string v1, ""

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 136
    iget-object v0, p0, Landroid/net/TetheredClient$AddressInfo;->mAddress:Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Landroid/net/TetheredClient$AddressInfo;->mHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return-void
.end method
