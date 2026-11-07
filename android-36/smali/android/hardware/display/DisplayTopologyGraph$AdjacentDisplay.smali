.class public final Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;
.super Ljava/lang/Record;
.source "DisplayTopologyGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayTopologyGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdjacentDisplay"
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
        "position",
        "offsetDp"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        F
    }
.end annotation


# instance fields
.field private final blacklist displayId:I

.field private final blacklist offsetDp:F

.field private final blacklist position:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    if-eqz v0, :cond_1c

    check-cast p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    iget v1, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    iget p1, p1, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public constructor blacklist <init>(IIF)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "position"    # I
    .param p3, "offsetDp"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "displayId",
            "position",
            "offsetDp"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    iput p2, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    iput p3, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    return-void
.end method


# virtual methods
.method public blacklist displayId()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    return v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 38
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    iget v2, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    invoke-static {v0, v1, v2}, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay$$ExternalSyntheticRecord0;->m(IIF)I

    move-result v0

    return v0
.end method

.method public blacklist offsetDp()F
    .registers 2

    .line 38
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    return v0
.end method

.method public blacklist position()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdjacentDisplay{displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->position:I

    .line 53
    invoke-static {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay;->offsetDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    return-object v0
.end method
