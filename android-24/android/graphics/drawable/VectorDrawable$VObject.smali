.class abstract Landroid/graphics/drawable/VectorDrawable$VObject;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VObject"
.end annotation


# instance fields
.field mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1778
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@6
    .line 1777
    return-void
.end method


# virtual methods
.method abstract applyTheme(Landroid/content/res/Resources$Theme;)V
.end method

.method abstract canApplyTheme()Z
.end method

.method abstract getNativePtr()J
.end method

.method abstract getNativeSize()I
.end method

.method abstract inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
.end method

.method abstract isStateful()Z
.end method

.method isTreeValid()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1780
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    #@a
    move-result-wide v2

    #@b
    const-wide/16 v4, 0x0

    #@d
    cmp-long v1, v2, v4

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method abstract onStateChange([I)Z
.end method

.method setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .locals 0
    .param p1, "ptr"    # Lcom/android/internal/util/VirtualRefBasePtr;

    #@0
    .prologue
    .line 1783
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VObject;->mTreePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    #@2
    .line 1782
    return-void
.end method
