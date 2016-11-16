.class public Lcom/android/internal/content/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"


# instance fields
.field private mSelection:Ljava/lang/StringBuilder;

.field private mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    #@a
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    #@11
    .line 33
    return-void
.end method


# virtual methods
.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/internal/content/SelectionBuilder;
    .locals 5
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 52
    if-eqz p2, :cond_0

    #@9
    array-length v1, p2

    #@a
    if-lez v1, :cond_0

    #@c
    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    .line 54
    const-string/jumbo v2, "Valid selection required when including arguments"

    #@11
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 58
    :cond_0
    return-object p0

    #@16
    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1b
    move-result v2

    #@1c
    if-lez v2, :cond_2

    #@1e
    .line 62
    iget-object v2, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    #@20
    const-string/jumbo v3, " AND "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 65
    :cond_2
    iget-object v2, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    #@28
    const-string/jumbo v3, "("

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, ")"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 66
    if-eqz p2, :cond_3

    #@3b
    .line 67
    array-length v2, p2

    #@3c
    :goto_0
    if-ge v1, v2, :cond_3

    #@3e
    aget-object v0, p2, v1

    #@40
    .line 70
    .local v0, "arg":Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    #@42
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    .line 67
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 74
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_3
    return-object p0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Ljava/lang/String;

    #@10
    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, v4

    #@6
    move-object v6, p4

    #@7
    move-object v7, v4

    #@8
    .line 100
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/content/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    move-object v0, p1

    #@9
    move-object v1, p2

    #@a
    move-object v2, p3

    #@b
    move-object v5, p4

    #@c
    move-object v6, p5

    #@d
    move-object v7, p6

    #@e
    move-object/from16 v8, p7

    #@10
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public reset()Lcom/android/internal/content/SelectionBuilder;
    .locals 2

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 42
    iget-object v0, p0, Lcom/android/internal/content/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@b
    .line 43
    return-object p0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelection()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/content/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method
