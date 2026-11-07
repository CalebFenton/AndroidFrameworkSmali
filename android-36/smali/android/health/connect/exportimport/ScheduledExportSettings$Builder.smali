.class public final Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;
.super Ljava/lang/Object;
.source "ScheduledExportSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/exportimport/ScheduledExportSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPeriodInDays:I

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;->mPeriodInDays:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/health/connect/exportimport/ScheduledExportSettings;
    .registers 5

    .line 142
    new-instance v0, Landroid/health/connect/exportimport/ScheduledExportSettings;

    iget-object v1, p0, Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;->mUri:Landroid/net/Uri;

    iget v2, p0, Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;->mPeriodInDays:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/exportimport/ScheduledExportSettings;-><init>(Landroid/net/Uri;ILandroid/health/connect/exportimport/ScheduledExportSettings-IA;)V

    return-object v0
.end method

.method public blacklist setPeriodInDays(I)Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;
    .registers 4
    .param p1, "periodInDays"    # I

    .line 131
    if-ltz p1, :cond_9

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_9

    .line 135
    iput p1, p0, Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;->mPeriodInDays:I

    .line 136
    return-object p0

    .line 132
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "periodInDays should be between 0 and 30"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUri(Landroid/net/Uri;)Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportSettings$Builder;->mUri:Landroid/net/Uri;

    .line 121
    return-object p0
.end method
