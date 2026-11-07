.class public final Landroid/graphics/CanvasProperty;
.super Ljava/lang/Object;
.source "CanvasProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o mProperty:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method private constructor greylist-max-o <init>(J)V
    .registers 4
    .param p1, "nativeContainer"    # J

    .line 43
    .local p0, "this":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/CanvasProperty;->mProperty:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 45
    return-void
.end method

.method public static greylist-max-r createFloat(F)Landroid/graphics/CanvasProperty;
    .registers 4
    .param p0, "initialValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Landroid/graphics/CanvasProperty;

    invoke-static {p0}, Landroid/graphics/CanvasProperty;->nCreateFloat(F)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/CanvasProperty;-><init>(J)V

    return-object v0
.end method

.method public static greylist-max-r createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;
    .registers 4
    .param p0, "initialValue"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/CanvasProperty;->nCreatePaint(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/CanvasProperty;-><init>(J)V

    return-object v0
.end method

.method private static native greylist-max-o nCreateFloat(F)J
.end method

.method private static native greylist-max-o nCreatePaint(J)J
.end method


# virtual methods
.method public greylist-max-o getNativeContainer()J
    .registers 3

    .line 49
    .local p0, "this":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<TT;>;"
    iget-object v0, p0, Landroid/graphics/CanvasProperty;->mProperty:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method
