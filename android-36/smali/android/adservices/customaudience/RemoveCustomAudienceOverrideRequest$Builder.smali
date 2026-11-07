.class public final Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;
.super Ljava/lang/Object;
.source "RemoveCustomAudienceOverrideRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;
    .registers 4

    .line 86
    iget-object v0, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;

    iget-object v1, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget-object v2, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest;-><init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;
    .registers 2
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 71
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Landroid/adservices/customaudience/RemoveCustomAudienceOverrideRequest$Builder;->mName:Ljava/lang/String;

    .line 80
    return-object p0
.end method
