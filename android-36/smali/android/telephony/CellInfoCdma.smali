.class public final Landroid/telephony/CellInfoCdma;
.super Landroid/telephony/CellInfo;
.source "CellInfoCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoCdma;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellInfoCdma"


# instance fields
.field private greylist-max-o mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

.field private greylist-max-o mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Landroid/telephony/CellInfoCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 48
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 49
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityCdma;Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 7
    .param p1, "connectionStatus"    # I
    .param p2, "registered"    # Z
    .param p3, "timeStamp"    # J
    .param p5, "cellIdentityCdma"    # Landroid/telephony/CellIdentityCdma;
    .param p6, "cellSignalStrengthCdma"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    .line 64
    iput-object p5, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 65
    iput-object p6, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 66
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 169
    sget-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityCdma;

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 170
    sget-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 172
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/telephony/CellInfoCdma;)V
    .registers 3
    .param p1, "ci"    # Landroid/telephony/CellInfoCdma;

    .line 55
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 56
    iget-object v0, p1, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->copy()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 57
    iget-object v0, p1, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 58
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoCdma;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 195
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 202
    const-string v0, "CellInfoCdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 119
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 120
    return v1

    .line 123
    :cond_8
    :try_start_8
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoCdma;

    .line 124
    .local v0, "o":Landroid/telephony/CellInfoCdma;
    iget-object v2, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    iget-object v3, v0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityCdma;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    iget-object v3, v0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 125
    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1d} :catch_23

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 124
    :goto_22
    return v1

    .line 126
    .end local v0    # "o":Landroid/telephony/CellInfoCdma;
    :catch_23
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentityCdma;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    return-object v0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 114
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    .line 99
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoCdma;-><init>(Landroid/telephony/CellInfoCdma;)V

    .line 100
    .local v0, "result":Landroid/telephony/CellInfoCdma;
    iget-object v1, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 101
    return-object v0
.end method

.method public greylist setCellIdentity(Landroid/telephony/CellIdentityCdma;)V
    .registers 2
    .param p1, "cid"    # Landroid/telephony/CellIdentityCdma;

    .line 82
    iput-object p1, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    .line 83
    return-void
.end method

.method public greylist-max-o setCellSignalStrength(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 2
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 106
    iput-object p1, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    .line 107
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CellInfoCdma:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 139
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    const/4 v0, 0x2

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 159
    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellIdentityCdma:Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityCdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    iget-object v0, p0, Landroid/telephony/CellInfoCdma;->mCellSignalStrengthCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthCdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    return-void
.end method
