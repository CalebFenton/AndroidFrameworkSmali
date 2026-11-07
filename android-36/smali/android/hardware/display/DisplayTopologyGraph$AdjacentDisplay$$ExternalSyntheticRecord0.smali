.class public final synthetic Landroid/hardware/display/DisplayTopologyGraph$AdjacentDisplay$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic blacklist m(IIF)I
    .registers 3

    .line 0
    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p2}, Ljava/lang/Float;->hashCode(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
