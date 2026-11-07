.class public Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;
.super Ljava/lang/Object;
.source "RemoveAdCounterHistogramOverrideRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAdCounterKey:I

.field private final blacklist mAdEventType:I

.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmAdEventType(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mAdEventType:I

    .line 51
    invoke-static {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmAdCounterKey(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mAdCounterKey:I

    .line 52
    invoke-static {p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmBuyer(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;-><init>(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAdCounterKey()I
    .registers 2

    .line 78
    iget v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mAdCounterKey:I

    return v0
.end method

.method public blacklist getAdEventType()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mAdEventType:I

    return v0
.end method

.method public blacklist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveAdCounterHistogramOverrideRequest{mAdEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mAdEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdCounterKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mAdCounterKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBuyer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
