.class public final Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;
.super Ljava/lang/Object;
.source "GetAdSelectionDataOutcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/GetAdSelectionDataOutcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionData:[B

.field private blacklist mAdSelectionId:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/GetAdSelectionDataOutcome;
    .registers 6

    .line 105
    iget-wide v0, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->mAdSelectionId:J

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

    .line 108
    new-instance v0, Landroid/adservices/adselection/GetAdSelectionDataOutcome;

    iget-wide v1, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->mAdSelectionId:J

    iget-object v3, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->mAdSelectionData:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/adservices/adselection/GetAdSelectionDataOutcome;-><init>(J[BLandroid/adservices/adselection/GetAdSelectionDataOutcome-IA;)V

    return-object v0
.end method

.method public blacklist setAdSelectionData([B)Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;
    .registers 3
    .param p1, "adSelectionData"    # [B

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_d

    .line 91
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->mAdSelectionData:[B

    goto :goto_10

    .line 93
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->mAdSelectionData:[B

    .line 95
    :goto_10
    return-object p0
.end method

.method public blacklist setAdSelectionId(J)Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 82
    iput-wide p1, p0, Landroid/adservices/adselection/GetAdSelectionDataOutcome$Builder;->mAdSelectionId:J

    .line 83
    return-object p0
.end method
