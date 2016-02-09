.class public Landroid/hardware/Camera$Size;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Landroid/hardware/Camera;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 1941
    iput-object p1, p0, Landroid/hardware/Camera$Size;->this$0:Landroid/hardware/Camera;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1942
    iput p2, p0, Landroid/hardware/Camera$Size;->width:I

    #@7
    .line 1943
    iput p3, p0, Landroid/hardware/Camera$Size;->height:I

    #@9
    .line 1941
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1954
    instance-of v2, p1, Landroid/hardware/Camera$Size;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1955
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1957
    check-cast v0, Landroid/hardware/Camera$Size;

    #@9
    .line 1958
    .local v0, "s":Landroid/hardware/Camera$Size;
    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    #@b
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    #@11
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1962
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    #@2
    mul-int/lit16 v0, v0, 0x7fc9

    #@4
    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method
