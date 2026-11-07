.class public final Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;
.super Ljava/lang/Object;
.source "PersistAdSelectionResultRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/PersistAdSelectionResultRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionId:J

.field private blacklist mAdSelectionResult:[B

.field private blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/PersistAdSelectionResultRequest;
    .registers 9

    .line 151
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mAdSelectionId:J

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

    .line 154
    new-instance v2, Landroid/adservices/adselection/PersistAdSelectionResultRequest;

    iget-wide v3, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mAdSelectionId:J

    iget-object v5, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v6, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mAdSelectionResult:[B

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/adservices/adselection/PersistAdSelectionResultRequest;-><init>(JLandroid/adservices/common/AdTechIdentifier;[BLandroid/adservices/adselection/PersistAdSelectionResultRequest-IA;)V

    return-object v2
.end method

.method public whitelist setAdSelectionDataId(J)Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;
    .registers 3
    .param p1, "adSelectionDataId"    # J

    .line 119
    iput-wide p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mAdSelectionId:J

    .line 120
    return-object p0
.end method

.method public whitelist setAdSelectionId(J)Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 109
    iput-wide p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mAdSelectionId:J

    .line 110
    return-object p0
.end method

.method public whitelist setAdSelectionResult([B)Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;
    .registers 3
    .param p1, "adSelectionResult"    # [B

    .line 135
    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_d

    .line 136
    array-length v0, p1

    .line 137
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mAdSelectionResult:[B

    goto :goto_10

    .line 139
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mAdSelectionResult:[B

    .line 141
    :goto_10
    return-object p0
.end method

.method public whitelist setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;
    .registers 2
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 127
    iput-object p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 128
    return-object p0
.end method
