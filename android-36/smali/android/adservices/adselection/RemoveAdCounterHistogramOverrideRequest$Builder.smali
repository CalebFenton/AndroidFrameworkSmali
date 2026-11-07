.class public final Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;
.super Ljava/lang/Object;
.source "RemoveAdCounterHistogramOverrideRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdCounterKey:I

.field private blacklist mAdEventType:I

.field private blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdCounterKey(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mAdCounterKey:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdEventType(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mAdEventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBuyer(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;)Landroid/adservices/common/AdTechIdentifier;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mAdEventType:I

    .line 113
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 158
    iget v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mAdEventType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Ad event type must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "Buyer must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    new-instance v0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest;-><init>(Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest-IA;)V

    return-object v0
.end method

.method public blacklist setAdCounterKey(I)Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;
    .registers 2
    .param p1, "adCounterKey"    # I

    .line 133
    iput p1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mAdCounterKey:I

    .line 134
    return-object p0
.end method

.method public blacklist setAdEventType(I)Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;
    .registers 2
    .param p1, "adEventType"    # I

    .line 122
    iput p1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mAdEventType:I

    .line 123
    return-object p0
.end method

.method public blacklist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;
    .registers 3
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 144
    const-string v0, "Buyer must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iput-object p1, p0, Landroid/adservices/adselection/RemoveAdCounterHistogramOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 146
    return-object p0
.end method
