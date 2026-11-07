.class public final Landroid/health/connect/internal/datatypes/AppInfoInternal;
.super Ljava/lang/Object;
.source "AppInfoInternal.java"


# instance fields
.field private final blacklist mIcon:Landroid/graphics/Bitmap;

.field private blacklist mId:J

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mRecordTypesUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/util/Set;)V
    .registers 7
    .param p1, "id"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p6, "recordTypesUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mId:J

    .line 43
    iput-object p3, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mPackageName:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mName:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mIcon:Landroid/graphics/Bitmap;

    .line 46
    iput-object p6, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mRecordTypesUsed:Ljava/util/Set;

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getId()J
    .registers 3

    .line 51
    iget-wide v0, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mId:J

    return-wide v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRecordTypesUsed()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mRecordTypesUsed:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist setId(J)Landroid/health/connect/internal/datatypes/AppInfoInternal;
    .registers 3
    .param p1, "id"    # J

    .line 57
    iput-wide p1, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mId:J

    .line 58
    return-object p0
.end method

.method public blacklist setRecordTypesUsed(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "recordTypesUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/health/connect/internal/datatypes/AppInfoInternal;->mRecordTypesUsed:Ljava/util/Set;

    .line 64
    return-void
.end method

.method public blacklist toExternal()Landroid/health/connect/datatypes/AppInfo;
    .registers 5

    .line 89
    new-instance v0, Landroid/health/connect/datatypes/AppInfo$Builder;

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/AppInfoInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/AppInfoInternal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/health/connect/internal/datatypes/AppInfoInternal;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/health/connect/datatypes/AppInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/health/connect/datatypes/AppInfo$Builder;->build()Landroid/health/connect/datatypes/AppInfo;

    move-result-object v0

    return-object v0
.end method
