.class public final Landroid/telephony/CellInfoLte;
.super Landroid/telephony/CellInfo;
.source "CellInfoLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellInfoLte"


# instance fields
.field private blacklist mCellConfig:Landroid/telephony/CellConfigLte;

.field private greylist-max-o mCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private greylist-max-o mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 184
    new-instance v0, Landroid/telephony/CellInfoLte$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 45
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 46
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 47
    new-instance v0, Landroid/telephony/CellConfigLte;

    invoke-direct {v0}, Landroid/telephony/CellConfigLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V
    .registers 8
    .param p1, "connectionStatus"    # I
    .param p2, "registered"    # Z
    .param p3, "timeStamp"    # J
    .param p5, "cellIdentityLte"    # Landroid/telephony/CellIdentityLte;
    .param p6, "cellSignalStrengthLte"    # Landroid/telephony/CellSignalStrengthLte;
    .param p7, "cellConfig"    # Landroid/telephony/CellConfigLte;

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    .line 63
    iput-object p5, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 64
    iput-object p6, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 65
    iput-object p7, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    .line 66
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 176
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 177
    sget-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 178
    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 179
    sget-object v0, Landroid/telephony/CellConfigLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellConfigLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    .line 181
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellInfoLte;)V
    .registers 4
    .param p1, "ci"    # Landroid/telephony/CellInfoLte;

    .line 52
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 53
    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->copy()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 54
    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 55
    new-instance v0, Landroid/telephony/CellConfigLte;

    iget-object v1, p1, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-direct {v0, v1}, Landroid/telephony/CellConfigLte;-><init>(Landroid/telephony/CellConfigLte;)V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    .line 56
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 199
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 206
    const-string v0, "CellInfoLte"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 134
    instance-of v0, p1, Landroid/telephony/CellInfoLte;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 135
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoLte;

    .line 136
    .local v0, "o":Landroid/telephony/CellInfoLte;
    invoke-super {p0, v0}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iget-object v3, v0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    iget-object v3, v0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 137
    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    iget-object v3, v0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    .line 138
    invoke-virtual {v2, v3}, Landroid/telephony/CellConfigLte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 136
    :goto_30
    return v1
.end method

.method public blacklist getCellConfig()Landroid/telephony/CellConfigLte;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-object v0
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentityLte;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    return-object v0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 125
    nop

    .line 126
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 127
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 128
    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    .line 129
    invoke-virtual {v3}, Landroid/telephony/CellConfigLte;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    .line 96
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/telephony/CellInfoLte;)V

    .line 97
    .local v0, "result":Landroid/telephony/CellInfoLte;
    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 98
    return-object v0
.end method

.method public blacklist setCellConfig(Landroid/telephony/CellConfigLte;)V
    .registers 2
    .param p1, "cellConfig"    # Landroid/telephony/CellConfigLte;

    .line 111
    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    .line 112
    return-void
.end method

.method public greylist-max-p setCellIdentity(Landroid/telephony/CellIdentityLte;)V
    .registers 2
    .param p1, "cid"    # Landroid/telephony/CellIdentityLte;

    .line 81
    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 82
    return-void
.end method

.method public greylist-max-p setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V
    .registers 2
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthLte;

    .line 105
    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    .line 106
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CellInfoLte:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 150
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 166
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityLte;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellConfigLte;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    return-void
.end method
