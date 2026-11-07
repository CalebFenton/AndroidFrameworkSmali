.class public final Landroid/adservices/adselection/GetAdSelectionDataResponse;
.super Ljava/lang/Object;
.source "GetAdSelectionDataResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/adselection/GetAdSelectionDataResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdSelectionData:[B

.field private final blacklist mAdSelectionId:J

.field private final blacklist mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/adservices/adselection/GetAdSelectionDataResponse$1;

    invoke-direct {v0}, Landroid/adservices/adselection/GetAdSelectionDataResponse$1;-><init>()V

    sput-object v0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(J[BLandroid/content/res/AssetFileDescriptor;)V
    .registers 5
    .param p1, "adSelectionId"    # J
    .param p3, "adSelectionData"    # [B
    .param p4, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionId:J

    .line 63
    iput-object p3, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    .line 64
    iput-object p4, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(J[BLandroid/content/res/AssetFileDescriptor;Landroid/adservices/adselection/GetAdSelectionDataResponse-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/adselection/GetAdSelectionDataResponse;-><init>(J[BLandroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionId:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    .line 72
    sget-object v0, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataResponse$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/adservices/adselection/GetAdSelectionDataResponse$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcelable$Creator;)V

    .line 73
    invoke-static {p1, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->readNullableFromParcel(Landroid/os/Parcel;Lcom/android/adservices/AdServicesParcelableUtil$ParcelReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/adselection/GetAdSelectionDataResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/GetAdSelectionDataResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$0(ILandroid/os/Parcel;Landroid/content/res/AssetFileDescriptor;)V
    .registers 3
    .param p0, "flags"    # I
    .param p1, "targetParcel"    # Landroid/os/Parcel;
    .param p2, "sourceSignals"    # Landroid/content/res/AssetFileDescriptor;

    .line 132
    invoke-virtual {p2, p1, p0}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 79
    instance-of v0, p1, Landroid/adservices/adselection/GetAdSelectionDataResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/adservices/adselection/GetAdSelectionDataResponse;

    .line 81
    .local v0, "response":Landroid/adservices/adselection/GetAdSelectionDataResponse;
    iget-wide v2, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionId:J

    iget-wide v4, v0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_26

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    iget-object v3, v0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    .line 82
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object v3, v0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 83
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    nop

    .line 81
    :goto_27
    return v1

    .line 85
    .end local v0    # "response":Landroid/adservices/adselection/GetAdSelectionDataResponse;
    :cond_28
    return v1
.end method

.method public blacklist getAdSelectionData()[B
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_9

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_9
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    iget-object v1, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdSelectionId()J
    .registers 3

    .line 101
    iget-wide v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionId:J

    return-wide v0
.end method

.method public blacklist getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 90
    iget-wide v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionId:J

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-wide v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAdSelectionData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 129
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataResponse$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/adservices/adselection/GetAdSelectionDataResponse$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1, v0, v1}, Lcom/android/adservices/AdServicesParcelableUtil;->writeNullableToParcel(Landroid/os/Parcel;Ljava/lang/Object;Lcom/android/adservices/AdServicesParcelableUtil$ParcelWriter;)V

    .line 133
    return-void
.end method
