.class public final Landroid/net/TetheringInterface;
.super Ljava/lang/Object;
.source "TetheringInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TetheringInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mInterface:Ljava/lang/String;

.field private final blacklist mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/net/TetheringInterface$1;

    invoke-direct {v0}, Landroid/net/TetheringInterface$1;-><init>()V

    sput-object v0, Landroid/net/TetheringInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "iface"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/TetheringInterface;-><init>(ILjava/lang/String;Landroid/net/wifi/SoftApConfiguration;)V

    .line 46
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Landroid/net/wifi/SoftApConfiguration;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "softApConfig"    # Landroid/net/wifi/SoftApConfiguration;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput p1, p0, Landroid/net/TetheringInterface;->mType:I

    .line 53
    iput-object p2, p0, Landroid/net/TetheringInterface;->mInterface:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Landroid/net/TetheringInterface;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Landroid/net/TetheringInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 101
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/TetheringInterface;

    .line 102
    .local v0, "other":Landroid/net/TetheringInterface;
    iget v2, p0, Landroid/net/TetheringInterface;->mType:I

    iget v3, v0, Landroid/net/TetheringInterface;->mType:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroid/net/TetheringInterface;->mInterface:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/TetheringInterface;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/net/TetheringInterface;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    iget-object v3, v0, Landroid/net/TetheringInterface;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 103
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 102
    :goto_26
    return v1
.end method

.method public whitelist getInterface()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/net/TetheringInterface;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/net/TetheringInterface;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/net/TetheringInterface;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 94
    iget v0, p0, Landroid/net/TetheringInterface;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/TetheringInterface;->mInterface:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/TetheringInterface;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TetheringInterface {mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/TetheringInterface;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/TetheringInterface;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    iget-object v1, p0, Landroid/net/TetheringInterface;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-nez v1, :cond_24

    const-string v1, ""

    goto :goto_39

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mSoftApConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/TetheringInterface;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget v0, p0, Landroid/net/TetheringInterface;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/net/TetheringInterface;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/net/TetheringInterface;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    return-void
.end method
