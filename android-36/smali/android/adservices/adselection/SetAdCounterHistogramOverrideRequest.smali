.class public Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;
.super Ljava/lang/Object;
.source "SetAdCounterHistogramOverrideRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;
    }
.end annotation


# static fields
.field public static final blacklist NULL_BUYER_MESSAGE:Ljava/lang/String; = "Buyer must not be null"

.field public static final blacklist NULL_CUSTOM_AUDIENCE_NAME_MESSAGE:Ljava/lang/String; = "Custom audience name must not be null"

.field public static final blacklist NULL_CUSTOM_AUDIENCE_OWNER_MESSAGE:Ljava/lang/String; = "Custom audience owner must not be null"

.field public static final blacklist NULL_HISTOGRAM_TIMESTAMPS_MESSAGE:Ljava/lang/String; = "List of histogram timestamps must not be null"


# instance fields
.field private final blacklist mAdCounterKey:I

.field private final blacklist mAdEventType:I

.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mCustomAudienceName:Ljava/lang/String;

.field private final blacklist mCustomAudienceOwner:Ljava/lang/String;

.field private final blacklist mHistogramTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmAdEventType(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mAdEventType:I

    .line 71
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmAdCounterKey(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mAdCounterKey:I

    .line 72
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmHistogramTimestamps(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mHistogramTimestamps:Ljava/util/List;

    .line 73
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmBuyer(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)Landroid/adservices/common/AdTechIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 74
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmCustomAudienceOwner(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mCustomAudienceOwner:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;->-$$Nest$fgetmCustomAudienceName(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mCustomAudienceName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;-><init>(Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAdCounterKey()I
    .registers 2

    .line 101
    iget v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mAdCounterKey:I

    return v0
.end method

.method public blacklist getAdEventType()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mAdEventType:I

    return v0
.end method

.method public blacklist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public blacklist getCustomAudienceName()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mCustomAudienceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCustomAudienceOwner()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mCustomAudienceOwner:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHistogramTimestamps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mHistogramTimestamps:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAdCounterHistogramOverrideRequest{mAdEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mAdEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdCounterKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mAdCounterKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistogramTimestamps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mHistogramTimestamps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBuyer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomAudienceOwner=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mCustomAudienceOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mCustomAudienceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/adselection/SetAdCounterHistogramOverrideRequest;->mCustomAudienceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
