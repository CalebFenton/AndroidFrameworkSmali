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
.field mClient:Landroid/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Landroid/widget/CursorFilter$CursorFilterClient;)V
    .locals 0
    .param p1, "client"    # Landroid/widget/CursorFilter$CursorFilterClient;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    #@5
    .line 38
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    #@2
    check-cast p1, Landroid/database/Cursor;

    #@4
    .end local p1    # "resultValue":Ljava/lang/Object;
    invoke-interface {v0, p1}, Landroid/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 49
    iget-object v2, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    #@3
    invoke-interface {v2, p1}, Landroid/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    #@6
    move-result-object v0

    #@7
    .line 51
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    #@9
    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    #@c
    .line 52
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_0

    #@e
    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    #@11
    move-result v2

    #@12
    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    #@14
    .line 54
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@16
    .line 59
    :goto_0
    return-object v1

    #@17
    .line 56
    :cond_0
    const/4 v2, 0x0

    #@18
    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    #@1a
    .line 57
    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@1c
    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    #@0
    .prologue
    .line 64
    iget-object v1, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    #@2
    invoke-interface {v1}, Landroid/widget/CursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    #@5
    move-result-object v0

    #@6
    .line 66
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@c
    if-eq v1, v0, :cond_0

    #@e
    .line 67
    iget-object v2, p0, Landroid/widget/CursorFilter;->mClient:Landroid/widget/CursorFilter$CursorFilterClient;

    #@10
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    #@12
    check-cast v1, Landroid/database/Cursor;

    #@14
    invoke-interface {v2, v1}, Landroid/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    #@17
    .line 63
    :cond_0
    return-void
.end method
