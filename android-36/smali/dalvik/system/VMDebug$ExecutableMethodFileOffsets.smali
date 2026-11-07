.class public Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
.super Ljava/lang/Object;
.source "VMDebug.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/VMDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecutableMethodFileOffsets"
.end annotation


# instance fields
.field private final blacklist mContainerOffset:J

.field private final blacklist mContainerPath:Ljava/lang/String;

.field private final blacklist mMethodOffset:J


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "containerPath"    # Ljava/lang/String;
    .param p2, "containerOffset"    # J
    .param p4, "methodOffset"    # J

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->mContainerPath:Ljava/lang/String;

    .line 422
    iput-wide p2, p0, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->mContainerOffset:J

    .line 423
    iput-wide p4, p0, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->mMethodOffset:J

    .line 424
    return-void
.end method


# virtual methods
.method public blacklist test-api getContainerOffset()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 443
    iget-wide v0, p0, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->mContainerOffset:J

    return-wide v0
.end method

.method public blacklist test-api getContainerPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 433
    iget-object v0, p0, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->mContainerPath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api getMethodOffset()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 453
    iget-wide v0, p0, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->mMethodOffset:J

    return-wide v0
.end method
