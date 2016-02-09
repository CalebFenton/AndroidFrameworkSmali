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
        "Ljava/util/Iterator",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -android_database_CursorJoiner$ResultSwitchesValues:[I

.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private mColumnsLeft:[I

.field private mColumnsRight:[I

.field private mCompareResult:Landroid/database/CursorJoiner$Result;

.field private mCompareResultIsValid:Z

.field private mCursorLeft:Landroid/database/Cursor;

.field private mCursorRight:Landroid/database/Cursor;

.field private mValues:[Ljava/lang/String;


# direct methods
.method private static synthetic -getandroid_database_CursorJoiner$ResultSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/database/CursorJoiner;->-android_database_CursorJoiner$ResultSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/database/CursorJoiner;->-android_database_CursorJoiner$ResultSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/database/CursorJoiner$Result;->values()[Landroid/database/CursorJoiner$Result;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    #@10
    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    #@19
    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    #@22
    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/database/CursorJoiner;->-android_database_CursorJoiner$ResultSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/database/CursorJoiner;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/database/CursorJoiner;->-assertionsDisabled:Z

    #@b
    .line 45
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cursorLeft"    # Landroid/database/Cursor;
    .param p2, "columnNamesLeft"    # [Ljava/lang/String;
    .param p3, "cursorRight"    # Landroid/database/Cursor;
    .param p4, "columnNamesRight"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    array-length v0, p2

    #@4
    array-length v1, p4

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "you must have the same number of columns on the left and right, "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 81
    array-length v2, p2

    #@16
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 81
    const-string/jumbo v2, " != "

    #@1d
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 81
    array-length v2, p4

    #@22
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 84
    :cond_0
    iput-object p1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@30
    .line 85
    iput-object p3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@32
    .line 87
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@34
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@37
    .line 88
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@39
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@3c
    .line 90
    const/4 v0, 0x0

    #@3d
    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    #@3f
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    #@45
    .line 93
    invoke-direct {p0, p3, p4}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    #@4b
    .line 95
    iget-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    #@4d
    array-length v0, v0

    #@4e
    mul-int/lit8 v0, v0, 0x2

    #@50
    new-array v0, v0, [Ljava/lang/String;

    #@52
    iput-object v0, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    #@54
    .line 77
    return-void
.end method

.method private buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 109
    array-length v2, p2

    #@1
    new-array v0, v2, [I

    #@3
    .line 110
    .local v0, "columns":[I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, p2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 111
    aget-object v2, p2, v1

    #@9
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    aput v2, v0, v1

    #@f
    .line 110
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 113
    :cond_0
    return-object v0
.end method

.method private static varargs compareStrings([Ljava/lang/String;)I
    .locals 7
    .param p0, "values"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 243
    array-length v4, p0

    #@4
    rem-int/lit8 v4, v4, 0x2

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 244
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "you must specify an even number of values"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 247
    :cond_0
    const/4 v1, 0x0

    #@12
    .local v1, "index":I
    :goto_0
    array-length v4, p0

    #@13
    if-ge v1, v4, :cond_6

    #@15
    .line 248
    aget-object v4, p0, v1

    #@17
    if-nez v4, :cond_3

    #@19
    .line 249
    add-int/lit8 v4, v1, 0x1

    #@1b
    aget-object v4, p0, v4

    #@1d
    if-nez v4, :cond_2

    #@1f
    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x2

    #@21
    goto :goto_0

    #@22
    .line 250
    :cond_2
    return v2

    #@23
    .line 253
    :cond_3
    add-int/lit8 v4, v1, 0x1

    #@25
    aget-object v4, p0, v4

    #@27
    if-nez v4, :cond_4

    #@29
    .line 254
    return v3

    #@2a
    .line 257
    :cond_4
    aget-object v4, p0, v1

    #@2c
    add-int/lit8 v5, v1, 0x1

    #@2e
    aget-object v5, p0, v5

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    .line 258
    .local v0, "comp":I
    if-eqz v0, :cond_1

    #@36
    .line 259
    if-gez v0, :cond_5

    #@38
    :goto_1
    return v2

    #@39
    :cond_5
    move v2, v3

    #@3a
    goto :goto_1

    #@3b
    .line 263
    .end local v0    # "comp":I
    :cond_6
    return v6
.end method

.method private incrementCursors()V
    .locals 2

    #@0
    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 218
    invoke-static {}, Landroid/database/CursorJoiner;->-getandroid_database_CursorJoiner$ResultSwitchesValues()[I

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@a
    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    #@d
    move-result v1

    #@e
    aget v0, v0, v1

    #@10
    packed-switch v0, :pswitch_data_0

    #@13
    .line 230
    :goto_0
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    #@16
    .line 216
    :cond_0
    return-void

    #@17
    .line 220
    :pswitch_0
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@19
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    #@1c
    goto :goto_0

    #@1d
    .line 223
    :pswitch_1
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    #@22
    goto :goto_0

    #@23
    .line 226
    :pswitch_2
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    #@28
    .line 227
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    #@2d
    goto :goto_0

    #@2e
    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .locals 4
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndicies"    # [I
    .param p3, "startingIndex"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 206
    sget-boolean v3, Landroid/database/CursorJoiner;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_2

    #@6
    if-eqz p3, :cond_0

    #@8
    if-ne p3, v1, :cond_1

    #@a
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    #@c
    new-instance v1, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v1

    #@12
    :cond_1
    move v1, v2

    #@13
    goto :goto_0

    #@14
    .line 207
    :cond_2
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_1
    array-length v1, p2

    #@16
    if-ge v0, v1, :cond_3

    #@18
    .line 208
    mul-int/lit8 v1, v0, 0x2

    #@1a
    add-int/2addr v1, p3

    #@1b
    aget v2, p2, v0

    #@1d
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    aput-object v2, p0, v1

    #@23
    .line 207
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_1

    #@26
    .line 205
    :cond_3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 121
    iget-boolean v2, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    #@4
    if-eqz v2, :cond_3

    #@6
    .line 122
    invoke-static {}, Landroid/database/CursorJoiner;->-getandroid_database_CursorJoiner$ResultSwitchesValues()[I

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@c
    invoke-virtual {v3}, Landroid/database/CursorJoiner$Result;->ordinal()I

    #@f
    move-result v3

    #@10
    aget v2, v2, v3

    #@12
    packed-switch v2, :pswitch_data_0

    #@15
    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "bad value for mCompareResult, "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 134
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@25
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 124
    :pswitch_0
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@33
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_0

    #@39
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@3b
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_0

    #@41
    move v0, v1

    #@42
    :cond_0
    return v0

    #@43
    .line 127
    :pswitch_1
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@45
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_1

    #@4b
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@4d
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_1

    #@53
    move v0, v1

    #@54
    :cond_1
    return v0

    #@55
    .line 130
    :pswitch_2
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@57
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_2

    #@5d
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@5f
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_2

    #@65
    move v0, v1

    #@66
    :cond_2
    return v0

    #@67
    .line 137
    :cond_3
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@69
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_4

    #@6f
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@71
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    #@74
    move-result v2

    #@75
    if-eqz v2, :cond_4

    #@77
    move v0, v1

    #@78
    :cond_4
    return v0

    #@79
    .line 122
    nop

    #@7a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/database/CursorJoiner$Result;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 99
    return-object p0
.end method

.method public next()Landroid/database/CursorJoiner$Result;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 157
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 158
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v3, "you must only call next() when hasNext() is true"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 160
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorJoiner;->incrementCursors()V

    #@13
    .line 161
    sget-boolean v2, Landroid/database/CursorJoiner;->-assertionsDisabled:Z

    #@15
    if-nez v2, :cond_1

    #@17
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    new-instance v2, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v2

    #@23
    .line 163
    :cond_1
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@25
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    const/4 v0, 0x0

    #@2c
    .line 164
    .local v0, "hasLeft":Z
    :goto_0
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@2e
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_3

    #@34
    const/4 v1, 0x0

    #@35
    .line 166
    .local v1, "hasRight":Z
    :goto_1
    if-eqz v0, :cond_4

    #@37
    if-eqz v1, :cond_4

    #@39
    .line 167
    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    #@3b
    iget-object v3, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    #@3d
    iget-object v4, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    #@3f
    const/4 v5, 0x0

    #@40
    invoke-static {v2, v3, v4, v5}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    #@43
    .line 168
    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    #@45
    iget-object v3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    #@47
    iget-object v4, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    #@49
    invoke-static {v2, v3, v4, v6}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    #@4c
    .line 169
    iget-object v2, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    #@4e
    invoke-static {v2}, Landroid/database/CursorJoiner;->compareStrings([Ljava/lang/String;)I

    #@51
    move-result v2

    #@52
    packed-switch v2, :pswitch_data_0

    #@55
    .line 186
    :goto_2
    iput-boolean v6, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    #@57
    .line 187
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@59
    return-object v2

    #@5a
    .line 163
    .end local v0    # "hasLeft":Z
    .end local v1    # "hasRight":Z
    :cond_2
    const/4 v0, 0x1

    #@5b
    .restart local v0    # "hasLeft":Z
    goto :goto_0

    #@5c
    .line 164
    :cond_3
    const/4 v1, 0x1

    #@5d
    .restart local v1    # "hasRight":Z
    goto :goto_1

    #@5e
    .line 171
    :pswitch_0
    sget-object v2, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    #@60
    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@62
    goto :goto_2

    #@63
    .line 174
    :pswitch_1
    sget-object v2, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    #@65
    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@67
    goto :goto_2

    #@68
    .line 177
    :pswitch_2
    sget-object v2, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    #@6a
    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@6c
    goto :goto_2

    #@6d
    .line 180
    :cond_4
    if-eqz v0, :cond_5

    #@6f
    .line 181
    sget-object v2, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    #@71
    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@73
    goto :goto_2

    #@74
    .line 183
    :cond_5
    sget-boolean v2, Landroid/database/CursorJoiner;->-assertionsDisabled:Z

    #@76
    if-nez v2, :cond_6

    #@78
    if-nez v1, :cond_6

    #@7a
    new-instance v2, Ljava/lang/AssertionError;

    #@7c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@7f
    throw v2

    #@80
    .line 184
    :cond_6
    sget-object v2, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    #@82
    iput-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    #@84
    goto :goto_2

    #@85
    .line 169
    nop

    #@86
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->next()Landroid/database/CursorJoiner$Result;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
