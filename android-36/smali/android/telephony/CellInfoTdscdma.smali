.class public final Landroid/telephony/CellInfoTdscdma;
.super Landroid/telephony/CellInfo;
.source "CellInfoTdscdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CellInfoTdscdma"


# instance fields
.field private blacklist mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

.field private blacklist mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Landroid/telephony/CellInfoTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 45
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellIdentityTdscdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    .line 46
    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V
    .registers 7
    .param p1, "connectionStatus"    # I
    .param p2, "registered"    # Z
    .param p3, "timeStamp"    # J
    .param p5, "cellIdentityTdscdma"    # Landroid/telephony/CellIdentityTdscdma;
    .param p6, "cellSignalStrengthTdscdma"    # Landroid/telephony/CellSignalStrengthTdscdma;

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    .line 61
    iput-object p5, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    .line 62
    iput-object p6, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    .line 63
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 154
    sget-object v0, Landroid/telephony/CellIdentityTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityTdscdma;

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    .line 155
    sget-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    .line 156
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellInfoTdscdma;)V
    .registers 3
    .param p1, "ci"    # Landroid/telephony/CellInfoTdscdma;

    .line 51
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 52
    iget-object v0, p1, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityTdscdma;->copy()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    .line 53
    iget-object v0, p1, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->copy()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    .line 54
    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoTdscdma;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 175
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 182
    const-string v0, "CellInfoTdscdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 109
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 110
    return v1

    .line 113
    :cond_8
    :try_start_8
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoTdscdma;

    .line 114
    .local v0, "o":Landroid/telephony/CellInfoTdscdma;
    iget-object v2, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iget-object v3, v0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v3, v0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    .line 115
    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1d} :catch_23

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 114
    :goto_22
    return v1

    .line 116
    .end local v0    # "o":Landroid/telephony/CellInfoTdscdma;
    :catch_23
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellInfoTdscdma;->getCellIdentity()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentityTdscdma;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    return-object v0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellInfoTdscdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 104
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iget-object v2, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    .line 89
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/telephony/CellInfoTdscdma;)V

    .line 90
    .local v0, "result":Landroid/telephony/CellInfoTdscdma;
    iget-object v1, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityTdscdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    .line 91
    return-object v0
.end method

.method public blacklist setCellIdentity(Landroid/telephony/CellIdentityTdscdma;)V
    .registers 2
    .param p1, "cid"    # Landroid/telephony/CellIdentityTdscdma;

    .line 75
    iput-object p1, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    .line 76
    return-void
.end method

.method public blacklist setCellSignalStrength(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .registers 2
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthTdscdma;

    .line 96
    iput-object p1, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    .line 97
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CellInfoTdscdma:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 129
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    const/4 v0, 0x5

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 144
    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityTdscdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 145
    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthTdscdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    return-void
.end method
