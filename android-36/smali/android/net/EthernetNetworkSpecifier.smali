.class public final Landroid/net/EthernetNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "EthernetNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/EthernetNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mInterfaceName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/net/EthernetNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/EthernetNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/EthernetNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 46
    iput-object p1, p0, Landroid/net/EthernetNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    .line 47
    return-void

    .line 44
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 3
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 62
    invoke-virtual {p0, p1}, Landroid/net/EthernetNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Landroid/net/EthernetNetworkSpecifier;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_6
    iget-object v0, p0, Landroid/net/EthernetNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/net/EthernetNetworkSpecifier;

    iget-object v1, v1, Landroid/net/EthernetNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public whitelist getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/net/EthernetNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/net/EthernetNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EthernetNetworkSpecifier ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/EthernetNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

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

    .line 88
    iget-object v0, p0, Landroid/net/EthernetNetworkSpecifier;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
