.class public final Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;
.super Ljava/lang/Object;
.source "GetAdSelectionDataInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/GetAdSelectionDataInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallerPackageName:Ljava/lang/String;

.field private blacklist mCoordinatorOrigin:Landroid/net/Uri;

.field private blacklist mSeller:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/GetAdSelectionDataInput;
    .registers 8

    .line 215
    iget-object v0, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v1, Landroid/adservices/adselection/GetAdSelectionDataInput;

    iget-object v2, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    iget-object v3, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mCallerPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mCoordinatorOrigin:Landroid/net/Uri;

    iget-object v5, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/adservices/adselection/GetAdSelectionDataInput;-><init>(Landroid/adservices/common/AdTechIdentifier;Ljava/lang/String;Landroid/net/Uri;Landroid/adservices/adselection/SellerConfiguration;Landroid/adservices/adselection/GetAdSelectionDataInput-IA;)V

    return-object v1
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public blacklist setCoordinatorOriginUri(Landroid/net/Uri;)Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;
    .registers 2
    .param p1, "coordinatorOrigin"    # Landroid/net/Uri;

    .line 191
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mCoordinatorOrigin:Landroid/net/Uri;

    .line 192
    return-object p0
.end method

.method public blacklist setSeller(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;
    .registers 2
    .param p1, "seller"    # Landroid/adservices/common/AdTechIdentifier;

    .line 173
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mSeller:Landroid/adservices/common/AdTechIdentifier;

    .line 174
    return-object p0
.end method

.method public blacklist setSellerConfiguration(Landroid/adservices/adselection/SellerConfiguration;)Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;
    .registers 2
    .param p1, "sellerConfiguration"    # Landroid/adservices/adselection/SellerConfiguration;

    .line 204
    iput-object p1, p0, Landroid/adservices/adselection/GetAdSelectionDataInput$Builder;->mSellerConfiguration:Landroid/adservices/adselection/SellerConfiguration;

    .line 205
    return-object p0
.end method
