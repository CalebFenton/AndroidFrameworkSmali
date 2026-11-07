.class public final Landroid/net/nsd/DiscoveryRequest;
.super Ljava/lang/Object;
.source "DiscoveryRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/DiscoveryRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/DiscoveryRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mNetwork:Landroid/net/Network;

.field private final blacklist mProtocolType:I

.field private final blacklist mServiceType:Ljava/lang/String;

.field private final blacklist mSubtype:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/net/nsd/DiscoveryRequest$1;

    invoke-direct {v0}, Landroid/net/nsd/DiscoveryRequest$1;-><init>()V

    sput-object v0, Landroid/net/nsd/DiscoveryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Network;)V
    .registers 5
    .param p1, "protocolType"    # I
    .param p2, "serviceType"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "network"    # Landroid/net/Network;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/net/nsd/DiscoveryRequest;->mProtocolType:I

    .line 71
    iput-object p2, p0, Landroid/net/nsd/DiscoveryRequest;->mServiceType:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Landroid/net/nsd/DiscoveryRequest;->mSubtype:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Landroid/net/nsd/DiscoveryRequest;->mNetwork:Landroid/net/Network;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/net/nsd/DiscoveryRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/nsd/DiscoveryRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 129
    return v0

    .line 130
    :cond_4
    instance-of v1, p1, Landroid/net/nsd/DiscoveryRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 131
    return v2

    .line 133
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/nsd/DiscoveryRequest;

    .line 134
    .local v1, "otherRequest":Landroid/net/nsd/DiscoveryRequest;
    iget v3, p0, Landroid/net/nsd/DiscoveryRequest;->mProtocolType:I

    iget v4, v1, Landroid/net/nsd/DiscoveryRequest;->mProtocolType:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Landroid/net/nsd/DiscoveryRequest;->mServiceType:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/nsd/DiscoveryRequest;->mServiceType:Ljava/lang/String;

    .line 135
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/net/nsd/DiscoveryRequest;->mSubtype:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/nsd/DiscoveryRequest;->mSubtype:Ljava/lang/String;

    .line 136
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/net/nsd/DiscoveryRequest;->mNetwork:Landroid/net/Network;

    iget-object v4, v1, Landroid/net/nsd/DiscoveryRequest;->mNetwork:Landroid/net/Network;

    .line 137
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 134
    :goto_33
    return v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/net/nsd/DiscoveryRequest;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist getProtocolType()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/net/nsd/DiscoveryRequest;->mProtocolType:I

    return v0
.end method

.method public whitelist getServiceType()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/net/nsd/DiscoveryRequest;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubtype()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/net/nsd/DiscoveryRequest;->mSubtype:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 143
    iget v0, p0, Landroid/net/nsd/DiscoveryRequest;->mProtocolType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/nsd/DiscoveryRequest;->mServiceType:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/nsd/DiscoveryRequest;->mSubtype:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/nsd/DiscoveryRequest;->mNetwork:Landroid/net/Network;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ", protocolType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/nsd/DiscoveryRequest;->mProtocolType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    const-string v2, ", serviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/DiscoveryRequest;->mServiceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    const-string v2, ", subtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/DiscoveryRequest;->mSubtype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    const-string v2, ", network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/DiscoveryRequest;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget v0, p0, Landroid/net/nsd/DiscoveryRequest;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/net/nsd/DiscoveryRequest;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Landroid/net/nsd/DiscoveryRequest;->mSubtype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroid/net/nsd/DiscoveryRequest;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    return-void
.end method
