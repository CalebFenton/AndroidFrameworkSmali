.class public Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;
.super Ljava/lang/Object;
.source "AddCustomAudienceOverrideRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mBiddingLogicJs:Ljava/lang/String;

.field private final blacklist mBiddingLogicJsVersion:J

.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTrustedBiddingSignals:Landroid/adservices/common/AdSelectionSignals;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;)V
    .registers 7
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "biddingLogicJs"    # Ljava/lang/String;
    .param p4, "biddingLogicJsVersion"    # J
    .param p6, "trustedBiddingSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 62
    iput-object p2, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mBiddingLogicJs:Ljava/lang/String;

    .line 64
    iput-wide p4, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mBiddingLogicJsVersion:J

    .line 65
    iput-object p6, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mTrustedBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;-><init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;Landroid/adservices/common/AdSelectionSignals;)V
    .registers 12
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "biddingLogicJs"    # Ljava/lang/String;
    .param p4, "trustedBiddingSignals"    # Landroid/adservices/common/AdSelectionSignals;

    .line 52
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .end local p1    # "buyer":Landroid/adservices/common/AdTechIdentifier;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "biddingLogicJs":Ljava/lang/String;
    .end local p4    # "trustedBiddingSignals":Landroid/adservices/common/AdSelectionSignals;
    .local v1, "buyer":Landroid/adservices/common/AdTechIdentifier;
    .local v2, "name":Ljava/lang/String;
    .local v3, "biddingLogicJs":Ljava/lang/String;
    .local v6, "trustedBiddingSignals":Landroid/adservices/common/AdSelectionSignals;
    invoke-direct/range {v0 .. v6}, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;-><init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Ljava/lang/String;JLandroid/adservices/common/AdSelectionSignals;)V

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist getBiddingLogicJs()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mBiddingLogicJs:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getBiddingLogicJsVersion()J
    .registers 3

    .line 93
    iget-wide v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mBiddingLogicJsVersion:J

    return-wide v0
.end method

.method public whitelist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTrustedBiddingSignals()Landroid/adservices/common/AdSelectionSignals;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/adservices/customaudience/AddCustomAudienceOverrideRequest;->mTrustedBiddingSignals:Landroid/adservices/common/AdSelectionSignals;

    return-object v0
.end method
