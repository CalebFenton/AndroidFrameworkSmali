.class public final Landroid/adservices/customaudience/PartialCustomAudience$Builder;
.super Ljava/lang/Object;
.source "PartialCustomAudience.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/PartialCustomAudience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivationTime:Ljava/time/Instant;

.field private blacklist mExpirationTime:Ljava/time/Instant;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivationTime(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mActivationTime:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpirationTime(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mExpirationTime:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserBiddingSignals(Landroid/adservices/customaudience/PartialCustomAudience$Builder;)Landroid/adservices/common/AdSelectionSignals;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iput-object p1, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mName:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/PartialCustomAudience;
    .registers 3

    .line 261
    iget-object v0, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Landroid/adservices/customaudience/PartialCustomAudience;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/PartialCustomAudience;-><init>(Landroid/adservices/customaudience/PartialCustomAudience$Builder;Landroid/adservices/customaudience/PartialCustomAudience-IA;)V

    return-object v0
.end method

.method public whitelist setActivationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/PartialCustomAudience$Builder;
    .registers 2
    .param p1, "activationTime"    # Ljava/time/Instant;

    .line 226
    iput-object p1, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mActivationTime:Ljava/time/Instant;

    .line 227
    return-object p0
.end method

.method public whitelist setExpirationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/PartialCustomAudience$Builder;
    .registers 2
    .param p1, "expirationTime"    # Ljava/time/Instant;

    .line 237
    iput-object p1, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mExpirationTime:Ljava/time/Instant;

    .line 238
    return-object p0
.end method

.method public whitelist setUserBiddingSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/PartialCustomAudience$Builder;
    .registers 2
    .param p1, "userBiddingSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 250
    iput-object p1, p0, Landroid/adservices/customaudience/PartialCustomAudience$Builder;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 251
    return-object p0
.end method
