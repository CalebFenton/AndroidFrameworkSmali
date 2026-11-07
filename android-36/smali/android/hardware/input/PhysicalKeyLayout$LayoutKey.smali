.class public final Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;
.super Ljava/lang/Record;
.source "PhysicalKeyLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/PhysicalKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutKey"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "keyCode",
        "scanCode",
        "keyWeight",
        "glyph"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        F,
        Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    }
.end annotation


# instance fields
.field private final blacklist glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

.field private final blacklist keyCode:I

.field private final blacklist keyWeight:F

.field private final blacklist scanCode:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    if-eqz v0, :cond_26

    check-cast p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    if-ne v0, v1, :cond_26

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    iget v1, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_26

    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    iget-object p1, p1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetkeyCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscanCode(Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    return p0
.end method

.method public constructor blacklist <init>(IIFLandroid/hardware/input/PhysicalKeyLayout$KeyGlyph;)V
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "scanCode"    # I
    .param p3, "keyWeight"    # F
    .param p4, "glyph"    # Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "scanCode",
            "keyWeight",
            "glyph"
        }
    .end annotation

    .line 394
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    iput p2, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    iput p3, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    iput-object p4, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 394
    invoke-direct {p0, p1}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist glyph()Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 394
    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    iget v1, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    iget v2, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    iget-object v3, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->glyph:Landroid/hardware/input/PhysicalKeyLayout$KeyGlyph;

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey$$ExternalSyntheticRecord0;->m(IIFLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist keyCode()I
    .registers 2

    .line 394
    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyCode:I

    return v0
.end method

.method public blacklist keyWeight()F
    .registers 2

    .line 394
    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->keyWeight:F

    return v0
.end method

.method public blacklist scanCode()I
    .registers 2

    .line 394
    iget v0, p0, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->scanCode:I

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 394
    invoke-direct {p0}, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/hardware/input/PhysicalKeyLayout$LayoutKey;

    const-string v2, "keyCode;scanCode;keyWeight;glyph"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
