.class public final Landroid/adservices/adselection/PersistAdSelectionResultRequest;
.super Ljava/lang/Object;
.source "PersistAdSelectionResultRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/PersistAdSelectionResultRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAdSelectionId:J

.field private final blacklist mAdSelectionResult:[B

.field private final blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method private constructor blacklist <init>(JLandroid/adservices/common/AdTechIdentifier;[B)V
    .registers 5
    .param p1, "adSelectionId"    # J
    .param p3, "seller"    # Landroid/adservices/common/AdTechIdentifier;
    .param p4, "adSelectionResult"    # [B

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mAdSelectionId:J

    .line 50
    iput-object p3, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 51
    iput-object p4, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mAdSelectionResult:[B

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/adservices/common/AdTechIdentifier;[BLandroid/adservices/adselection/PersistAdSelectionResultRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/adselection/PersistAdSelectionResultRequest;-><init>(JLandroid/adservices/common/AdTechIdentifier;[B)V

    return-void
.end method


# virtual methods
.method public whitelist getAdSelectionDataId()J
    .registers 3

    .line 71
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mAdSelectionId:J

    return-wide v0
.end method

.method public whitelist getAdSelectionId()J
    .registers 3

    .line 60
    iget-wide v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mAdSelectionId:J

    return-wide v0
.end method

.method public whitelist getAdSelectionResult()[B
    .registers 3

    .line 87
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mAdSelectionResult:[B

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_9

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_9
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mAdSelectionResult:[B

    iget-object v1, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mAdSelectionResult:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/adservices/adselection/PersistAdSelectionResultRequest;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method
