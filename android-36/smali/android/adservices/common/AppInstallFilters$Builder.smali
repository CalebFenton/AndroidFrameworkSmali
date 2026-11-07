.class public final Landroid/adservices/common/AppInstallFilters$Builder;
.super Ljava/lang/Object;
.source "AppInstallFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/AppInstallFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPackageNames(Landroid/adservices/common/AppInstallFilters$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AppInstallFilters$Builder;->mPackageNames:Ljava/util/Set;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/adservices/common/AppInstallFilters$Builder;->mPackageNames:Ljava/util/Set;

    .line 186
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/AppInstallFilters;
    .registers 3

    .line 203
    new-instance v0, Landroid/adservices/common/AppInstallFilters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/common/AppInstallFilters;-><init>(Landroid/adservices/common/AppInstallFilters$Builder;Landroid/adservices/common/AppInstallFilters-IA;)V

    return-object v0
.end method

.method public whitelist setPackageNames(Ljava/util/Set;)Landroid/adservices/common/AppInstallFilters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/adservices/common/AppInstallFilters$Builder;"
        }
    .end annotation

    .line 195
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iput-object p1, p0, Landroid/adservices/common/AppInstallFilters$Builder;->mPackageNames:Ljava/util/Set;

    .line 197
    return-object p0
.end method
