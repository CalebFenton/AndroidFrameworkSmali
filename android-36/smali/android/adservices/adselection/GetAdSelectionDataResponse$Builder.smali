.class public final Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;
.super Ljava/lang/Object;
.source "GetAdSelectionDataResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/GetAdSelectionDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionData:[B

.field private blacklist mAdSelectionId:J

.field private blacklist mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/GetAdSelectionDataResponse;
    .registers 9

    .line 181
    iget-wide v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;->mAdSelectionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 184
    new-instance v2, Landroid/adservices/adselection/GetAdSelectionDataResponse;

    iget-wide v3, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;->mAdSelectionId:J

    iget-object v5, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;->mAdSelectionData:[B

    iget-object v6, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/adservices/adselection/GetAdSelectionDataResponse;-><init>(J[BLandroid/content/res/AssetFileDescriptor;Landroid/adservices/adselection/GetAdSelectionDataResponse-IA;)V

    return-object v2
.end method

.method public blacklist setAdSelectionData([B)Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;
    .registers 3
    .param p1, "adSelectionData"    # [B

    .line 158
    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_d

    .line 159
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;->mAdSelectionData:[B

    goto :goto_10

    .line 161
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;->mAdSelectionData:[B

    .line 163
    :goto_10
    return-object p0
.end method

.method public blacklist setAdSelectionId(J)Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 150
    iput-wide p1, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;->mAdSelectionId:J

    .line 151
    return-object p0
.end method

.method public blacklist setAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;
    .registers 2
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    .line 170
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataResponse$Builder;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 171
    return-object p0
.end method
