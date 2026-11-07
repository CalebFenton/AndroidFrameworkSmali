.class Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.super Ljava/lang/Object;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCursorHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;,
        Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private greylist-max-o mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

.field private greylist-max-o mCursor:Landroid/database/Cursor;

.field private greylist-max-o mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

.field private greylist-max-o mDataValid:Z

.field private greylist-max-o mRowIDColumn:I

.field final synthetic blacklist this$0:Landroid/widget/CursorTreeAdapter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCursor(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;
    .registers 1

    iget-object p0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDataValid(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V
    .registers 6
    .param p1, "this$0"    # Landroid/widget/CursorTreeAdapter;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    if-eqz p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 410
    .local v0, "cursorPresent":Z
    :goto_a
    iput-object p2, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 411
    iput-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 412
    if-eqz v0, :cond_17

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, -0x1

    :goto_18
    iput v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 413
    new-instance v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-direct {v1, p0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V

    iput-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    .line 414
    new-instance v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Landroid/widget/CursorTreeAdapter-IA;)V

    iput-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    .line 415
    if-eqz v0, :cond_35

    .line 416
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 417
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 419
    :cond_35
    return-void
.end method


# virtual methods
.method greylist-max-o changeCursor(Landroid/database/Cursor;Z)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "releaseCursors"    # Z

    .line 454
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_5

    return-void

    .line 456
    :cond_5
    invoke-virtual {p0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V

    .line 457
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 458
    if-eqz p1, :cond_27

    .line 459
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 460
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 461
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 464
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    goto :goto_32

    .line 466
    :cond_27
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 469
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    .line 471
    :goto_32
    return-void
.end method

.method greylist-max-o deactivate()V
    .registers 3

    .line 474
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    .line 475
    return-void

    .line 478
    :cond_5
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 479
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 480
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 482
    return-void
.end method

.method greylist-max-o getCount()I
    .registers 2

    .line 426
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 427
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    .line 429
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o getCursor()Landroid/database/Cursor;
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method greylist-max-o getId(I)J
    .registers 5
    .param p1, "position"    # I

    .line 434
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    .line 435
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 436
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 438
    :cond_1b
    return-wide v1

    .line 441
    :cond_1c
    return-wide v1
.end method

.method greylist-max-o isValid()Z
    .registers 2

    .line 485
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method greylist-max-o moveTo(I)Landroid/database/Cursor;
    .registers 3
    .param p1, "position"    # I

    .line 446
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 447
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 449
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
