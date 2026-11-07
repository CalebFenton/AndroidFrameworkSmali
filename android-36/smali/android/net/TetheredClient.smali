.class public final Landroid/net/TetheredClient;
.super Ljava/lang/Object;
.source "TetheredClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/TetheredClient$AddressInfo;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TetheredClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/TetheredClient$AddressInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMacAddress:Landroid/net/MacAddress;

.field private final blacklist mTetheringType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Landroid/net/TetheredClient$1;

    invoke-direct {v0}, Landroid/net/TetheredClient$1;-><init>()V

    sput-object v0, Landroid/net/TetheredClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/MacAddress;Ljava/util/Collection;I)V
    .registers 5
    .param p1, "macAddress"    # Landroid/net/MacAddress;
    .param p3, "tetheringType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/MacAddress;",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient$AddressInfo;",
            ">;I)V"
        }
    .end annotation

    .line 45
    .local p2, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/TetheredClient$AddressInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/net/TetheredClient;->mMacAddress:Landroid/net/MacAddress;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    .line 48
    iput p3, p0, Landroid/net/TetheredClient;->mTetheringType:I

    .line 49
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    sget-object v1, Landroid/net/TetheredClient$AddressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/net/TetheredClient;-><init>(Landroid/net/MacAddress;Ljava/util/Collection;I)V

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/TetheredClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/TetheredClient;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist addAddresses(Landroid/net/TetheredClient;)Landroid/net/TetheredClient;
    .registers 6
    .param p1, "other"    # Landroid/net/TetheredClient;

    .line 94
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 96
    .local v0, "newAddresses":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Landroid/net/TetheredClient$AddressInfo;>;"
    iget-object v1, p0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v1, p1, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 98
    new-instance v1, Landroid/net/TetheredClient;

    iget-object v2, p0, Landroid/net/TetheredClient;->mMacAddress:Landroid/net/MacAddress;

    iget v3, p0, Landroid/net/TetheredClient;->mTetheringType:I

    invoke-direct {v1, v2, v0, v3}, Landroid/net/TetheredClient;-><init>(Landroid/net/MacAddress;Ljava/util/Collection;I)V

    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Landroid/net/TetheredClient;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 109
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/TetheredClient;

    .line 110
    .local v0, "other":Landroid/net/TetheredClient;
    iget-object v2, p0, Landroid/net/TetheredClient;->mMacAddress:Landroid/net/MacAddress;

    iget-object v3, v0, Landroid/net/TetheredClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    iget-object v3, v0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Landroid/net/TetheredClient;->mTetheringType:I

    iget v3, v0, Landroid/net/TetheredClient;->mTetheringType:I

    if-ne v2, v3, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 110
    :goto_26
    return v1
.end method

.method public whitelist getAddresses()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/TetheredClient$AddressInfo;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/net/TetheredClient;->mMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getTetheringType()I
    .registers 2

    .line 83
    iget v0, p0, Landroid/net/TetheredClient;->mTetheringType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 103
    iget-object v0, p0, Landroid/net/TetheredClient;->mMacAddress:Landroid/net/MacAddress;

    iget-object v1, p0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    iget v2, p0, Landroid/net/TetheredClient;->mTetheringType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TetheredClient {hwAddr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/TetheredClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addresses "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tetheringType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/TetheredClient;->mTetheringType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

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

    .line 57
    iget-object v0, p0, Landroid/net/TetheredClient;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    iget-object v0, p0, Landroid/net/TetheredClient;->mAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 59
    iget v0, p0, Landroid/net/TetheredClient;->mTetheringType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
