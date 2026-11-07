.class public final Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;
.super Ljava/lang/Object;
.source "SetAdCounterHistogramOverrideRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;
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
.method static bridge synthetic blacklist -$$Nest$fgetmAdCounterKey(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mAdCounterKey:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdEventType(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mAdEventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBuyer(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)Landroid/adservices/common/AdTechIdentifier;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomAudienceName(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mCustomAudienceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomAudienceOwner(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mCustomAudienceOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHistogramTimestamps(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mHistogramTimestamps:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mAdEventType:I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mHistogramTimestamps:Ljava/util/List;

    .line 185
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 268
    iget v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mAdEventType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Ad event type must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 270
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    const-string v1, "Buyer must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mCustomAudienceOwner:Ljava/lang/String;

    const-string v1, "Custom audience owner must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mCustomAudienceName:Ljava/lang/String;

    const-string v1, "Custom audience name must not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    new-instance v0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;-><init>(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest-IA;)V

    return-object v0
.end method

.method public blacklist setAdCounterKey(I)Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;
    .registers 2
    .param p1, "adCounterKey"    # I

    .line 205
    iput p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mAdCounterKey:I

    .line 206
    return-object p0
.end method

.method public blacklist setAdEventType(I)Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;
    .registers 2
    .param p1, "adEventType"    # I

    .line 194
    iput p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mAdEventType:I

    .line 195
    return-object p0
.end method

.method public blacklist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;
    .registers 3
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 228
    const-string v0, "Buyer must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    iput-object p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 230
    return-object p0
.end method

.method public blacklist setCustomAudienceName(Ljava/lang/String;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;
    .registers 3
    .param p1, "customAudienceName"    # Ljava/lang/String;

    .line 254
    const-string v0, "Custom audience name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    iput-object p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mCustomAudienceName:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public blacklist setCustomAudienceOwner(Ljava/lang/String;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;
    .registers 3
    .param p1, "customAudienceOwner"    # Ljava/lang/String;

    .line 241
    const-string v0, "Custom audience owner must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    iput-object p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mCustomAudienceOwner:Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public blacklist setHistogramTimestamps(Ljava/util/List;)Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;)",
            "Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;"
        }
    .end annotation

    .line 216
    .local p1, "histogramTimestamps":Ljava/util/List;, "Ljava/util/List<Ljava/time/Instant;>;"
    const-string v0, "List of histogram timestamps must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    iput-object p1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->mHistogramTimestamps:Ljava/util/List;

    .line 218
    return-object p0
.end method
