.class public final Landroid/companion/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/DeviceId$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/DeviceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUSTOM_ID_LENGTH_LIMIT:I = 0x400


# instance fields
.field private final blacklist mCustomId:Ljava/lang/String;

.field private final blacklist mMacAddress:Landroid/net/MacAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/companion/DeviceId$1;

    invoke-direct {v0}, Landroid/companion/DeviceId$1;-><init>()V

    sput-object v0, Landroid/companion/DeviceId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "flg":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    goto :goto_14

    .line 113
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    .line 115
    :goto_14
    sget-object v1, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    iput-object v1, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    .line 116
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/DeviceId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/DeviceId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/net/MacAddress;)V
    .registers 3
    .param p1, "customId"    # Ljava/lang/String;
    .param p2, "macAddress"    # Landroid/net/MacAddress;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 140
    :cond_4
    instance-of v1, p1, Landroid/companion/DeviceId;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/companion/DeviceId;

    .line 142
    .local v1, "that":Landroid/companion/DeviceId;
    iget-object v3, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    iget-object v4, v1, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    .line 143
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    .line 142
    :goto_22
    return v0

    .line 140
    .end local v1    # "that":Landroid/companion/DeviceId;
    :cond_23
    return v2
.end method

.method public whitelist getCustomId()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public blacklist getMacAddressAsString()Ljava/lang/String;
    .registers 3

    .line 72
    iget-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    iget-object v1, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSameDevice(Landroid/companion/DeviceId;)Z
    .registers 4
    .param p1, "other"    # Landroid/companion/DeviceId;

    .line 55
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 56
    return v0

    .line 59
    :cond_4
    iget-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p1, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 60
    iget-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    iget-object v1, p1, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 62
    :cond_15
    iget-object v1, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_26

    iget-object v1, p1, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_26

    .line 63
    iget-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    iget-object v1, p1, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 66
    :cond_26
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceId{,mCustomId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMacAddress= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/companion/DeviceId;->mCustomId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_12

    .line 102
    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :goto_12
    iget-object v0, p0, Landroid/companion/DeviceId;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 106
    return-void
.end method
