.class public final Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
.super Ljava/lang/Object;
.source "ScheduledExportStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/exportimport/ScheduledExportStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataExportError:I

.field private blacklist mLastExportAppName:Ljava/lang/String;

.field private blacklist mLastExportFileName:Ljava/lang/String;

.field private blacklist mLastFailedExportTime:Ljava/time/Instant;

.field private blacklist mLastSuccessfulExportTime:Ljava/time/Instant;

.field private blacklist mNextExportAppName:Ljava/lang/String;

.field private blacklist mNextExportFileName:Ljava/lang/String;

.field private blacklist mNextExportSequentialNumber:I

.field private blacklist mPeriodInDays:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/health/connect/exportimport/ScheduledExportStatus;
    .registers 12

    .line 342
    new-instance v0, Landroid/health/connect/exportimport/ScheduledExportStatus;

    iget-object v1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mLastSuccessfulExportTime:Ljava/time/Instant;

    iget-object v2, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mLastFailedExportTime:Ljava/time/Instant;

    iget v3, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mDataExportError:I

    iget v4, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mPeriodInDays:I

    iget-object v5, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mLastExportFileName:Ljava/lang/String;

    iget-object v6, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mLastExportAppName:Ljava/lang/String;

    iget-object v7, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mNextExportFileName:Ljava/lang/String;

    iget-object v8, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mNextExportAppName:Ljava/lang/String;

    iget v9, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mNextExportSequentialNumber:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/health/connect/exportimport/ScheduledExportStatus;-><init>(Ljava/time/Instant;Ljava/time/Instant;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/health/connect/exportimport/ScheduledExportStatus-IA;)V

    return-object v0
.end method

.method public blacklist setDataExportError(I)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "dataExportError"    # I

    .line 280
    iput p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mDataExportError:I

    .line 281
    return-object p0
.end method

.method public blacklist setLastExportAppName(Ljava/lang/String;)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "lastExportAppName"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mLastExportAppName:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public blacklist setLastExportFileName(Ljava/lang/String;)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "lastExportFileName"    # Ljava/lang/String;

    .line 300
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mLastExportFileName:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public blacklist setLastFailedExportTime(Ljava/time/Instant;)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "lastFailedExportTime"    # Ljava/time/Instant;

    .line 270
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mLastFailedExportTime:Ljava/time/Instant;

    .line 271
    return-object p0
.end method

.method public blacklist setLastSuccessfulExportTime(Ljava/time/Instant;)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "lastSuccessfulExportTime"    # Ljava/time/Instant;

    .line 261
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mLastSuccessfulExportTime:Ljava/time/Instant;

    .line 262
    return-object p0
.end method

.method public blacklist setNextExportAppName(Ljava/lang/String;)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "nextExportAppName"    # Ljava/lang/String;

    .line 330
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mNextExportAppName:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public blacklist setNextExportFileName(Ljava/lang/String;)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "nextExportFileName"    # Ljava/lang/String;

    .line 320
    iput-object p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mNextExportFileName:Ljava/lang/String;

    .line 321
    return-object p0
.end method

.method public blacklist setNextExportSequentialNumber(I)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "nextExportSequentialNumber"    # I

    .line 336
    iput p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mNextExportSequentialNumber:I

    .line 337
    return-object p0
.end method

.method public blacklist setPeriodInDays(I)Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;
    .registers 2
    .param p1, "periodInDays"    # I

    .line 290
    iput p1, p0, Landroid/health/connect/exportimport/ScheduledExportStatus$Builder;->mPeriodInDays:I

    .line 291
    return-object p0
.end method
