.class public final Landroid/telephony/CellInfoWcdma;
.super Landroid/telephony/CellInfo;
.source "CellInfoWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellInfoWcdma"


# instance fields
.field private greylist-max-o mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

.field private greylist-max-o mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 153
    new-instance v0, Landroid/telephony/CellInfoWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 40
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 41
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(IZJLandroid/telephony/CellIdentityWcdma;Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 7
    .param p1, "connectionStatus"    # I
    .param p2, "registered"    # Z
    .param p3, "timeStamp"    # J
    .param p5, "cellIdentityWcdma"    # Landroid/telephony/CellIdentityWcdma;
    .param p6, "cellSignalStrengthWcdma"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    .line 55
    iput-object p5, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 56
    iput-object p6, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 57
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 147
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 148
    sget-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityWcdma;

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 149
    sget-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 150
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellInfoWcdma;)V
    .registers 3
    .param p1, "ci"    # Landroid/telephony/CellInfoWcdma;

    .line 46
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 47
    iget-object v0, p1, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->copy()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 48
    iget-object v0, p1, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 49
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 168
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoWcdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 175
    const-string v0, "CellInfoWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 103
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 104
    return v1

    .line 107
    :cond_8
    :try_start_8
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    .line 108
    .local v0, "o":Landroid/telephony/CellInfoWcdma;
    iget-object v2, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    iget-object v3, v0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityWcdma;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v3, v0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 109
    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1d} :catch_23

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 108
    :goto_22
    return v1

    .line 110
    .end local v0    # "o":Landroid/telephony/CellInfoWcdma;
    :catch_23
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public bridge synthetic whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentityWcdma;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    return-object v0
.end method

.method public bridge synthetic whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 98
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    iget-object v2, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    .line 83
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoWcdma;-><init>(Landroid/telephony/CellInfoWcdma;)V

    .line 84
    .local v0, "result":Landroid/telephony/CellInfoWcdma;
    iget-object v1, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 85
    return-object v0
.end method

.method public greylist-max-o setCellIdentity(Landroid/telephony/CellIdentityWcdma;)V
    .registers 2
    .param p1, "cid"    # Landroid/telephony/CellIdentityWcdma;

    .line 69
    iput-object p1, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 70
    return-void
.end method

.method public greylist-max-o setCellSignalStrength(Landroid/telephony/CellSignalStrengthWcdma;)V
    .registers 2
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 90
    iput-object p1, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 91
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CellInfoWcdma:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 123
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    const/4 v0, 0x4

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 138
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityWcdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthWcdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    return-void
.end method
