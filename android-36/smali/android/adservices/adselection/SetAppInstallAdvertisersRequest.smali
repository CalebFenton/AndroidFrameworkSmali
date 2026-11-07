.class public Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;
.super Ljava/lang/Object;
.source "SetAppInstallAdvertisersRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/SetAppInstallAdvertisersRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAdvertisers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "advertisers":Ljava/util/Set;, "Ljava/util/Set<Landroid/adservices/common/AdTechIdentifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;->mAdvertisers:Ljava/util/Set;

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Set;Landroid/adservices/adselection/SetAppInstallAdvertisersRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public whitelist getAdvertisers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/adservices/common/AdTechIdentifier;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/adservices/adselection/SetAppInstallAdvertisersRequest;->mAdvertisers:Ljava/util/Set;

    return-object v0
.end method
