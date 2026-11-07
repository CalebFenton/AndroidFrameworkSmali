.class public final Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;
.super Ljava/lang/Object;
.source "GetMedicalDataSourcesRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/GetMedicalDataSourcesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    .line 158
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;)V
    .registers 4
    .param p1, "other"    # Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    iget-object v1, p1, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 164
    return-void
.end method

.method public constructor whitelist <init>(Landroid/health/connect/GetMedicalDataSourcesRequest;)V
    .registers 4
    .param p1, "other"    # Landroid/health/connect/GetMedicalDataSourcesRequest;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    .line 168
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/health/connect/GetMedicalDataSourcesRequest;->getPackageNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 170
    return-void
.end method


# virtual methods
.method public whitelist addPackageName(Ljava/lang/String;)Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 182
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/health/connect/GetMedicalDataSourcesRequest;->-$$Nest$smvalidatePackageNames(Ljava/util/Set;)V

    .line 184
    iget-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/GetMedicalDataSourcesRequest;
    .registers 4

    .line 201
    new-instance v0, Landroid/health/connect/GetMedicalDataSourcesRequest;

    iget-object v1, p0, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/health/connect/GetMedicalDataSourcesRequest;-><init>(Ljava/util/Set;Landroid/health/connect/GetMedicalDataSourcesRequest-IA;)V

    return-object v0
.end method

.method public whitelist clearPackageNames()Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/health/connect/GetMedicalDataSourcesRequest$Builder;->mPackageNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 192
    return-object p0
.end method
