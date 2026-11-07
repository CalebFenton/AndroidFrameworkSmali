.class public final Landroid/telephony/CellInfoNr;
.super Landroid/telephony/CellInfo;
.source "CellInfoNr.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoNr;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CellInfoNr"


# instance fields
.field private blacklist mCellIdentity:Landroid/telephony/CellIdentityNr;

.field private final blacklist mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Landroid/telephony/CellInfoNr$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoNr$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoNr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 38
    new-instance v0, Landroid/telephony/CellIdentityNr;

    invoke-direct {v0}, Landroid/telephony/CellIdentityNr;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    .line 39
    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V
    .registers 7
    .param p1, "connectionStatus"    # I
    .param p2, "registered"    # Z
    .param p3, "timeStamp"    # J
    .param p5, "cellIdentityNr"    # Landroid/telephony/CellIdentityNr;
    .param p6, "cellSignalStrengthNr"    # Landroid/telephony/CellSignalStrengthNr;

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    .line 59
    iput-object p5, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    .line 60
    iput-object p6, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 44
    sget-object v0, Landroid/telephony/CellIdentityNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityNr;

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    .line 45
    sget-object v0, Landroid/telephony/CellSignalStrengthNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellInfoNr-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfoNr;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/CellInfoNr;Z)V
    .registers 4
    .param p1, "other"    # Landroid/telephony/CellInfoNr;
    .param p2, "sanitizeLocationInfo"    # Z

    .line 49
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 50
    if-eqz p2, :cond_c

    iget-object v0, p1, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityNr;->sanitizeLocationInfo()Landroid/telephony/CellIdentityNr;

    move-result-object v0

    goto :goto_e

    .line 51
    :cond_c
    iget-object v0, p1, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    :goto_e
    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    .line 52
    iget-object v0, p1, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    iput-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    .line 53
    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoNr;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 144
    new-instance v0, Landroid/telephony/CellInfoNr;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoNr;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 101
    instance-of v0, p1, Landroid/telephony/CellInfoNr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 102
    return v1

    .line 105
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoNr;

    .line 106
    .local v0, "o":Landroid/telephony/CellInfoNr;
    invoke-super {p0, v0}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    iget-object v3, v0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityNr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    iget-object v3, v0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    .line 107
    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthNr;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 106
    :goto_26
    return v1
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    return-object v0
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentityNr;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityNr;

    return-object v0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    return-object v0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthNr;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 96
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    iget-object v2, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    .line 91
    new-instance v0, Landroid/telephony/CellInfoNr;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/telephony/CellInfoNr;-><init>(Landroid/telephony/CellInfoNr;Z)V

    return-object v0
.end method

.method public blacklist setCellIdentity(Landroid/telephony/CellIdentityNr;)V
    .registers 2
    .param p1, "cid"    # Landroid/telephony/CellIdentityNr;

    .line 75
    iput-object p1, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    .line 76
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string v1, "CellInfoNr:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    const/4 v0, 0x6

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 124
    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellIdentity:Landroid/telephony/CellIdentityNr;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityNr;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    iget-object v0, p0, Landroid/telephony/CellInfoNr;->mCellSignalStrength:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthNr;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    return-void
.end method
