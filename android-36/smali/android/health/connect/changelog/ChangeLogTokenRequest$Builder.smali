.class public final Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;
.super Ljava/lang/Object;
.source "ChangeLogTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/changelog/ChangeLogTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDataOriginFilters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;->mRecordTypes:Ljava/util/Set;

    .line 181
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;->mDataOriginFilters:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public whitelist addDataOriginFilter(Landroid/health/connect/datatypes/DataOrigin;)Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;
    .registers 3
    .param p1, "dataOriginFilter"    # Landroid/health/connect/datatypes/DataOrigin;

    .line 201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;->mDataOriginFilters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    return-object p0
.end method

.method public whitelist addRecordType(Ljava/lang/Class;)Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;)",
            "Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;"
        }
    .end annotation

    .line 189
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;->mRecordTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/changelog/ChangeLogTokenRequest;
    .registers 5

    .line 214
    new-instance v0, Landroid/health/connect/changelog/ChangeLogTokenRequest;

    iget-object v1, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;->mDataOriginFilters:Ljava/util/Set;

    iget-object v2, p0, Landroid/health/connect/changelog/ChangeLogTokenRequest$Builder;->mRecordTypes:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/changelog/ChangeLogTokenRequest;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/health/connect/changelog/ChangeLogTokenRequest-IA;)V

    return-object v0
.end method
