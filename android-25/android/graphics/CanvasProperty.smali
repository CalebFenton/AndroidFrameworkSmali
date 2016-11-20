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
.field private mProperty:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeContainer"    # J

    #@0
    .prologue
    .line 37
    .local p0, "this":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    #@5
    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    #@8
    iput-object v0, p0, Landroid/graphics/CanvasProperty;->mProperty:Lcom/android/internal/util/VirtualRefBasePtr;

    #@a
    .line 37
    return-void
.end method

.method public static createFloat(F)Landroid/graphics/CanvasProperty;
    .locals 4
    .param p0, "initialValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 30
    new-instance v0, Landroid/graphics/CanvasProperty;

    #@2
    invoke-static {p0}, Landroid/graphics/CanvasProperty;->nCreateFloat(F)J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Landroid/graphics/CanvasProperty;-><init>(J)V

    #@9
    return-object v0
.end method

.method public static createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;
    .locals 4
    .param p0, "initialValue"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 34
    new-instance v0, Landroid/graphics/CanvasProperty;

    #@2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getNativeInstance()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v2, v3}, Landroid/graphics/CanvasProperty;->nCreatePaint(J)J

    #@9
    move-result-wide v2

    #@a
    invoke-direct {v0, v2, v3}, Landroid/graphics/CanvasProperty;-><init>(J)V

    #@d
    return-object v0
.end method

.method private static native nCreateFloat(F)J
.end method

.method private static native nCreatePaint(J)J
.end method


# virtual methods
.method public getNativeContainer()J
    .locals 2

    #@0
    .prologue
    .line 43
    .local p0, "this":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<TT;>;"
    iget-object v0, p0, Landroid/graphics/CanvasProperty;->mProperty:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method
