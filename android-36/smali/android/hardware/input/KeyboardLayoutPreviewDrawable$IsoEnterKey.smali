.class Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;
.super Ljava/lang/Object;
.source "KeyboardLayoutPreviewDrawable.java"

# interfaces
.implements Landroid/hardware/input/KeyboardLayoutPreviewDrawable$KeyDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyboardLayoutPreviewDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsoEnterKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mKeyPaint:Landroid/graphics/Paint;

.field private final blacklist mPath:Landroid/graphics/Path;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/Paint;Landroid/graphics/Path;)V
    .registers 3
    .param p1, "keyPaint"    # Landroid/graphics/Paint;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;->mKeyPaint:Landroid/graphics/Paint;

    .line 310
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;->mPath:Landroid/graphics/Path;

    .line 311
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/hardware/input/KeyboardLayoutPreviewDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;-><init>(Landroid/graphics/Paint;Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 315
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutPreviewDrawable$IsoEnterKey;->mKeyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 316
    return-void
.end method
