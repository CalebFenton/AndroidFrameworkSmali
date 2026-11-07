.class public final Landroid/adservices/adselection/ReportImpressionInput$Builder;
.super Ljava/lang/Object;
.source "ReportImpressionInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/ReportImpressionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

.field private blacklist mAdSelectionId:J

.field private blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mAdSelectionId:J

    .line 119
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/ReportImpressionInput;
    .registers 9

    .line 151
    iget-object v0, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-wide v0, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mAdSelectionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 157
    new-instance v2, Landroid/adservices/adselection/ReportImpressionInput;

    iget-wide v3, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mAdSelectionId:J

    iget-object v5, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    iget-object v6, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/adservices/adselection/ReportImpressionInput;-><init>(JLandroid/adservices/adselection/AdSelectionConfig;Ljava/lang/String;Landroid/adservices/adselection/ReportImpressionInput-IA;)V

    return-object v2
.end method

.method public blacklist setAdSelectionConfig(Landroid/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/ReportImpressionInput$Builder;
    .registers 2
    .param p1, "adSelectionConfig"    # Landroid/adservices/adselection/AdSelectionConfig;

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iput-object p1, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mAdSelectionConfig:Landroid/adservices/adselection/AdSelectionConfig;

    .line 135
    return-object p0
.end method

.method public blacklist setAdSelectionId(J)Landroid/adservices/adselection/ReportImpressionInput$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 124
    iput-wide p1, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mAdSelectionId:J

    .line 125
    return-object p0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/ReportImpressionInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iput-object p1, p0, Landroid/adservices/adselection/ReportImpressionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 145
    return-object p0
.end method
