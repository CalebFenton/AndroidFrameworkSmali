.class Landroid/icu/text/SpoofChecker$ScriptSet;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScriptSet"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private bits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/SpoofChecker$ScriptSet;->-assertionsDisabled:Z

    #@b
    .line 2352
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2439
    const/4 v0, 0x6

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    .line 2353
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2439
    const/4 v1, 0x6

    #@4
    new-array v1, v1, [I

    #@6
    iput-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    .line 2357
    const/4 v0, 0x0

    #@9
    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 2358
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@13
    move-result v2

    #@14
    aput v2, v1, v0

    #@16
    .line 2357
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2356
    :cond_0
    return-void
.end method


# virtual methods
.method public Union(I)V
    .locals 4
    .param p1, "script"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2377
    div-int/lit8 v1, p1, 0x20

    #@3
    .line 2378
    .local v1, "index":I
    and-int/lit8 v3, p1, 0x1f

    #@5
    shl-int v0, v2, v3

    #@7
    .line 2379
    .local v0, "bit":I
    sget-boolean v3, Landroid/icu/text/SpoofChecker$ScriptSet;->-assertionsDisabled:Z

    #@9
    if-nez v3, :cond_1

    #@b
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@d
    array-length v3, v3

    #@e
    mul-int/lit8 v3, v3, 0x4

    #@10
    mul-int/lit8 v3, v3, 0x4

    #@12
    if-ge v1, v3, :cond_0

    #@14
    :goto_0
    if-nez v2, :cond_1

    #@16
    new-instance v2, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v2

    #@1c
    :cond_0
    const/4 v2, 0x0

    #@1d
    goto :goto_0

    #@1e
    .line 2380
    :cond_1
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@20
    aget v3, v2, v1

    #@22
    or-int/2addr v3, v0

    #@23
    aput v3, v2, v1

    #@25
    .line 2376
    return-void
.end method

.method public Union(Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 4
    .param p1, "other"    # Landroid/icu/text/SpoofChecker$ScriptSet;

    #@0
    .prologue
    .line 2385
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 2386
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    aget v2, v1, v0

    #@a
    iget-object v3, p1, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@c
    aget v3, v3, v0

    #@e
    or-int/2addr v2, v3

    #@f
    aput v2, v1, v0

    #@11
    .line 2385
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2384
    :cond_0
    return-void
.end method

.method public countMembers()I
    .locals 4

    #@0
    .prologue
    .line 2426
    const/4 v0, 0x0

    #@1
    .line 2427
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@4
    array-length v3, v3

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 2428
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@9
    aget v2, v3, v1

    #@b
    .line 2429
    .local v2, "x":I
    :goto_1
    if-eqz v2, :cond_0

    #@d
    .line 2430
    add-int/lit8 v0, v0, 0x1

    #@f
    .line 2431
    add-int/lit8 v3, v2, -0x1

    #@11
    and-int/2addr v2, v3

    #@12
    goto :goto_1

    #@13
    .line 2427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2436
    .end local v2    # "x":I
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2369
    instance-of v1, p1, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2370
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2372
    nop

    #@8
    nop

    #@9
    .line 2373
    .local v0, "otherSet":Landroid/icu/text/SpoofChecker$ScriptSet;
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@b
    iget-object v2, v0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@d
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@10
    move-result v1

    #@11
    return v1
.end method

.method public intersect(I)V
    .locals 6
    .param p1, "script"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2397
    div-int/lit8 v2, p1, 0x20

    #@4
    .line 2398
    .local v2, "index":I
    and-int/lit8 v5, p1, 0x1f

    #@6
    shl-int v0, v3, v5

    #@8
    .line 2399
    .local v0, "bit":I
    sget-boolean v5, Landroid/icu/text/SpoofChecker$ScriptSet;->-assertionsDisabled:Z

    #@a
    if-nez v5, :cond_1

    #@c
    iget-object v5, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@e
    array-length v5, v5

    #@f
    mul-int/lit8 v5, v5, 0x4

    #@11
    mul-int/lit8 v5, v5, 0x4

    #@13
    if-ge v2, v5, :cond_0

    #@15
    :goto_0
    if-nez v3, :cond_1

    #@17
    new-instance v3, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v3

    #@1d
    :cond_0
    move v3, v4

    #@1e
    goto :goto_0

    #@1f
    .line 2401
    :cond_1
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@22
    .line 2402
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@24
    aput v4, v3, v1

    #@26
    .line 2401
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_1

    #@29
    .line 2404
    :cond_2
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@2b
    aget v5, v3, v2

    #@2d
    and-int/2addr v5, v0

    #@2e
    aput v5, v3, v2

    #@30
    .line 2405
    add-int/lit8 v1, v2, 0x1

    #@32
    :goto_2
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@34
    array-length v3, v3

    #@35
    if-ge v1, v3, :cond_3

    #@37
    .line 2406
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@39
    aput v4, v3, v1

    #@3b
    .line 2405
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_2

    #@3e
    .line 2396
    :cond_3
    return-void
.end method

.method public intersect(Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 4
    .param p1, "other"    # Landroid/icu/text/SpoofChecker$ScriptSet;

    #@0
    .prologue
    .line 2391
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 2392
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    aget v2, v1, v0

    #@a
    iget-object v3, p1, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@c
    aget v3, v3, v0

    #@e
    and-int/2addr v2, v3

    #@f
    aput v2, v1, v0

    #@11
    .line 2391
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2390
    :cond_0
    return-void
.end method

.method public output(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2363
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 2364
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    aget v1, v1, v0

    #@a
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@d
    .line 2363
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 2362
    :cond_0
    return-void
.end method

.method public resetAll()V
    .locals 3

    #@0
    .prologue
    .line 2418
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 2419
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    const/4 v2, 0x0

    #@9
    aput v2, v1, v0

    #@b
    .line 2418
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 2417
    :cond_0
    return-void
.end method

.method public setAll()V
    .locals 3

    #@0
    .prologue
    .line 2411
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 2412
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    const/4 v2, -0x1

    #@9
    aput v2, v1, v0

    #@b
    .line 2411
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 2410
    :cond_0
    return-void
.end method
