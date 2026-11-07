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
.field private final greylist-max-o endIndex:I

.field private greylist-max-o index:I

.field private final greylist-max-o row:I

.field final synthetic blacklist this$0:Landroid/database/MatrixCursor;


# direct methods
.method constructor blacklist <init>(Landroid/database/MatrixCursor;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/database/MatrixCursor;
    .param p2, "row"    # I
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

    .line 208
    iput-object p1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p2, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    .line 210
    invoke-static {p1}, Landroid/database/MatrixCursor;->-$$Nest$fgetcolumnCount(Landroid/database/MatrixCursor;)I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    .line 211
    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    invoke-static {p1}, Landroid/database/MatrixCursor;->-$$Nest$fgetcolumnCount(Landroid/database/MatrixCursor;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    .line 212
    return-void
.end method


# virtual methods
.method public final blacklist add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .registers 6
    .param p1, "columnIndex"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v0}, Landroid/database/MatrixCursor;->-$$Nest$fgetdata(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    iget-object v2, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v2}, Landroid/database/MatrixCursor;->-$$Nest$fgetcolumnCount(Landroid/database/MatrixCursor;)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    .line 249
    return-object p0
.end method

.method public whitelist add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .registers 5
    .param p1, "columnValue"    # Ljava/lang/Object;

    .line 222
    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    if-eq v0, v1, :cond_15

    .line 227
    iget-object v0, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v0}, Landroid/database/MatrixCursor;->-$$Nest$fgetdata(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 228
    return-object p0

    .line 223
    :cond_15
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "No more columns left."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .registers 7
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v1}, Landroid/database/MatrixCursor;->-$$Nest$fgetcolumnNames(Landroid/database/MatrixCursor;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 239
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v1}, Landroid/database/MatrixCursor;->-$$Nest$fgetcolumnNames(Landroid/database/MatrixCursor;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 240
    iget-object v1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v1}, Landroid/database/MatrixCursor;->-$$Nest$fgetdata(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroid/database/MatrixCursor$RowBuilder;->row:I

    iget-object v3, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-static {v3}, Landroid/database/MatrixCursor;->-$$Nest$fgetcolumnCount(Landroid/database/MatrixCursor;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    aput-object p2, v1, v2

    .line 238
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    .end local v0    # "i":I
    :cond_2d
    return-object p0
.end method
