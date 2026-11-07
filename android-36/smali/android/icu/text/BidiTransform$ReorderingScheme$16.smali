.class final enum Landroid/icu/text/BidiTransform$ReorderingScheme$16;
.super Landroid/icu/text/BidiTransform$ReorderingScheme;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BidiTransform$ReorderingScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/BidiTransform$ReorderingScheme;-><init>(Ljava/lang/String;ILandroid/icu/text/BidiTransform-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/icu/text/BidiTransform-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/BidiTransform$ReorderingScheme$16;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method blacklist doTransform(Landroid/icu/text/BidiTransform;)V
    .registers 4
    .param p1, "transform"    # Landroid/icu/text/BidiTransform;

    .line 581
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->-$$Nest$mreverse(Landroid/icu/text/BidiTransform;)V

    .line 582
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/icu/text/BidiTransform;->-$$Nest$mresolve(Landroid/icu/text/BidiTransform;BI)V

    .line 583
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->-$$Nest$mmirror(Landroid/icu/text/BidiTransform;)V

    .line 584
    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Landroid/icu/text/BidiTransform;->-$$Nest$mshapeArabic(Landroid/icu/text/BidiTransform;II)V

    .line 585
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->-$$Nest$mreverse(Landroid/icu/text/BidiTransform;)V

    .line 586
    return-void
.end method

.method blacklist matches(BLandroid/icu/text/BidiTransform$Order;BLandroid/icu/text/BidiTransform$Order;)Z
    .registers 6
    .param p1, "inLevel"    # B
    .param p2, "inOrder"    # Landroid/icu/text/BidiTransform$Order;
    .param p3, "outLevel"    # B
    .param p4, "outOrder"    # Landroid/icu/text/BidiTransform$Order;

    .line 576
    invoke-static {p1}, Landroid/icu/text/BidiTransform;->-$$Nest$smIsRTL(B)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p2}, Landroid/icu/text/BidiTransform;->-$$Nest$smIsVisual(Landroid/icu/text/BidiTransform$Order;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 577
    invoke-static {p3}, Landroid/icu/text/BidiTransform;->-$$Nest$smIsRTL(B)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p4}, Landroid/icu/text/BidiTransform;->-$$Nest$smIsVisual(Landroid/icu/text/BidiTransform$Order;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 576
    :goto_1b
    return v0
.end method
