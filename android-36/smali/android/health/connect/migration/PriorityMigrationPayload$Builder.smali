.class public final Landroid/health/connect/migration/PriorityMigrationPayload$Builder;
.super Ljava/lang/Object;
.source "PriorityMigrationPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/migration/PriorityMigrationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataCategory:I

.field private final blacklist mDataOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/datatypes/DataOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload$Builder;->mDataOrigins:Ljava/util/List;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload$Builder;->mDataCategory:I

    return-void
.end method


# virtual methods
.method public whitelist addDataOrigin(Landroid/health/connect/datatypes/DataOrigin;)Landroid/health/connect/migration/PriorityMigrationPayload$Builder;
    .registers 3
    .param p1, "dataOrigin"    # Landroid/health/connect/datatypes/DataOrigin;

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Landroid/health/connect/migration/PriorityMigrationPayload$Builder;->mDataOrigins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/migration/PriorityMigrationPayload;
    .registers 5

    .line 133
    new-instance v0, Landroid/health/connect/migration/PriorityMigrationPayload;

    iget v1, p0, Landroid/health/connect/migration/PriorityMigrationPayload$Builder;->mDataCategory:I

    iget-object v2, p0, Landroid/health/connect/migration/PriorityMigrationPayload$Builder;->mDataOrigins:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/migration/PriorityMigrationPayload;-><init>(ILjava/util/List;Landroid/health/connect/migration/PriorityMigrationPayload-IA;)V

    return-object v0
.end method

.method public whitelist setDataCategory(I)Landroid/health/connect/migration/PriorityMigrationPayload$Builder;
    .registers 2
    .param p1, "dataCategory"    # I

    .line 116
    iput p1, p0, Landroid/health/connect/migration/PriorityMigrationPayload$Builder;->mDataCategory:I

    .line 117
    return-object p0
.end method
