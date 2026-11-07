.class public final Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
.super Ljava/lang/Record;
.source "DisplayTopologyGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopologyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayNode"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "displayId",
        "density",
        "adjacentDisplays"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;
    }
.end annotation


# instance fields
.field private final blacklist adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

.field private final blacklist density:I

.field private final blacklist displayId:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    if-eqz v0, :cond_1e

    check-cast p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    iget-object p1, p1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(II[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "density"    # I
    .param p3, "adjacentDisplays"    # [Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "displayId",
            "density",
            "adjacentDisplays"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    iput p2, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    iput-object p3, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    return-void
.end method


# virtual methods
.method public blacklist adjacentDisplays()[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;
    .registers 2

    .line 30
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    return-object v0
.end method

.method public blacklist density()I
    .registers 2

    .line 30
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    return v0
.end method

.method public blacklist displayId()I
    .registers 2

    .line 30
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 30
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->displayId:I

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->density:I

    iget-object v2, p0, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->adjacentDisplays:[Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    invoke-static {v0, v1, v2}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode$$ExternalSyntheticRecord0;->m(IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 30
    invoke-direct {p0}, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    const-string v2, "displayId;density;adjacentDisplays"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
