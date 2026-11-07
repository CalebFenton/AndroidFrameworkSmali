.class public final Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;
.super Ljava/lang/Object;
.source "FetchAndJoinCustomAudienceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivationTime:Ljava/time/Instant;

.field private blacklist mCallerPackageName:Ljava/lang/String;

.field private blacklist mExpirationTime:Ljava/time/Instant;

.field private blacklist mFetchUri:Landroid/net/Uri;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivationTime(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mActivationTime:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerPackageName(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mCallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpirationTime(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mExpirationTime:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFetchUri(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mFetchUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserBiddingSignals(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;)Landroid/adservices/common/AdSelectionSignals;
    .registers 1

    iget-object p0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3
    .param p1, "fetchUri"    # Landroid/net/Uri;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mFetchUri:Landroid/net/Uri;

    .line 256
    iput-object p2, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 257
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;
    .registers 3

    .line 335
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mFetchUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput;-><init>(Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput-IA;)V

    return-object v0
.end method

.method public blacklist setActivationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;
    .registers 2
    .param p1, "activationTime"    # Ljava/time/Instant;

    .line 289
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mActivationTime:Ljava/time/Instant;

    .line 290
    return-object p0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 323
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public blacklist setExpirationTime(Ljava/time/Instant;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;
    .registers 2
    .param p1, "expirationTime"    # Ljava/time/Instant;

    .line 300
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mExpirationTime:Ljava/time/Instant;

    .line 301
    return-object p0
.end method

.method public blacklist setFetchUri(Landroid/net/Uri;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;
    .registers 2
    .param p1, "fetchUri"    # Landroid/net/Uri;

    .line 266
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mFetchUri:Landroid/net/Uri;

    .line 268
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 278
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mName:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public blacklist setUserBiddingSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;
    .registers 2
    .param p1, "userBiddingSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 312
    iput-object p1, p0, Landroid/adservices/customaudience/FetchAndJoinCustomAudienceInput$Builder;->mUserBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 313
    return-object p0
.end method
