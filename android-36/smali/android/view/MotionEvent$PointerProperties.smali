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
.field public whitelist id:I

.field public whitelist toolType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mequals(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 4666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4667
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 4668
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .registers 2
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .line 4675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4676
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    .line 4677
    return-void
.end method

.method public static greylist createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 4
    .param p0, "size"    # I

    .line 4682
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 4683
    .local v0, "array":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_f

    .line 4684
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v0, v1

    .line 4683
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4686
    .end local v1    # "i":I
    :cond_f
    return-object v0
.end method

.method private greylist-max-o equals(Landroid/view/MotionEvent$PointerProperties;)Z
    .registers 4
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .line 4732
    if-eqz p1, :cond_10

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    if-ne v0, v1, :cond_10

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 2

    .line 4709
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 4710
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 4711
    return-void
.end method

.method public whitelist copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .registers 3
    .param p1, "other"    # Landroid/view/MotionEvent$PointerProperties;

    .line 4719
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 4720
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 4721
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 4725
    instance-of v0, p1, Landroid/view/MotionEvent$PointerProperties;

    if-eqz v0, :cond_c

    .line 4726
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {p0, v0}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v0

    return v0

    .line 4728
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 4737
    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
