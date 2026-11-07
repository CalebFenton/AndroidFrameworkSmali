.class public final Landroid/health/connect/DeleteUsingFiltersRequest$Builder;
.super Ljava/lang/Object;
.source "DeleteUsingFiltersRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/DeleteUsingFiltersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDataOrigins:Ljava/util/Set;
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

.field private blacklist mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mDataOrigins:Ljava/util/Set;

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mRecordTypes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public whitelist addDataOrigin(Landroid/health/connect/datatypes/DataOrigin;)Landroid/health/connect/DeleteUsingFiltersRequest$Builder;
    .registers 3
    .param p1, "dataOrigin"    # Landroid/health/connect/datatypes/DataOrigin;

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mDataOrigins:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    return-object p0
.end method

.method public whitelist addRecordType(Ljava/lang/Class;)Landroid/health/connect/DeleteUsingFiltersRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/health/connect/datatypes/Record;",
            ">;)",
            "Landroid/health/connect/DeleteUsingFiltersRequest$Builder;"
        }
    .end annotation

    .line 136
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/health/connect/datatypes/Record;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mRecordTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/DeleteUsingFiltersRequest;
    .registers 6

    .line 160
    new-instance v0, Landroid/health/connect/DeleteUsingFiltersRequest;

    iget-object v1, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    iget-object v2, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mRecordTypes:Ljava/util/Set;

    iget-object v3, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mDataOrigins:Ljava/util/Set;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/DeleteUsingFiltersRequest;-><init>(Landroid/health/connect/TimeRangeFilter;Ljava/util/Set;Ljava/util/Set;Landroid/health/connect/DeleteUsingFiltersRequest-IA;)V

    return-object v0
.end method

.method public whitelist clearDataOrigins()Landroid/health/connect/DeleteUsingFiltersRequest$Builder;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mDataOrigins:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 110
    return-object p0
.end method

.method public whitelist clearRecordTypes()Landroid/health/connect/DeleteUsingFiltersRequest$Builder;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mRecordTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 150
    return-object p0
.end method

.method public whitelist setTimeRangeFilter(Landroid/health/connect/TimeRangeFilter;)Landroid/health/connect/DeleteUsingFiltersRequest$Builder;
    .registers 2
    .param p1, "timeRangeFilter"    # Landroid/health/connect/TimeRangeFilter;

    .line 123
    iput-object p1, p0, Landroid/health/connect/DeleteUsingFiltersRequest$Builder;->mTimeRangeFilter:Landroid/health/connect/TimeRangeFilter;

    .line 124
    return-object p0
.end method
