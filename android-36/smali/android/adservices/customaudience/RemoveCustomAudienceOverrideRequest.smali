.class public Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;
.super Ljava/lang/Object;
.source "RemoveCustomAudienceOverrideRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;
    .param p2, "name"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 42
    iput-object p2, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist getBuyer()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;->mName:Ljava/lang/String;

    return-object v0
.end method
