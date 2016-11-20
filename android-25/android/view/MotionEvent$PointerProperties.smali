.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public id:I

.field public toolType:I


# direct methods
.method static synthetic -wrap0(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 1
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3674
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    #@6
    .line 3673
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    #@0
    .prologue
    .line 3682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3683
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    #@6
    .line 3682
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .param p0, "size"    # I

    #@0
    .prologue
    .line 3688
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    #@2
    .line 3689
    .local v0, "array":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    #@5
    .line 3690
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    #@7
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    #@a
    aput-object v2, v0, v1

    #@c
    .line 3689
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 3692
    :cond_0
    return-object v0
.end method

.method private equals(Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 3
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3738
    if-eqz p1, :cond_0

    #@3
    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@5
    iget v2, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@7
    if-ne v1, v2, :cond_0

    #@9
    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    #@b
    iget v2, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 3715
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@3
    .line 3716
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    #@6
    .line 3714
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    #@0
    .prologue
    .line 3725
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@2
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@4
    .line 3726
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    #@6
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    #@8
    .line 3724
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3731
    instance-of v0, p1, Landroid/view/MotionEvent$PointerProperties;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3732
    check-cast p1, Landroid/view/MotionEvent$PointerProperties;

    #@6
    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 3734
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 3743
    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    #@2
    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    #@4
    shl-int/lit8 v1, v1, 0x8

    #@6
    or-int/2addr v0, v1

    #@7
    return v0
.end method
