.class public final Landroid/telephony/CellularIdentifierDisclosure;
.super Ljava/lang/Object;
.source "CellularIdentifierDisclosure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellularIdentifierDisclosure$CellularIdentifier;,
        Landroid/telephony/CellularIdentifierDisclosure$NasProtocolMessage;
    }
.end annotation


# static fields
.field public static final whitelist CELLULAR_IDENTIFIER_IMEI:I = 0x2

.field public static final whitelist CELLULAR_IDENTIFIER_IMSI:I = 0x1

.field public static final whitelist CELLULAR_IDENTIFIER_SUCI:I = 0x3

.field public static final whitelist CELLULAR_IDENTIFIER_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellularIdentifierDisclosure;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NAS_PROTOCOL_MESSAGE_ATTACH_REQUEST:I = 0x1

.field public static final whitelist NAS_PROTOCOL_MESSAGE_AUTHENTICATION_AND_CIPHERING_RESPONSE:I = 0x6

.field public static final whitelist NAS_PROTOCOL_MESSAGE_CM_REESTABLISHMENT_REQUEST:I = 0x9

.field public static final whitelist NAS_PROTOCOL_MESSAGE_CM_SERVICE_REQUEST:I = 0xa

.field public static final whitelist NAS_PROTOCOL_MESSAGE_DEREGISTRATION_REQUEST:I = 0x8

.field public static final whitelist NAS_PROTOCOL_MESSAGE_DETACH_REQUEST:I = 0x3

.field public static final whitelist NAS_PROTOCOL_MESSAGE_IDENTITY_RESPONSE:I = 0x2

.field public static final whitelist NAS_PROTOCOL_MESSAGE_IMSI_DETACH_INDICATION:I = 0xb

.field public static final whitelist NAS_PROTOCOL_MESSAGE_LOCATION_UPDATE_REQUEST:I = 0x5

.field public static final whitelist NAS_PROTOCOL_MESSAGE_REGISTRATION_REQUEST:I = 0x7

.field public static final blacklist NAS_PROTOCOL_MESSAGE_THREAT_IDENTIFIER_FALSE:I = 0xc

.field public static final blacklist NAS_PROTOCOL_MESSAGE_THREAT_IDENTIFIER_TRUE:I = 0xd

.field public static final whitelist NAS_PROTOCOL_MESSAGE_TRACKING_AREA_UPDATE_REQUEST:I = 0x4

.field public static final whitelist NAS_PROTOCOL_MESSAGE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CellularIdentifierDisclosure"


# instance fields
.field private blacklist mCellularIdentifier:I

.field private blacklist mIsEmergency:Z

.field private blacklist mNasProtocolMessage:I

.field private blacklist mPlmn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 190
    new-instance v0, Landroid/telephony/CellularIdentifierDisclosure$1;

    invoke-direct {v0}, Landroid/telephony/CellularIdentifierDisclosure$1;-><init>()V

    sput-object v0, Landroid/telephony/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Z)V
    .registers 5
    .param p1, "nasProtocolMessage"    # I
    .param p2, "cellularIdentifier"    # I
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "isEmergency"    # Z

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    .line 132
    iput p2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    .line 133
    iput-object p3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    .line 134
    iput-boolean p4, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    .line 135
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-direct {p0, p1}, Landroid/telephony/CellularIdentifierDisclosure;->readFromParcel(Landroid/os/Parcel;)V

    .line 139
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellularIdentifierDisclosure-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellularIdentifierDisclosure;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 210
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 211
    :cond_4
    instance-of v1, p1, Landroid/telephony/CellularIdentifierDisclosure;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 212
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellularIdentifierDisclosure;

    .line 213
    .local v1, "that":Landroid/telephony/CellularIdentifierDisclosure;
    iget v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    iget v4, v1, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    iget v4, v1, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    if-ne v3, v4, :cond_2a

    iget-boolean v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    iget-boolean v4, v1, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    if-ne v3, v4, :cond_2a

    iget-object v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    .line 215
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 213
    :goto_2b
    return v0
.end method

.method public whitelist getCellularIdentifier()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    return v0
.end method

.method public whitelist getNasProtocolMessage()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    return v0
.end method

.method public whitelist getPlmn()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 220
    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isBenign()Z
    .registers 3

    .line 174
    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isEmergency()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellularIdentifierDisclosure:{ mNasProtocolMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCellularIdentifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPlmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 184
    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-boolean v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 187
    iget-object v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 188
    return-void
.end method
