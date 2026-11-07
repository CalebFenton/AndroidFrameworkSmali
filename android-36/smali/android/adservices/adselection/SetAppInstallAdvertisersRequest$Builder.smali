.class public final Landroid/adservices/adselection/SetAppInstallAdvertisersRequest$Builder;
.super Ljava/lang/Object;
.source "SetAppInstallAdvertisersRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdvertisers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;
    .registers 4

    .line 72
    new-instance v0, Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;

    iget-object v1, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersRequest$Builder;->mAdvertisers:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;-><init>(Ljava/util/Set;Landroid/adservices/adselection/SetAppInstallAdvertisersRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAdvertisers(Ljava/util/Set;)Landroid/adservices/adselection/SetAppInstallAdvertisersRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;)",
            "Landroid/adservices/adselection/SetAppInstallAdvertisersRequest$Builder;"
        }
    .end annotation

    .line 63
    .local p1, "advertisers":Ljava/util/Set;, "Ljava/util/Set<Landroid/adservices/common/AdTechIdentifier;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersRequest$Builder;->mAdvertisers:Ljava/util/Set;

    .line 66
    return-object p0
.end method
