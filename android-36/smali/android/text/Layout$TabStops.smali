.class public Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabStops"
.end annotation


# instance fields
.field private blacklist mIncrement:F

.field private greylist-max-o mNumStops:I

.field private blacklist mStops:[F


# direct methods
.method public constructor blacklist <init>(F[Ljava/lang/Object;)V
    .registers 3
    .param p1, "increment"    # F
    .param p2, "spans"    # [Ljava/lang/Object;

    .line 3332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3333
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    .line 3334
    return-void
.end method

.method public static blacklist nextDefaultStop(FF)F
    .registers 3
    .param p0, "h"    # F
    .param p1, "inc"    # F

    .line 3384
    add-float v0, p0, p1

    div-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method greylist-max-o nextTab(F)F
    .registers 7
    .param p1, "h"    # F

    .line 3367
    iget v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 3368
    .local v0, "ns":I
    if-lez v0, :cond_13

    .line 3369
    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    .line 3370
    .local v1, "stops":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_13

    .line 3371
    aget v3, v1, v2

    .line 3372
    .local v3, "stop":F
    cmpl-float v4, v3, p1

    if-lez v4, :cond_10

    .line 3373
    return v3

    .line 3370
    .end local v3    # "stop":F
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3377
    .end local v1    # "stops":[F
    .end local v2    # "i":I
    :cond_13
    iget v1, p0, Landroid/text/Layout$TabStops;->mIncrement:F

    invoke-static {p1, v1}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result v1

    return v1
.end method

.method blacklist reset(F[Ljava/lang/Object;)V
    .registers 12
    .param p1, "increment"    # F
    .param p2, "spans"    # [Ljava/lang/Object;

    .line 3337
    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:F

    .line 3339
    const/4 v0, 0x0

    .line 3340
    .local v0, "ns":I
    if-eqz p2, :cond_47

    .line 3341
    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    .line 3342
    .local v1, "stops":[F
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_3b

    aget-object v5, p2, v4

    .line 3343
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Landroid/text/style/TabStopSpan;

    if-eqz v6, :cond_38

    .line 3344
    if-nez v1, :cond_19

    .line 3345
    const/16 v6, 0xa

    new-array v1, v6, [F

    goto :goto_2b

    .line 3346
    :cond_19
    array-length v6, v1

    if-ne v0, v6, :cond_2b

    .line 3347
    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [F

    .line 3348
    .local v6, "nstops":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_21
    if-ge v7, v0, :cond_2a

    .line 3349
    aget v8, v1, v7

    aput v8, v6, v7

    .line 3348
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 3351
    .end local v7    # "i":I
    :cond_2a
    move-object v1, v6

    .line 3353
    .end local v6    # "nstops":[F
    :cond_2b
    :goto_2b
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "ns":I
    .local v6, "ns":I
    move-object v7, v5

    check-cast v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v7}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v7

    int-to-float v7, v7

    aput v7, v1, v0

    move v0, v6

    .line 3342
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "ns":I
    .restart local v0    # "ns":I
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 3356
    :cond_3b
    const/4 v2, 0x1

    if-le v0, v2, :cond_41

    .line 3357
    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->sort([FII)V

    .line 3359
    :cond_41
    iget-object v2, p0, Landroid/text/Layout$TabStops;->mStops:[F

    if-eq v1, v2, :cond_47

    .line 3360
    iput-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    .line 3363
    .end local v1    # "stops":[F
    :cond_47
    iput v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 3364
    return-void
.end method
