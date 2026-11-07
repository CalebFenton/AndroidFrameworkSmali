.class public final Llibcore/io/IoTracker;
.super Ljava/lang/Object;
.source "IoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/IoTracker$Mode;
    }
.end annotation


# instance fields
.field private blacklist isOpen:Z

.field private blacklist mode:Llibcore/io/IoTracker$Mode;

.field private blacklist opCount:I

.field private blacklist totalByteCount:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/io/IoTracker;->isOpen:Z

    .line 29
    sget-object v0, Llibcore/io/IoTracker$Mode;->READ:Llibcore/io/IoTracker$Mode;

    iput-object v0, p0, Llibcore/io/IoTracker;->mode:Llibcore/io/IoTracker$Mode;

    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .registers 2

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Llibcore/io/IoTracker;->opCount:I

    .line 56
    iput v0, p0, Llibcore/io/IoTracker;->totalByteCount:I

    .line 57
    return-void
.end method

.method public blacklist trackIo(I)V
    .registers 4
    .param p1, "byteCount"    # I

    .line 32
    iget v0, p0, Llibcore/io/IoTracker;->opCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/io/IoTracker;->opCount:I

    .line 33
    iget v0, p0, Llibcore/io/IoTracker;->totalByteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Llibcore/io/IoTracker;->totalByteCount:I

    .line 34
    iget-boolean v0, p0, Llibcore/io/IoTracker;->isOpen:Z

    if-eqz v0, :cond_25

    iget v0, p0, Llibcore/io/IoTracker;->opCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_25

    iget v0, p0, Llibcore/io/IoTracker;->totalByteCount:I

    const/16 v1, 0x1400

    if-ge v0, v1, :cond_25

    .line 35
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onUnbufferedIO()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Llibcore/io/IoTracker;->isOpen:Z

    .line 38
    :cond_25
    return-void
.end method

.method public blacklist trackIo(ILlibcore/io/IoTracker$Mode;)V
    .registers 4
    .param p1, "byteCount"    # I
    .param p2, "mode"    # Llibcore/io/IoTracker$Mode;

    .line 41
    iget-object v0, p0, Llibcore/io/IoTracker;->mode:Llibcore/io/IoTracker$Mode;

    if-eq v0, p2, :cond_9

    .line 42
    invoke-virtual {p0}, Llibcore/io/IoTracker;->reset()V

    .line 43
    iput-object p2, p0, Llibcore/io/IoTracker;->mode:Llibcore/io/IoTracker$Mode;

    .line 45
    :cond_9
    invoke-virtual {p0, p1}, Llibcore/io/IoTracker;->trackIo(I)V

    .line 46
    return-void
.end method
