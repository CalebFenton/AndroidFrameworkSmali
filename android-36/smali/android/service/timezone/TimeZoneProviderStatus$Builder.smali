.class public final Landroid/service/timezone/TimeZoneProviderStatus$Builder;
.super Ljava/lang/Object;
.source "TimeZoneProviderStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConnectivityDependencyStatus:I

.field private blacklist mLocationDetectionDependencyStatus:I

.field private blacklist mTimeZoneResolutionOperationStatus:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    .line 310
    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    .line 311
    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    .line 318
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/timezone/TimeZoneProviderStatus;)V
    .registers 3
    .param p1, "toCopy"    # Landroid/service/timezone/TimeZoneProviderStatus;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    .line 310
    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    .line 311
    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    .line 324
    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$fgetmLocationDetectionDependencyStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I

    move-result v0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    .line 325
    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$fgetmConnectivityDependencyStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I

    move-result v0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    .line 326
    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$fgetmTimeZoneResolutionOperationStatus(Landroid/service/timezone/TimeZoneProviderStatus;)I

    move-result v0

    iput v0, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    .line 327
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/service/timezone/TimeZoneProviderStatus;
    .registers 6

    .line 366
    new-instance v0, Landroid/service/timezone/TimeZoneProviderStatus;

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    .line 367
    invoke-static {v1}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$smrequireValidDependencyStatus(I)I

    move-result v1

    iget v2, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    .line 368
    invoke-static {v2}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$smrequireValidDependencyStatus(I)I

    move-result v2

    iget v3, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    .line 369
    invoke-static {v3}, Landroid/service/timezone/TimeZoneProviderStatus;->-$$Nest$smrequireValidOperationStatus(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/service/timezone/TimeZoneProviderStatus;-><init>(IIILandroid/service/timezone/TimeZoneProviderStatus-IA;)V

    .line 366
    return-object v0
.end method

.method public whitelist setConnectivityDependencyStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    .registers 2
    .param p1, "connectivityStatus"    # I

    .line 346
    iput p1, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mConnectivityDependencyStatus:I

    .line 347
    return-object p0
.end method

.method public whitelist setLocationDetectionDependencyStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    .registers 2
    .param p1, "locationDetectionStatus"    # I

    .line 336
    iput p1, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mLocationDetectionDependencyStatus:I

    .line 337
    return-object p0
.end method

.method public whitelist setTimeZoneResolutionOperationStatus(I)Landroid/service/timezone/TimeZoneProviderStatus$Builder;
    .registers 2
    .param p1, "timeZoneResolutionStatus"    # I

    .line 357
    iput p1, p0, Landroid/service/timezone/TimeZoneProviderStatus$Builder;->mTimeZoneResolutionOperationStatus:I

    .line 358
    return-object p0
.end method
