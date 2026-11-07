.class public final Landroid/adservices/adselection/GetAdSelectionDataOutcome;
.super Ljava/lang/Object;
.source "GetAdSelectionDataOutcome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAdSelectionData:[B

.field private final blacklist mAdSelectionId:J


# direct methods
.method private constructor blacklist <init>(J[B)V
    .registers 4
    .param p1, "adSelectionId"    # J
    .param p3, "adSelectionData"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome;->mAdSelectionId:J

    .line 40
    iput-object p3, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome;->mAdSelectionData:[B

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(J[BLandroid/adservices/adselection/GetAdSelectionDataOutcome-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/adservices/adselection/GetAdSelectionDataOutcome;-><init>(J[B)V

    return-void
.end method


# virtual methods
.method public whitelist getAdSelectionData()[B
    .registers 3

    .line 61
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome;->mAdSelectionData:[B

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_9

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_9
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome;->mAdSelectionData:[B

    iget-object v1, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome;->mAdSelectionData:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdSelectionDataId()J
    .registers 3

    .line 55
    iget-wide v0, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome;->mAdSelectionId:J

    return-wide v0
.end method

.method public whitelist getAdSelectionId()J
    .registers 3

    .line 49
    iget-wide v0, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome;->mAdSelectionId:J

    return-wide v0
.end method
