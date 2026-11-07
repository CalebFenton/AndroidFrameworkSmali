.class public final Landroid/database/CursorJoiner;
.super Ljava/lang/Object;
.source "CursorJoiner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/database/CursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o mColumnsLeft:[I

.field private greylist-max-o mColumnsRight:[I

.field private greylist-max-o mCompareResult:Landroid/database/CursorJoiner$Result;

.field private greylist-max-o mCompareResultIsValid:Z

.field private greylist-max-o mCursorLeft:Landroid/database/Cursor;

.field private greylist-max-o mCursorRight:Landroid/database/Cursor;

.field private greylist-max-o mValues:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 8
    .param p1, "cursorLeft"    # Landroid/database/Cursor;
    .param p2, "columnNamesLeft"    # [Ljava/lang/String;
    .param p3, "cursorRight"    # Landroid/database/Cursor;
    .param p4, "columnNamesRight"    # [Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_2e

    .line 85
    iput-object p1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    .line 86
    iput-object p3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    .line 88
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 89
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    .line 94
    invoke-direct {p0, p3, p4}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    .line 96
    iget-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    .line 97
    return-void

    .line 80
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you must have the same number of columns on the left and right, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .line 110
    array-length v0, p2

    new-array v0, v0, [I

    .line 111
    .local v0, "columns":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_12

    .line 112
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 114
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private static varargs blacklist compareStrings([Ljava/lang/String;)I
    .registers 6
    .param p0, "values"    # [Ljava/lang/String;

    .line 244
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_34

    .line 248
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_32

    .line 249
    aget-object v1, p0, v0

    const/4 v2, -0x1

    if-nez v1, :cond_16

    .line 250
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    if-nez v1, :cond_15

    goto :goto_2f

    .line 251
    :cond_15
    return v2

    .line 254
    :cond_16
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    const/4 v3, 0x1

    if-nez v1, :cond_1e

    .line 255
    return v3

    .line 258
    :cond_1e
    aget-object v1, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 259
    .local v1, "comp":I
    if-eqz v1, :cond_2f

    .line 260
    if-gez v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v3

    :goto_2e
    return v2

    .line 248
    .end local v1    # "comp":I
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 264
    .end local v0    # "index":I
    :cond_32
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you must specify an even number of values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o incrementCursors()V
    .registers 2

    .line 218
    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_28

    .line 219
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v0}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    goto :goto_25

    .line 227
    :pswitch_e
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 228
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_25

    .line 221
    :pswitch_19
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 222
    goto :goto_25

    .line 224
    :pswitch_1f
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 225
    nop

    .line 231
    :goto_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 233
    :cond_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method

.method private static greylist-max-o populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .registers 7
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndicies"    # [I
    .param p3, "startingIndex"    # I

    .line 207
    nop

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_13

    .line 209
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 211
    .end local v0    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 4

    .line 122
    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    .line 123
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v0}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_72

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_2a
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_3a
    move v1, v2

    :cond_3b
    return v1

    .line 128
    :pswitch_3c
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4d

    :cond_4c
    move v1, v2

    :cond_4d
    return v1

    .line 131
    :pswitch_4e
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_5e
    move v1, v2

    :cond_5f
    return v1

    .line 138
    :cond_60
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_71

    :cond_70
    move v1, v2

    :cond_71
    return v1

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_3c
        :pswitch_2a
    .end packed-switch
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/database/CursorJoiner$Result;",
            ">;"
        }
    .end annotation

    .line 100
    return-object p0
.end method

.method public whitelist next()Landroid/database/CursorJoiner$Result;
    .registers 8

    .line 158
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 161
    invoke-direct {p0}, Landroid/database/CursorJoiner;->incrementCursors()V

    .line 162
    nop

    .line 164
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 165
    .local v0, "hasLeft":Z
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 167
    .local v2, "hasRight":Z
    if-eqz v0, :cond_4a

    if-eqz v2, :cond_4a

    .line 168
    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v5, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 169
    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v5, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    invoke-static {v3, v4, v5, v1}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 170
    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    invoke-static {v3}, Landroid/database/CursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_64

    goto :goto_49

    .line 178
    :pswitch_3a
    sget-object v3, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_49

    .line 175
    :pswitch_3f
    sget-object v3, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    .line 176
    goto :goto_49

    .line 172
    :pswitch_44
    sget-object v3, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    .line 173
    nop

    .line 179
    :goto_49
    goto :goto_56

    .line 181
    :cond_4a
    if-eqz v0, :cond_51

    .line 182
    sget-object v3, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_56

    .line 184
    :cond_51
    nop

    .line 185
    sget-object v3, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    .line 187
    :goto_56
    iput-boolean v1, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 188
    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    return-object v1

    .line 159
    .end local v0    # "hasLeft":Z
    .end local v2    # "hasRight":Z
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must only call next() when hasNext() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_64
    .packed-switch -0x1
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->next()Landroid/database/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
