.class public Landroid/graphics/text/LineBreaker$Result;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field private static final blacklist END_HYPHEN_MASK:I = 0x7

.field private static final blacklist HYPHEN_MASK:I = 0xff

.field private static final blacklist START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final blacklist START_HYPHEN_MASK:I = 0x18

.field private static final blacklist TAB_MASK:I = 0x20000000

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 390
    nop

    .line 392
    const-class v0, Landroid/graphics/text/LineBreaker$Result;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetReleaseResultFunc()J

    move-result-wide v1

    .line 391
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/LineBreaker$Result;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 390
    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 6
    .param p1, "ptr"    # J

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-wide p1, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    .line 397
    sget-object v0, Landroid/graphics/text/LineBreaker$Result;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 398
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/graphics/text/LineBreaker-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/text/LineBreaker$Result;-><init>(J)V

    return-void
.end method


# virtual methods
.method public whitelist getEndLineHyphenEdit(I)I
    .registers 4
    .param p1, "lineIndex"    # I

    .line 482
    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetLineFlag(JI)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public whitelist getLineAscent(I)F
    .registers 4
    .param p1, "lineIndex"    # I

    .line 436
    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetLineAscent(JI)F

    move-result v0

    return v0
.end method

.method public whitelist getLineBreakOffset(I)I
    .registers 4
    .param p1, "lineIndex"    # I

    .line 416
    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetLineBreakOffset(JI)I

    move-result v0

    return v0
.end method

.method public whitelist getLineCount()I
    .registers 3

    .line 406
    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-static {v0, v1}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetLineCount(J)I

    move-result v0

    return v0
.end method

.method public whitelist getLineDescent(I)F
    .registers 4
    .param p1, "lineIndex"    # I

    .line 446
    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetLineDescent(JI)F

    move-result v0

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .registers 4
    .param p1, "lineIndex"    # I

    .line 426
    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetLineWidth(JI)F

    move-result v0

    return v0
.end method

.method public whitelist getStartLineHyphenEdit(I)I
    .registers 4
    .param p1, "lineIndex"    # I

    .line 469
    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetLineFlag(JI)I

    move-result v0

    and-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist hasLineTab(I)Z
    .registers 4
    .param p1, "lineIndex"    # I

    .line 456
    iget-wide v0, p0, Landroid/graphics/text/LineBreaker$Result;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/text/LineBreaker;->-$$Nest$smnGetLineFlag(JI)I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
