.class public final Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
.super Ljava/lang/Object;
.source "SystemSelectionSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SystemSelectionSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBands:[I

.field private blacklist mEarfcns:[I

.field private blacklist mMccMnc:Ljava/lang/String;

.field private blacklist mSatelliteInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTagIds:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBands(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mBands:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEarfcns(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mEarfcns:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMccMnc(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mMccMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteInfos(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mSatelliteInfos:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTagIds(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mTagIds:[I

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SystemSelectionSpecifier;
    .registers 2

    .line 149
    new-instance v0, Landroid/telephony/satellite/SystemSelectionSpecifier;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SystemSelectionSpecifier;-><init>(Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;)V

    return-object v0
.end method

.method public blacklist setBands([I)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .registers 2
    .param p1, "bands"    # [I

    .line 113
    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mBands:[I

    .line 114
    return-object p0
.end method

.method public blacklist setEarfcns([I)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .registers 2
    .param p1, "earfcns"    # [I

    .line 124
    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mEarfcns:[I

    .line 125
    return-object p0
.end method

.method public blacklist setMccMnc(Ljava/lang/String;)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .registers 2
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mMccMnc:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public blacklist setSatelliteInfos(Ljava/util/List;)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteInfo;",
            ">;)",
            "Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;"
        }
    .end annotation

    .line 133
    .local p1, "satelliteInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/satellite/SatelliteInfo;>;"
    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mSatelliteInfos:Ljava/util/List;

    .line 134
    return-object p0
.end method

.method public blacklist setTagIds([I)Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;
    .registers 2
    .param p1, "tagIds"    # [I

    .line 142
    iput-object p1, p0, Landroid/telephony/satellite/SystemSelectionSpecifier$Builder;->mTagIds:[I

    .line 143
    return-object p0
.end method
