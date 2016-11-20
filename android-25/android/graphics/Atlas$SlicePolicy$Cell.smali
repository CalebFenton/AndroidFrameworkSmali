.class Landroid/graphics/Atlas$SlicePolicy$Cell;
.super Ljava/lang/Object;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas$SlicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cell"
.end annotation


# instance fields
.field height:I

.field next:Landroid/graphics/Atlas$SlicePolicy$Cell;

.field width:I

.field x:I

.field y:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Atlas$SlicePolicy$Cell;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 255
    const-string/jumbo v0, "cell[x=%d y=%d width=%d height=%d"

    #@3
    const/4 v1, 0x4

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget v2, p0, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget v2, p0, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    #@11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    iget v2, p0, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x2

    #@1f
    aput-object v2, v1, v3

    #@21
    iget v2, p0, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    #@23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x3

    #@28
    aput-object v2, v1, v3

    #@2a
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method
