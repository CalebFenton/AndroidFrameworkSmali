.class public Landroid/health/connect/RecordTypeInfoResponse;
.super Ljava/lang/Object;
.source "RecordTypeInfoResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mContributingPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataCategory:I

.field private final blacklist mPermissionCategory:I


# direct methods
.method public constructor blacklist <init>(IILjava/util/List;)V
    .registers 4
    .param p1, "permissionCategory"    # I
    .param p2, "dataCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p3, "contributingPackages":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/datatypes/DataOrigin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/health/connect/RecordTypeInfoResponse;->mPermissionCategory:I

    .line 49
    iput p2, p0, Landroid/health/connect/RecordTypeInfoResponse;->mDataCategory:I

    .line 50
    iput-object p3, p0, Landroid/health/connect/RecordTypeInfoResponse;->mContributingPackages:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist getContributingPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/health/connect/RecordTypeInfoResponse;->mContributingPackages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDataCategory()I
    .registers 2

    .line 62
    iget v0, p0, Landroid/health/connect/RecordTypeInfoResponse;->mDataCategory:I

    return v0
.end method

.method public whitelist getPermissionCategory()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/health/connect/RecordTypeInfoResponse;->mPermissionCategory:I

    return v0
.end method
