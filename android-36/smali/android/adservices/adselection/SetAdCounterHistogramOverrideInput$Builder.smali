.class public final Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;
.super Ljava/lang/Object;
.source "SetAdCounterHistogramOverrideInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdCounterKey:I

.field private blacklist mAdEventType:I

.field private blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mCustomAudienceName:Ljava/lang/String;

.field private blacklist mCustomAudienceOwner:Ljava/lang/String;

.field private blacklist mHistogramTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdCounterKey(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mAdCounterKey:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdEventType(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mAdEventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBuyer(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)Landroid/adservices/common/AdTechIdentifier;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomAudienceName(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mCustomAudienceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomAudienceOwner(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mCustomAudienceOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHistogramTimestamps(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mHistogramTimestamps:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mAdEventType:I

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mHistogramTimestamps:Ljava/util/List;

    .line 221
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 304
    iget v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mAdEventType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Ad event type must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "Buyer must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mCustomAudienceOwner:Ljava/lang/String;

    const-string v1, "Custom audience owner must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mCustomAudienceName:Ljava/lang/String;

    const-string v1, "Custom audience name must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    new-instance v0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput;-><init>(Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput-IA;)V

    return-object v0
.end method

.method public blacklist setAdCounterKey(I)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;
    .registers 2
    .param p1, "adCounterKey"    # I

    .line 241
    iput p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mAdCounterKey:I

    .line 242
    return-object p0
.end method

.method public blacklist setAdEventType(I)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;
    .registers 2
    .param p1, "adEventType"    # I

    .line 230
    iput p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mAdEventType:I

    .line 231
    return-object p0
.end method

.method public blacklist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;
    .registers 3
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 264
    const-string v0, "Buyer must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    iput-object p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 266
    return-object p0
.end method

.method public blacklist setCustomAudienceName(Ljava/lang/String;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;
    .registers 3
    .param p1, "customAudienceName"    # Ljava/lang/String;

    .line 290
    const-string v0, "Custom audience name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    iput-object p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mCustomAudienceName:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public blacklist setCustomAudienceOwner(Ljava/lang/String;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;
    .registers 3
    .param p1, "customAudienceOwner"    # Ljava/lang/String;

    .line 277
    const-string v0, "Custom audience owner must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    iput-object p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mCustomAudienceOwner:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public blacklist setHistogramTimestamps(Ljava/util/List;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;)",
            "Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;"
        }
    .end annotation

    .line 252
    .local p1, "histogramTimestamps":Ljava/util/List;, "Ljava/util/List<Ljava/time/Instant;>;"
    const-string v0, "List of histogram timestamps must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    iput-object p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideInput$Builder;->mHistogramTimestamps:Ljava/util/List;

    .line 254
    return-object p0
.end method
