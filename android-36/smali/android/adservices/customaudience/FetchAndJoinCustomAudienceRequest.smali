.class public final Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;
.super Ljava/lang/Object;
.source "FetchAndJoinCustomAudienceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mActivationTime:Ljava/time/Instant;

.field private final blacklist mExpirationTime:Ljava/time/Instant;

.field private final blacklist mFetchUri:Landroid/net/Uri;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->-$$Nest$fgetmFetchUri(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->-$$Nest$fgetmFetchUri(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mFetchUri:Landroid/net/Uri;

    .line 50
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->-$$Nest$fgetmName(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mName:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->-$$Nest$fgetmActivationTime(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mActivationTime:Ljava/time/Instant;

    .line 52
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->-$$Nest$fgetmExpirationTime(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mExpirationTime:Ljava/time/Instant;

    .line 53
    invoke-static {p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;->-$$Nest$fgetmUserBiddingSignals(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)Landroid/adservices/common/AdSelectionSignals;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;-><init>(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 112
    :cond_4
    instance-of v1, p1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 113
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;

    .line 114
    .local v1, "that":Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;
    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mFetchUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mFetchUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mName:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mName:Ljava/lang/String;

    .line 115
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mActivationTime:Ljava/time/Instant;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mActivationTime:Ljava/time/Instant;

    .line 116
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mExpirationTime:Ljava/time/Instant;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mExpirationTime:Ljava/time/Instant;

    .line 117
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    iget-object v4, v1, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 118
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    .line 114
    :goto_41
    return v0
.end method

.method public whitelist getActivationTime()Ljava/time/Instant;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mActivationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getExpirationTime()Ljava/time/Instant;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mExpirationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getFetchUri()Landroid/net/Uri;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mFetchUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserBiddingSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 126
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mFetchUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mActivationTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mExpirationTime:Ljava/time/Instant;

    iget-object v4, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FetchAndJoinCustomAudienceRequest{fetchUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mFetchUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mActivationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mExpirationTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userBiddingSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceRequest;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
