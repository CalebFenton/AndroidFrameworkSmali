.class public final Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/SetBlobVisibilityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mNamespacesNotDisplayedBySystem:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNamespacesVisibleToConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/SchemaVisibilityConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesVisibleToConfigs:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public whitelist addNamespaceVisibleToConfig(Ljava/lang/String;Landroid/app/appsearch/SchemaVisibilityConfig;)Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesVisibleToConfigs:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Set;

    .line 14
    .line 15
    if-nez v0, :cond_1a

    .line 16
    .line 17
    new-instance v0, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesVisibleToConfigs:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public whitelist build()Landroid/app/appsearch/SetBlobVisibilityRequest;
    .registers 4

    .line 1
    new-instance v0, Landroid/app/appsearch/SetBlobVisibilityRequest;

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArraySet;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/util/ArrayMap;

    .line 11
    .line 12
    iget-object p0, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesVisibleToConfigs:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/SetBlobVisibilityRequest;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public whitelist clearNamespaceVisibleToConfigs(Ljava/lang/String;)Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesVisibleToConfigs:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public whitelist setNamespaceDisplayedBySystem(Ljava/lang/String;Z)Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_b

    .line 5
    .line 6
    iget-object p2, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    iget-object p2, p0, Landroid/app/appsearch/SetBlobVisibilityRequest$Builder;->mNamespacesNotDisplayedBySystem:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
