.class public final Landroid/telephony/NrVopsSupportInfo;
.super Landroid/telephony/VopsSupportInfo;
.source "NrVopsSupportInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NrVopsSupportInfo$NrEmfStatus;,
        Landroid/telephony/NrVopsSupportInfo$NrEmcStatus;,
        Landroid/telephony/NrVopsSupportInfo$NrVopsStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NrVopsSupportInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NR_STATUS_EMC_5GCN_ONLY:I = 0x1

.field public static final whitelist NR_STATUS_EMC_EUTRA_5GCN_ONLY:I = 0x2

.field public static final whitelist NR_STATUS_EMC_NOT_SUPPORTED:I = 0x0

.field public static final whitelist NR_STATUS_EMC_NR_EUTRA_5GCN:I = 0x3

.field public static final whitelist NR_STATUS_EMF_5GCN_ONLY:I = 0x1

.field public static final whitelist NR_STATUS_EMF_EUTRA_5GCN_ONLY:I = 0x2

.field public static final whitelist NR_STATUS_EMF_NOT_SUPPORTED:I = 0x0

.field public static final whitelist NR_STATUS_EMF_NR_EUTRA_5GCN:I = 0x3

.field public static final whitelist NR_STATUS_VOPS_3GPP_SUPPORTED:I = 0x1

.field public static final whitelist NR_STATUS_VOPS_NON_3GPP_SUPPORTED:I = 0x2

.field public static final whitelist NR_STATUS_VOPS_NOT_SUPPORTED:I


# instance fields
.field private final blacklist mEmcSupport:I

.field private final blacklist mEmfSupport:I

.field private final blacklist mVopsSupport:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 235
    new-instance v0, Landroid/telephony/NrVopsSupportInfo$1;

    invoke-direct {v0}, Landroid/telephony/NrVopsSupportInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/NrVopsSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4
    .param p1, "vops"    # I
    .param p2, "emc"    # I
    .param p3, "emf"    # I

    .line 136
    invoke-direct {p0}, Landroid/telephony/VopsSupportInfo;-><init>()V

    .line 137
    iput p1, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    .line 138
    iput p2, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    .line 139
    iput p3, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    .line 140
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 255
    invoke-direct {p0}, Landroid/telephony/VopsSupportInfo;-><init>()V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    .line 259
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/NrVopsSupportInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/NrVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/NrVopsSupportInfo;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 252
    new-instance v0, Landroid/telephony/NrVopsSupportInfo;

    invoke-direct {v0, p0}, Landroid/telephony/NrVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    instance-of v1, p1, Landroid/telephony/NrVopsSupportInfo;

    if-nez v1, :cond_8

    goto :goto_23

    .line 211
    :cond_8
    const/4 v1, 0x1

    if-ne p0, p1, :cond_c

    return v1

    .line 212
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/NrVopsSupportInfo;

    .line 213
    .local v2, "other":Landroid/telephony/NrVopsSupportInfo;
    iget v3, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    iget v4, v2, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    iget v4, v2, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    iget v4, v2, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    if-ne v3, v4, :cond_22

    move v0, v1

    :cond_22
    return v0

    .line 209
    .end local v2    # "other":Landroid/telephony/NrVopsSupportInfo;
    :cond_23
    :goto_23
    return v0
.end method

.method public whitelist getEmcSupport()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    return v0
.end method

.method public whitelist getEmfSupport()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    return v0
.end method

.method public whitelist getVopsSupport()I
    .registers 2

    .line 147
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 220
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEmergencyServiceFallbackSupported()Z
    .registers 2

    .line 187
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isEmergencyServiceSupported()Z
    .registers 2

    .line 180
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isVopsSupported()Z
    .registers 2

    .line 172
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NrVopsSupportInfo :  mVopsSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmcSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmfSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    const/4 v0, 0x6

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/VopsSupportInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 201
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void
.end method
