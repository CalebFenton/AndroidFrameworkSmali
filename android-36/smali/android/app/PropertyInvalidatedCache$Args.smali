.class public final Landroid/app/PropertyInvalidatedCache$Args;
.super Ljava/lang/Record;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "mModule",
        "mApi",
        "mMaxEntries",
        "mIsolateUids",
        "mTestMode",
        "mCacheNulls"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Ljava/lang/String;,
        I,
        Z,
        Z,
        Z
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_CACHE_NULLS:Z = false

.field public static final blacklist DEFAULT_ISOLATE_UIDS:Z = true

.field public static final blacklist DEFAULT_MAX_ENTRIES:I = 0x20


# instance fields
.field private final blacklist mApi:Ljava/lang/String;

.field private final blacklist mCacheNulls:Z

.field private final blacklist mIsolateUids:Z

.field private final blacklist mMaxEntries:I

.field private final blacklist mModule:Ljava/lang/String;

.field private final blacklist mTestMode:Z


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/PropertyInvalidatedCache$Args;

    if-eqz v0, :cond_34

    check-cast p1, Landroid/app/PropertyInvalidatedCache$Args;

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    if-ne v0, v1, :cond_34

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    if-ne v0, v1, :cond_34

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    iget-boolean v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    if-ne v0, v1, :cond_34

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    return p1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApi(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCacheNulls(Landroid/app/PropertyInvalidatedCache$Args;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsolateUids(Landroid/app/PropertyInvalidatedCache$Args;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache$Args;)I
    .registers 1

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModule(Landroid/app/PropertyInvalidatedCache$Args;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTestMode(Landroid/app/PropertyInvalidatedCache$Args;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    return p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "module"    # Ljava/lang/String;

    .line 1279
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "module":Ljava/lang/String;
    .local v1, "module":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 1286
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .registers 8
    .param p1, "mModule"    # Ljava/lang/String;
    .param p2, "mApi"    # Ljava/lang/String;
    .param p3, "mMaxEntries"    # I
    .param p4, "mIsolateUids"    # Z
    .param p5, "mTestMode"    # Z
    .param p6, "mCacheNulls"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000,
            0x8000,
            0x8000,
            0x8000,
            0x8000,
            0x8000
        }
        names = {
            "mModule",
            "mApi",
            "mMaxEntries",
            "mIsolateUids",
            "mTestMode",
            "mCacheNulls"
        }
    .end annotation

    .line 1269
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 1270
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smthrowIfInvalidModule(Ljava/lang/String;)V

    .line 1271
    const-string/jumbo v0, "max cache size must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 1269
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iput p3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iput-boolean p4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iput-boolean p5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iput-boolean p6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    .line 1272
    return-void
.end method


# virtual methods
.method public blacklist api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 9
    .param p1, "api"    # Ljava/lang/String;

    .line 1289
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    move-object v2, p1

    .end local p1    # "api":Ljava/lang/String;
    .local v2, "api":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public blacklist cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 9
    .param p1, "val"    # Z

    .line 1305
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    move v6, p1

    .end local p1    # "val":Z
    .local v6, "val":Z
    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1257
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$Args;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 7

    .line 1257
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(ZZZILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isolateUids(Z)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 9
    .param p1, "val"    # Z

    .line 1297
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    move v4, p1

    .end local p1    # "val":Z
    .local v4, "val":Z
    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public blacklist mApi()Ljava/lang/String;
    .registers 2

    .line 1257
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist mCacheNulls()Z
    .registers 2

    .line 1257
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    return v0
.end method

.method public blacklist mIsolateUids()Z
    .registers 2

    .line 1257
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    return v0
.end method

.method public blacklist mMaxEntries()I
    .registers 2

    .line 1257
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    return v0
.end method

.method public blacklist mModule()Ljava/lang/String;
    .registers 2

    .line 1257
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist mTestMode()Z
    .registers 2

    .line 1257
    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    return v0
.end method

.method public blacklist maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 9
    .param p1, "val"    # I

    .line 1293
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v5, p0, Landroid/app/PropertyInvalidatedCache$Args;->mTestMode:Z

    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    move v3, p1

    .end local p1    # "val":I
    .local v3, "val":I
    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public blacklist testMode(Z)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 9
    .param p1, "val"    # Z

    .line 1301
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$Args;->mModule:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$Args;->mApi:Ljava/lang/String;

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$Args;->mMaxEntries:I

    iget-boolean v4, p0, Landroid/app/PropertyInvalidatedCache$Args;->mIsolateUids:Z

    iget-boolean v6, p0, Landroid/app/PropertyInvalidatedCache$Args;->mCacheNulls:Z

    move v5, p1

    .end local p1    # "val":Z
    .local v5, "val":Z
    invoke-direct/range {v0 .. v6}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1257
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$Args;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/PropertyInvalidatedCache$Args;

    const-string/jumbo v2, "mModule;mApi;mMaxEntries;mIsolateUids;mTestMode;mCacheNulls"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
