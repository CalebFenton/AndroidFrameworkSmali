.class Landroid/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/CursorAdapter;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/CursorAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 511
    iput-object p1, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/CursorAdapter;Landroid/widget/CursorAdapter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/widget/CursorAdapter;)V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 3

    .line 514
    iget-object v0, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 515
    iget-object v0, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 516
    return-void
.end method

.method public whitelist onInvalidated()V
    .registers 3

    .line 520
    iget-object v0, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 521
    iget-object v0, p0, Landroid/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 522
    return-void
.end method
