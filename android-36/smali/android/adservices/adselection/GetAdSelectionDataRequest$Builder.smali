.class public final Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;
.super Ljava/lang/Object;
.source "GetAdSelectionDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/GetAdSelectionDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCoordinatorOriginUri:Landroid/net/Uri;

.field private blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/GetAdSelectionDataRequest;
    .registers 6

    .line 124
    new-instance v0, Landroid/adservices/adselection/GetAdSelectionDataRequest;

    iget-object v1, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;->mCoordinatorOriginUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/adservices/adselection/GetAdSelectionDataRequest;-><init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Landroid/adservices/adselection/SellerConfiguration;Landroid/adservices/adselection/GetAdSelectionDataRequest-IA;)V

    return-object v0
.end method

.method public whitelist setCoordinatorOriginUri(Landroid/net/Uri;)Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;
    .registers 2
    .param p1, "coordinatorOriginUri"    # Landroid/net/Uri;

    .line 115
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;->mCoordinatorOriginUri:Landroid/net/Uri;

    .line 116
    return-object p0
.end method

.method public whitelist setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;
    .registers 2
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 97
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 98
    return-object p0
.end method

.method public whitelist setSellerConfiguration(Landroid/adservices/adselection/SellerConfiguration;)Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;
    .registers 2
    .param p1, "sellerConfiguration"    # Landroid/adservices/adselection/SellerConfiguration;

    .line 136
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    .line 137
    return-object p0
.end method
