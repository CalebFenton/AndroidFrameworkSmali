.class public final Landroid/net/UnderlyingNetworkInfo;
.super Ljava/lang/Object;
.source "UnderlyingNetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/UnderlyingNetworkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIface:Ljava/lang/String;

.field private final blacklist mOwnerUid:I

.field private final blacklist mUnderlyingIfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Landroid/net/UnderlyingNetworkInfo$1;

    invoke-direct {v0}, Landroid/net/UnderlyingNetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/UnderlyingNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "ownerUid"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p3, "underlyingIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput p1, p0, Landroid/net/UnderlyingNetworkInfo;->mOwnerUid:I

    .line 55
    iput-object p2, p0, Landroid/net/UnderlyingNetworkInfo;->mIface:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UnderlyingNetworkInfo;->mUnderlyingIfaces:Ljava/util/List;

    .line 57
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/UnderlyingNetworkInfo;->mOwnerUid:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/UnderlyingNetworkInfo;->mIface:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "underlyingIfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/UnderlyingNetworkInfo;->mUnderlyingIfaces:Ljava/util/List;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/UnderlyingNetworkInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/UnderlyingNetworkInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 124
    :cond_4
    instance-of v1, p1, Landroid/net/UnderlyingNetworkInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 125
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/UnderlyingNetworkInfo;

    .line 126
    .local v1, "that":Landroid/net/UnderlyingNetworkInfo;
    iget v3, p0, Landroid/net/UnderlyingNetworkInfo;->mOwnerUid:I

    invoke-virtual {v1}, Landroid/net/UnderlyingNetworkInfo;->getOwnerUid()I

    move-result v4

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/net/UnderlyingNetworkInfo;->mIface:Ljava/lang/String;

    .line 127
    invoke-virtual {v1}, Landroid/net/UnderlyingNetworkInfo;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/net/UnderlyingNetworkInfo;->mUnderlyingIfaces:Ljava/util/List;

    .line 128
    invoke-virtual {v1}, Landroid/net/UnderlyingNetworkInfo;->getUnderlyingInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 126
    :goto_2f
    return v0
.end method

.method public blacklist getInterface()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/net/UnderlyingNetworkInfo;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOwnerUid()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/net/UnderlyingNetworkInfo;->mOwnerUid:I

    return v0
.end method

.method public blacklist getUnderlyingInterfaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/net/UnderlyingNetworkInfo;->mUnderlyingIfaces:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 133
    iget v0, p0, Landroid/net/UnderlyingNetworkInfo;->mOwnerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/UnderlyingNetworkInfo;->mIface:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/UnderlyingNetworkInfo;->mUnderlyingIfaces:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnderlyingNetworkInfo{ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/UnderlyingNetworkInfo;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iface=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/UnderlyingNetworkInfo;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", underlyingIfaces=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/UnderlyingNetworkInfo;->mUnderlyingIfaces:Ljava/util/List;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget v0, p0, Landroid/net/UnderlyingNetworkInfo;->mOwnerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Landroid/net/UnderlyingNetworkInfo;->mIface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroid/net/UnderlyingNetworkInfo;->mUnderlyingIfaces:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 103
    return-void
.end method
