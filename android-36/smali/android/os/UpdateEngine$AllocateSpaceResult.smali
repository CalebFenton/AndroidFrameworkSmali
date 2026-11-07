.class public final Landroid/os/UpdateEngine$AllocateSpaceResult;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocateSpaceResult"
.end annotation


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mFreeSpaceRequired:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V
    .registers 2

    iput p1, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V
    .registers 3

    iput-wide p1, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    .line 509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    .line 510
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/UpdateEngine-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/UpdateEngine$AllocateSpaceResult;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 525
    iget v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    return v0
.end method

.method public whitelist getFreeSpaceRequired()J
    .registers 4

    .line 547
    iget v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    if-nez v0, :cond_7

    .line 548
    const-wide/16 v0, 0x0

    return-wide v0

    .line 550
    :cond_7
    iget v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_10

    .line 551
    iget-wide v0, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mFreeSpaceRequired:J

    return-wide v0

    .line 553
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Landroid/os/UpdateEngine$AllocateSpaceResult;->mErrorCode:I

    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 553
    const-string v2, "getFreeSpaceRequired() is not available when error code is %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
