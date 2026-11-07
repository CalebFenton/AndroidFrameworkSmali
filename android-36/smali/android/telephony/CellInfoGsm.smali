.class public final Landroid/telephony/CellInfoGsm;
.super Landroid/telephony/CellInfo;
.source "CellInfoGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellInfoGsm"


# instance fields
.field private greylist-max-o mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

.field private greylist-max-o mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroid/telephony/CellInfoGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 42
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    .line 43
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityGsm;Landroid/telephony/CellSignalStrengthGsm;)V
    .registers 7
    .param p1, "cellConnectionStatus"    # I
    .param p2, "registered"    # Z
    .param p3, "timeStamp"    # J
    .param p5, "cellIdentityGsm"    # Landroid/telephony/CellIdentityGsm;
    .param p6, "cellSignalStrengthGsm"    # Landroid/telephony/CellSignalStrengthGsm;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    .line 57
    iput-object p5, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    .line 58
    iput-object p6, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    .line 59
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 149
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 150
    sget-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityGsm;

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    .line 151
    sget-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    .line 152
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellInfoGsm;)V
    .registers 3
    .param p1, "ci"    # Landroid/telephony/CellInfoGsm;

    .line 48
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 49
    iget-object v0, p1, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->copy()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    .line 50
    iget-object v0, p1, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    .line 51
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoGsm;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 170
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 177
    const-string v0, "CellInfoGsm"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 105
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 106
    return v1

    .line 109
    :cond_8
    :try_start_8
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoGsm;

    .line 110
    .local v0, "o":Landroid/telephony/CellInfoGsm;
    iget-object v2, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    iget-object v3, v0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityGsm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    iget-object v3, v0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    .line 111
    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthGsm;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1d} :catch_23

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 110
    :goto_22
    return v1

    .line 112
    .end local v0    # "o":Landroid/telephony/CellInfoGsm;
    :catch_23
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentityGsm;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    return-object v0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 100
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    .line 85
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoGsm;-><init>(Landroid/telephony/CellInfoGsm;)V

    .line 86
    .local v0, "result":Landroid/telephony/CellInfoGsm;
    iget-object v1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->sanitizeLocationInfo()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    .line 87
    return-object v0
.end method

.method public greylist-max-o setCellIdentity(Landroid/telephony/CellIdentityGsm;)V
    .registers 2
    .param p1, "cid"    # Landroid/telephony/CellIdentityGsm;

    .line 71
    iput-object p1, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    .line 72
    return-void
.end method

.method public greylist-max-o setCellSignalStrength(Landroid/telephony/CellSignalStrengthGsm;)V
    .registers 2
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthGsm;

    .line 92
    iput-object p1, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    .line 93
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CellInfoGsm:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 125
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 139
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 140
    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellIdentityGsm:Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityGsm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    iget-object v0, p0, Landroid/telephony/CellInfoGsm;->mCellSignalStrengthGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    return-void
.end method
