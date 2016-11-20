.class Landroid/os/health/HealthKeys$SortedIntArray;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortedIntArray"
.end annotation


# instance fields
.field mArray:[I

.field mCount:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 191
    new-array v0, p1, [I

    #@5
    iput-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    #@7
    .line 190
    return-void
.end method


# virtual methods
.method addValue(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    #@2
    iget v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    #@8
    aput p1, v0, v1

    #@a
    .line 197
    return-void
.end method

.method getArray()[I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 206
    iget v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    #@3
    iget-object v2, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    #@5
    array-length v2, v2

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 207
    iget-object v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    #@a
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    #@d
    .line 208
    iget-object v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    #@f
    return-object v1

    #@10
    .line 210
    :cond_0
    iget v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    #@12
    new-array v0, v1, [I

    #@14
    .line 211
    .local v0, "result":[I
    iget-object v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    #@16
    iget v2, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    #@18
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1b
    .line 212
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    #@1e
    .line 213
    return-object v0
.end method
