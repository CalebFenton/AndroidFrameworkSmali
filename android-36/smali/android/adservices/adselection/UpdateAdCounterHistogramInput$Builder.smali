.class public final Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;
.super Ljava/lang/Object;
.source "UpdateAdCounterHistogramInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/UpdateAdCounterHistogramInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdEventType:I

.field private blacklist mAdSelectionId:J

.field private blacklist mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mCallerPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdEventType(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mAdEventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdSelectionId(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mAdSelectionId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerAdTech(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)Landroid/adservices/common/AdTechIdentifier;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerPackageName(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mCallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(JILandroid/adservices/common/AdTechIdentifier;Ljava/lang/String;)V
    .registers 10
    .param p1, "adSelectionId"    # J
    .param p3, "adEventType"    # I
    .param p4, "callerAdTech"    # Landroid/adservices/common/AdTechIdentifier;
    .param p5, "callerPackageName"    # Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    const-string v3, "Non-zero ad selection ID must be set"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 202
    if-eqz p3, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    const-string v3, "Win event types cannot be manually updated"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 204
    if-ltz p3, :cond_23

    const/4 v0, 0x3

    if-gt p3, v0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    const-string v0, "Ad event type must be one of AD_EVENT_TYPE_IMPRESSION, AD_EVENT_TYPE_VIEW, or AD_EVENT_TYPE_CLICK"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 208
    const-string v0, "Caller ad tech must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    const-string v0, "Caller package name must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iput-wide p1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mAdSelectionId:J

    .line 212
    iput p3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mAdEventType:I

    .line 213
    iput-object p4, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    .line 214
    iput-object p5, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 215
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/UpdateAdCounterHistogramInput;
    .registers 3

    .line 275
    new-instance v0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/adselection/UpdateAdCounterHistogramInput;-><init>(Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;Landroid/adservices/adselection/UpdateAdCounterHistogramInput-IA;)V

    return-object v0
.end method

.method public blacklist setAdEventType(I)Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;
    .registers 6
    .param p1, "adEventType"    # I

    .line 238
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "Win event types cannot be manually updated"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 240
    if-ltz p1, :cond_12

    const/4 v2, 0x3

    if-gt p1, v2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "Ad event type must be one of AD_EVENT_TYPE_IMPRESSION, AD_EVENT_TYPE_VIEW, or AD_EVENT_TYPE_CLICK"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 244
    iput p1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mAdEventType:I

    .line 245
    return-object p0
.end method

.method public blacklist setAdSelectionId(J)Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;
    .registers 5
    .param p1, "adSelectionId"    # J

    .line 224
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 226
    iput-wide p1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mAdSelectionId:J

    .line 227
    return-object p0
.end method

.method public blacklist setCallerAdTech(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;
    .registers 3
    .param p1, "callerAdTech"    # Landroid/adservices/common/AdTechIdentifier;

    .line 255
    const-string v0, "Caller ad tech must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    iput-object p1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    .line 257
    return-object p0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;
    .registers 3
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 267
    const-string v0, "Caller package name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    iput-object p1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 269
    return-object p0
.end method
