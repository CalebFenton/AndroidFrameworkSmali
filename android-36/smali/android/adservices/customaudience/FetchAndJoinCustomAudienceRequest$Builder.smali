.class public final Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;
.super Ljava/lang/Object;
.source "FetchAndJoinCustomAudienceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivationTime:Ljava/time/Instant;

.field private blacklist mExpirationTime:Ljava/time/Instant;

.field private blacklist mFetchUri:Landroid/net/Uri;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivationTime(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mActivationTime:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpirationTime(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mExpirationTime:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFetchUri(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mFetchUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserBiddingSignals(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Landroid/adservices/common/AdSelectionSignals;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 2
    .param p1, "fetchUri"    # Landroid/net/Uri;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mFetchUri:Landroid/net/Uri;

    .line 164
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;
    .registers 3

    .line 230
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mFetchUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;-><init>(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest-IA;)V

    return-object v0
.end method

.method public whitelist setActivationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;
    .registers 2
    .param p1, "activationTime"    # Ljava/time/Instant;

    .line 196
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mActivationTime:Ljava/time/Instant;

    .line 197
    return-object p0
.end method

.method public whitelist setExpirationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;
    .registers 2
    .param p1, "expirationTime"    # Ljava/time/Instant;

    .line 207
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mExpirationTime:Ljava/time/Instant;

    .line 208
    return-object p0
.end method

.method public whitelist setFetchUri(Landroid/net/Uri;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;
    .registers 2
    .param p1, "fetchUri"    # Landroid/net/Uri;

    .line 173
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mFetchUri:Landroid/net/Uri;

    .line 175
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 185
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mName:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public whitelist setUserBiddingSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;
    .registers 2
    .param p1, "userBiddingSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 219
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 220
    return-object p0
.end method
