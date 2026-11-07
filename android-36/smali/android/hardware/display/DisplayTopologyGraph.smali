.class public final Landroid/hardware/display/DisplayTopologyGraph;
.super Ljava/lang/Record;
.source "DisplayTopologyGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;,
        Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;
    }
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
        "primaryDisplayId",
        "displayNodes"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        [Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
    }
.end annotation


# instance fields
.field private final blacklist displayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

.field private final blacklist primaryDisplayId:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/hardware/display/DisplayTopologyGraph;

    if-eqz v0, :cond_18

    check-cast p1, Landroid/hardware/display/DisplayTopologyGraph;

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph;->primaryDisplayId:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph;->primaryDisplayId:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph;->displayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    iget-object p1, p1, Landroid/hardware/display/DisplayTopologyGraph;->displayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph;->primaryDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayTopologyGraph;->displayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(I[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;)V
    .registers 3
    .param p1, "primaryDisplayId"    # I
    .param p2, "displayNodes"    # [Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primaryDisplayId",
            "displayNodes"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/display/DisplayTopologyGraph;->primaryDisplayId:I

    iput-object p2, p0, Landroid/hardware/display/DisplayTopologyGraph;->displayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    return-void
.end method


# virtual methods
.method public blacklist displayNodes()[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/hardware/display/DisplayTopologyGraph;->displayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 26
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayTopologyGraph;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 26
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph;->primaryDisplayId:I

    iget-object v1, p0, Landroid/hardware/display/DisplayTopologyGraph;->displayNodes:[Landroid/hardware/display/DisplayTopologyGraph$DisplayNode;

    invoke-static {v0, v1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord1;->m(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist primaryDisplayId()I
    .registers 2

    .line 26
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph;->primaryDisplayId:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 26
    invoke-direct {p0}, Landroid/hardware/display/DisplayTopologyGraph;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayTopologyGraph;

    const-string v2, "primaryDisplayId;displayNodes"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
