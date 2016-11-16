.class public Landroid/database/MatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/MatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field private final row:I

.field final synthetic this$0:Landroid/database/MatrixCursor;


# direct methods
.method constructor <init>(Landroid/database/MatrixCursor;I)V
    .locals 2
    .param p1, "this$0"    # Landroid/database/MatrixCursor;
    .param p2, "row"    # I

    #@0
    .prologue
    .line 201
    iput-object p1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 202
    iput p2, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    #@7
    .line 203
    invoke-static {p1}, Landroid/database/MatrixCursor;->-get0(Landroid/database/MatrixCursor;)I

    #@a
    move-result v0

    #@b
    mul-int/2addr v0, p2

    #@c
    iput v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    #@e
    .line 204
    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    #@10
    invoke-static {p1}, Landroid/database/MatrixCursor;->-get0(Landroid/database/MatrixCursor;)I

    #@13
    move-result v1

    #@14
    add-int/2addr v0, v1

    #@15
    iput v0, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    #@17
    .line 201
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .locals 3
    .param p1, "columnValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 215
    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    #@2
    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 216
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    #@8
    .line 217
    const-string/jumbo v1, "No more columns left."

    #@b
    .line 216
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 220
    :cond_0
    iget-object v0, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    #@11
    invoke-static {v0}, Landroid/database/MatrixCursor;->-get2(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    #@1b
    aput-object p1, v0, v1

    #@1d
    .line 221
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 231
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    #@3
    invoke-static {v1}, Landroid/database/MatrixCursor;->-get1(Landroid/database/MatrixCursor;)[Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 232
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    #@c
    invoke-static {v1}, Landroid/database/MatrixCursor;->-get1(Landroid/database/MatrixCursor;)[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    aget-object v1, v1, v0

    #@12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 233
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    #@1a
    invoke-static {v1}, Landroid/database/MatrixCursor;->-get2(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    #@20
    iget-object v3, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    #@22
    invoke-static {v3}, Landroid/database/MatrixCursor;->-get0(Landroid/database/MatrixCursor;)I

    #@25
    move-result v3

    #@26
    mul-int/2addr v2, v3

    #@27
    add-int/2addr v2, v0

    #@28
    aput-object p2, v1, v2

    #@2a
    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 236
    :cond_1
    return-object p0
.end method
