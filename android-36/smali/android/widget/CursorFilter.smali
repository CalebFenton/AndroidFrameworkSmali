.class Landroid/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "CursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field greylist-max-o mClient:Landroid/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor greylist-max-o <init>(Landroid/widget/CursorFilter$CursorFilterClient;)V
    .registers 2
    .param p1, "client"    # Landroid/widget/CursorFilter$CursorFilterClient;

    .line 38
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "resultValue"    # Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 49
    iget-object v0, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0, p1}, Landroid/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 52
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_16

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 54
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1c

    .line 56
    :cond_16
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 57
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 59
    :goto_1c
    return-object v1
.end method

.method protected whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 64
    iget-object v0, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0}, Landroid/widget/CursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 66
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_17

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_17

    .line 67
    iget-object v1, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    .line 69
    :cond_17
    return-void
.end method
