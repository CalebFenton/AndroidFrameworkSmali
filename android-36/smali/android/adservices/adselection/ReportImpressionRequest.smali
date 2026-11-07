.class public Landroid/adservices/adselection/ReportImpressionRequest;
.super Ljava/lang/Object;
.source "ReportImpressionRequest.java"


# instance fields
.field private final blacklist mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

.field private final blacklist mAdSelectionId:J


# direct methods
.method public constructor whitelist <init>(J)V
    .registers 5
    .param p1, "adSelectionId"    # J

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 75
    iput-wide p1, p0, Landroid/adservices/adselection/ReportImpressionRequest;->mAdSelectionId:J

    .line 76
    sget-object v0, Landroid/adservices/adselection/AdSelectionConfig;->EMPTY:Landroid/adservices/adselection/AdSelectionConfig;

    iput-object v0, p0, Landroid/adservices/adselection/ReportImpressionRequest;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 77
    return-void
.end method

.method public constructor whitelist <init>(JLandroid/adservices/adselection/AdSelectionConfig;)V
    .registers 6
    .param p1, "adSelectionId"    # J
    .param p3, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 55
    iput-wide p1, p0, Landroid/adservices/adselection/ReportImpressionRequest;->mAdSelectionId:J

    .line 56
    iput-object p3, p0, Landroid/adservices/adselection/ReportImpressionRequest;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist getAdSelectionConfig()Landroid/adservices/adselection/AdSelectionConfig;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/adservices/adselection/ReportImpressionRequest;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    return-object v0
.end method

.method public whitelist getAdSelectionId()J
    .registers 3

    .line 81
    iget-wide v0, p0, Landroid/adservices/adselection/ReportImpressionRequest;->mAdSelectionId:J

    return-wide v0
.end method
