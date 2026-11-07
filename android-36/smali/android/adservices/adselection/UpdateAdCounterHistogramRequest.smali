.class public Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;
.super Ljava/lang/Object;
.source "UpdateAdCounterHistogramRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;
    }
.end annotation


# static fields
.field public static final blacklist DISALLOW_AD_EVENT_TYPE_WIN_MESSAGE:Ljava/lang/String; = "Win event types cannot be manually updated"

.field public static final blacklist INVALID_AD_EVENT_TYPE_MESSAGE:Ljava/lang/String; = "Ad event type must be one of AD_EVENT_TYPE_IMPRESSION, AD_EVENT_TYPE_VIEW, or AD_EVENT_TYPE_CLICK"

.field public static final blacklist UNSET_AD_EVENT_TYPE_MESSAGE:Ljava/lang/String; = "Ad event type must be set"

.field public static final blacklist UNSET_CALLER_ADTECH_MESSAGE:Ljava/lang/String; = "Caller ad tech must not be null"


# instance fields
.field private final blacklist mAdEventType:I

.field private final blacklist mAdSelectionId:J

.field private final blacklist mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;->-$$Nest$fgetmAdSelectionId(Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdSelectionId:J

    .line 64
    invoke-static {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;->-$$Nest$fgetmAdEventType(Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdEventType:I

    .line 65
    invoke-static {p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;->-$$Nest$fgetmCallerAdTech(Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;Landroid/adservices/adselection/UpdateAdCounterHistogramRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;-><init>(Landroid/adservices/adselection/UpdateAdCounterHistogramRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 117
    :cond_4
    instance-of v1, p1, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 118
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;

    .line 119
    .local v1, "that":Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;
    iget-wide v3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdSelectionId:J

    iget-wide v5, v1, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdSelectionId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    iget v3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdEventType:I

    iget v4, v1, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdEventType:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    iget-object v4, v1, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    .line 121
    invoke-virtual {v3, v4}, Landroid/adservices/common/AdTechIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    .line 119
    :goto_27
    return v0
.end method

.method public whitelist getAdEventType()I
    .registers 2

    .line 89
    iget v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdEventType:I

    return v0
.end method

.method public whitelist getAdSelectionId()J
    .registers 3

    .line 80
    iget-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdSelectionId:J

    return-wide v0
.end method

.method public whitelist getCallerAdTech()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 127
    iget-wide v0, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateAdCounterHistogramRequest{mAdSelectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdSelectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mAdEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallerAdTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/UpdateAdCounterHistogramRequest;->mCallerAdTech:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
