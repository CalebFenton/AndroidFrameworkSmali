.class final Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;
.super Ljava/lang/Record;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache$NonceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "invalidated",
        "corkedInvalidates"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field private final blacklist corkedInvalidates:I

.field private final blacklist invalidated:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    if-eqz v0, :cond_14

    check-cast p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iget v1, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    iget p1, p1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    if-ne v0, p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcorkedInvalidates(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I
    .registers 1

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetinvalidated(Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;)I
    .registers 1

    iget p0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    return p0
.end method

.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "invalidated"    # I
    .param p2, "corkedInvalidates"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "invalidated",
            "corkedInvalidates"
        }
    .end annotation

    .line 897
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iput p2, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return-void
.end method


# virtual methods
.method public blacklist corkedInvalidates()I
    .registers 2

    .line 897
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 897
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 897
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    iget v1, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->corkedInvalidates:I

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats$$ExternalSyntheticRecord0;->m(II)I

    move-result v0

    return v0
.end method

.method public blacklist invalidated()I
    .registers 2

    .line 897
    iget v0, p0, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->invalidated:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 897
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/PropertyInvalidatedCache$NonceHandler$Stats;

    const-string/jumbo v2, "invalidated;corkedInvalidates"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
