.class public final Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation


# static fields
.field private static final blacklist sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field final greylist column:I

.field final greylist row:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 199
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$Cell;->createCells()[[Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-static {p1, p2}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(II)V

    .line 217
    iput p1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 218
    iput p2, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 219
    return-void
.end method

.method private static blacklist checkRange(II)V
    .registers 4
    .param p0, "row"    # I
    .param p1, "column"    # I

    .line 235
    if-ltz p0, :cond_12

    const/4 v0, 0x2

    if-gt p0, v0, :cond_12

    .line 238
    if-ltz p1, :cond_a

    if-gt p1, v0, :cond_a

    .line 241
    return-void

    .line 239
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createCells()[[Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 6

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    const-class v1, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 203
    .local v0, "res":[[Lcom/android/internal/widget/LockPatternView$Cell;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_27

    .line 204
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_16
    if-ge v3, v2, :cond_24

    .line 205
    aget-object v4, v0, v1

    new-instance v5, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v5, v1, v3}, Lcom/android/internal/widget/LockPatternView$Cell;-><init>(II)V

    aput-object v5, v4, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 203
    .end local v3    # "j":I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 208
    .end local v1    # "i":I
    :cond_27
    return-object v0
.end method

.method public static blacklist of(II)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 3
    .param p0, "row"    # I
    .param p1, "column"    # I

    .line 230
    invoke-static {p0, p1}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(II)V

    .line 231
    sget-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public blacklist getColumn()I
    .registers 2

    .line 226
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    return v0
.end method

.method public blacklist getRow()I
    .registers 2

    .line 222
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
