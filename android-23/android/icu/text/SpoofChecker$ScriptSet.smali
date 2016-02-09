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
    .line 2351
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
    .line 2352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2438
    const/4 v0, 0x6

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    .line 2352
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
    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2438
    const/4 v1, 0x6

    #@4
    new-array v1, v1, [I

    #@6
    iput-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    .line 2356
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
    .line 2357
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@13
    move-result v2

    #@14
    aput v2, v1, v0

    #@16
    .line 2356
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2355
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
    .line 2376
    div-int/lit8 v1, p1, 0x20

    #@3
    .line 2377
    .local v1, "index":I
    and-int/lit8 v3, p1, 0x1f

    #@5
    shl-int v0, v2, v3

    #@7
    .line 2378
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
    .line 2379
    :cond_1
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@20
    aget v3, v2, v1

    #@22
    or-int/2addr v3, v0

    #@23
    aput v3, v2, v1

    #@25
    .line 2375
    return-void
.end method

.method public Union(Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 4
    .param p1, "other"    # Landroid/icu/text/SpoofChecker$ScriptSet;

    #@0
    .prologue
    .line 2384
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
    .line 2385
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
    .line 2384
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2383
    :cond_0
    return-void
.end method

.method public countMembers()I
    .locals 4

    #@0
    .prologue
    .line 2425
    const/4 v0, 0x0

    #@1
    .line 2426
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
    .line 2427
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@9
    aget v2, v3, v1

    #@b
    .line 2428
    .local v2, "x":I
    :goto_1
    if-eqz v2, :cond_0

    #@d
    .line 2429
    add-int/lit8 v0, v0, 0x1

    #@f
    .line 2430
    add-int/lit8 v3, v2, -0x1

    #@11
    and-int/2addr v2, v3

    #@12
    goto :goto_1

    #@13
    .line 2426
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2435
    .end local v2    # "x":I
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2368
    instance-of v1, p1, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 2369
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 2371
    check-cast v0, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@9
    .line 2372
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
    .line 2396
    div-int/lit8 v2, p1, 0x20

    #@4
    .line 2397
    .local v2, "index":I
    and-int/lit8 v5, p1, 0x1f

    #@6
    shl-int v0, v3, v5

    #@8
    .line 2398
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
    .line 2400
    :cond_1
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@22
    .line 2401
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@24
    aput v4, v3, v1

    #@26
    .line 2400
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_1

    #@29
    .line 2403
    :cond_2
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@2b
    aget v5, v3, v2

    #@2d
    and-int/2addr v5, v0

    #@2e
    aput v5, v3, v2

    #@30
    .line 2404
    add-int/lit8 v1, v2, 0x1

    #@32
    :goto_2
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@34
    array-length v3, v3

    #@35
    if-ge v1, v3, :cond_3

    #@37
    .line 2405
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@39
    aput v4, v3, v1

    #@3b
    .line 2404
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_2

    #@3e
    .line 2395
    :cond_3
    return-void
.end method

.method public intersect(Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 4
    .param p1, "other"    # Landroid/icu/text/SpoofChecker$ScriptSet;

    #@0
    .prologue
    .line 2390
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
    .line 2391
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
    .line 2390
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 2389
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
    .line 2362
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
    .line 2363
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    aget v1, v1, v0

    #@a
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@d
    .line 2362
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 2361
    :cond_0
    return-void
.end method

.method public resetAll()V
    .locals 3

    #@0
    .prologue
    .line 2417
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
    .line 2418
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    const/4 v2, 0x0

    #@9
    aput v2, v1, v0

    #@b
    .line 2417
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 2416
    :cond_0
    return-void
.end method

.method public setAll()V
    .locals 3

    #@0
    .prologue
    .line 2410
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
    .line 2411
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$ScriptSet;->bits:[I

    #@8
    const/4 v2, -0x1

    #@9
    aput v2, v1, v0

    #@b
    .line 2410
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 2409
    :cond_0
    return-void
.end method
