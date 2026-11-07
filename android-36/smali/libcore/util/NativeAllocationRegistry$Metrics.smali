.class public final Llibcore/util/NativeAllocationRegistry$Metrics;
.super Ljava/lang/Object;
.source "NativeAllocationRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/NativeAllocationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metrics"
.end annotation


# instance fields
.field private blacklist className:Ljava/lang/String;

.field private blacklist mallocedBytes:J

.field private blacklist mallocedCount:I

.field private blacklist nonmallocedBytes:J

.field private blacklist nonmallocedCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetclassName(Llibcore/util/NativeAllocationRegistry$Metrics;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->className:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$madd(Llibcore/util/NativeAllocationRegistry$Metrics;Llibcore/util/NativeAllocationRegistry;)V
    .registers 2

    invoke-direct {p0, p1}, Llibcore/util/NativeAllocationRegistry$Metrics;->add(Llibcore/util/NativeAllocationRegistry;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/String;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->className:Ljava/lang/String;

    .line 375
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Llibcore/util/NativeAllocationRegistry-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Llibcore/util/NativeAllocationRegistry$Metrics;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist add(Llibcore/util/NativeAllocationRegistry;)V
    .registers 9
    .param p1, "r"    # Llibcore/util/NativeAllocationRegistry;

    .line 378
    invoke-static {p1}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$fgetcounter(Llibcore/util/NativeAllocationRegistry;)I

    move-result v0

    .line 379
    .local v0, "count":I
    int-to-long v1, v0

    invoke-static {p1}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$fgetsize(Llibcore/util/NativeAllocationRegistry;)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    and-long/2addr v3, v5

    mul-long/2addr v1, v3

    .line 380
    .local v1, "bytes":J
    invoke-static {p1}, Llibcore/util/NativeAllocationRegistry;->-$$Nest$misMalloced(Llibcore/util/NativeAllocationRegistry;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 381
    iget v3, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->mallocedCount:I

    add-int/2addr v3, v0

    iput v3, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->mallocedCount:I

    .line 382
    iget-wide v3, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->mallocedBytes:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->mallocedBytes:J

    goto :goto_28

    .line 384
    :cond_1e
    iget v3, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->nonmallocedCount:I

    add-int/2addr v3, v0

    iput v3, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->nonmallocedCount:I

    .line 385
    iget-wide v3, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->nonmallocedBytes:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->nonmallocedBytes:J

    .line 387
    :goto_28
    return-void
.end method


# virtual methods
.method public blacklist test-api getClassName()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->className:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api getMallocedBytes()J
    .registers 3

    .line 407
    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->mallocedBytes:J

    return-wide v0
.end method

.method public blacklist test-api getMallocedCount()J
    .registers 3

    .line 400
    iget v0, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->mallocedCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist test-api getNonmallocedBytes()J
    .registers 3

    .line 421
    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->nonmallocedBytes:J

    return-wide v0
.end method

.method public blacklist test-api getNonmallocedCount()J
    .registers 3

    .line 414
    iget v0, p0, Llibcore/util/NativeAllocationRegistry$Metrics;->nonmallocedCount:I

    int-to-long v0, v0

    return-wide v0
.end method
