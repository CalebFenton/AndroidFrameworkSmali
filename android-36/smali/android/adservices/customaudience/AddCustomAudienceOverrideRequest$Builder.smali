.class public final Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;
.super Ljava/lang/Object;
.source "AddCustomAudienceOverrideRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBiddingLogicJs:Ljava/lang/String;

.field private blacklist mBiddingLogicJsVersion:J

.field private blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mTrustedBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;
    .registers 10

    .line 166
    iget-object v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mBiddingLogicJs:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mTrustedBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;

    iget-object v2, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mBiddingLogicJs:Ljava/lang/String;

    iget-wide v5, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mBiddingLogicJsVersion:J

    iget-object v7, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mTrustedBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;-><init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest-IA;)V

    return-object v1
.end method

.method public whitelist setBiddingLogicJs(Ljava/lang/String;)Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;
    .registers 2
    .param p1, "biddingLogicJs"    # Ljava/lang/String;

    .line 144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-object p1, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mBiddingLogicJs:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public whitelist setBiddingLogicJsVersion(J)Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;
    .registers 3
    .param p1, "biddingLogicJsVersion"    # J

    .line 159
    iput-wide p1, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mBiddingLogicJsVersion:J

    .line 160
    return-object p0
.end method

.method public whitelist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;
    .registers 2
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 115
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 118
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mName:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public whitelist setTrustedBiddingSignals(Landroid/adservices/common/AdSelectionSignals;)Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;
    .registers 2
    .param p1, "trustedBiddingSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 134
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;->mTrustedBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 137
    return-object p0
.end method
