.class public final Landroid/adservices/adselection/GetAdSelectionDataRequest;
.super Ljava/lang/Object;
.source "GetAdSelectionDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/GetAdSelectionDataRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCoordinatorOriginUri:Landroid/net/Uri;

.field private final blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;

.field private final blacklist mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Landroid/adservices/adselection/SellerConfiguration;)V
    .registers 4
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;
    .param p2, "coordinatorOriginUri"    # Landroid/net/Uri;
    .param p3, "sellerConfiguration"    # Landroid/adservices/adselection/SellerConfiguration;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 47
    iput-object p2, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest;->mCoordinatorOriginUri:Landroid/net/Uri;

    .line 48
    iput-object p3, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Landroid/adservices/adselection/SellerConfiguration;Landroid/adservices/adselection/GetAdSelectionDataRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/adservices/adselection/GetAdSelectionDataRequest;-><init>(Landroid/adservices/common/AdTechIdentifier;Landroid/net/Uri;Landroid/adservices/adselection/SellerConfiguration;)V

    return-void
.end method


# virtual methods
.method public whitelist getCoordinatorOriginUri()Landroid/net/Uri;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest;->mCoordinatorOriginUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getSeller()Landroid/adservices/common/AdTechIdentifier;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public whitelist getSellerConfiguration()Landroid/adservices/adselection/SellerConfiguration;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataRequest;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    return-object v0
.end method
