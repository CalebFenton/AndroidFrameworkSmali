.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private final mColumnNames:[Ljava/lang/String;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mNumParameters:I

.field private final mReadOnly:Z

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    sput-object v0, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@5
    .line 30
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;
    .param p4, "cancellationSignalForPrepare"    # Landroid/os/CancellationSignal;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 40
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    #@5
    .line 42
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    #@7
    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    #@d
    .line 45
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    #@f
    invoke-static {v3}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    #@12
    move-result v2

    #@13
    .line 46
    .local v2, "n":I
    packed-switch v2, :pswitch_data_0

    #@16
    .line 56
    const/4 v3, 0x1

    #@17
    if-ne v2, v3, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 57
    .local v0, "assumeReadOnly":Z
    :goto_0
    new-instance v1, Landroid/database/sqlite/SQLiteStatementInfo;

    #@1c
    invoke-direct {v1}, Landroid/database/sqlite/SQLiteStatementInfo;-><init>()V

    #@1f
    .line 58
    .local v1, "info":Landroid/database/sqlite/SQLiteStatementInfo;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@22
    move-result-object v3

    #@23
    iget-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    #@25
    .line 59
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    #@28
    move-result v5

    #@29
    .line 58
    invoke-virtual {v3, v4, v5, p4, v1}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    #@2c
    .line 61
    iget-boolean v3, v1, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    #@2e
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    #@30
    .line 62
    iget-object v3, v1, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    #@32
    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    #@34
    .line 63
    iget v3, v1, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    #@36
    iput v3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    #@38
    .line 67
    .end local v0    # "assumeReadOnly":Z
    .end local v1    # "info":Landroid/database/sqlite/SQLiteStatementInfo;
    :goto_1
    if-eqz p3, :cond_1

    #@3a
    array-length v3, p3

    #@3b
    iget v4, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    #@3d
    if-le v3, v4, :cond_1

    #@3f
    .line 68
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v5, "Too many bind arguments.  "

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    .line 69
    array-length v5, p3

    #@4e
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    .line 69
    const-string/jumbo v5, " arguments were provided but the statement needs "

    #@55
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    .line 70
    iget v5, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    #@5b
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    .line 70
    const-string/jumbo v5, " arguments."

    #@62
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v3

    #@6e
    .line 50
    :pswitch_0
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    #@70
    .line 51
    sget-object v3, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@72
    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    #@74
    .line 52
    iput v6, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    #@76
    goto :goto_1

    #@77
    .line 56
    :cond_0
    const/4 v0, 0x0

    #@78
    .restart local v0    # "assumeReadOnly":Z
    goto :goto_0

    #@79
    .line 73
    .end local v0    # "assumeReadOnly":Z
    :cond_1
    iget v3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    #@7b
    if-eqz v3, :cond_3

    #@7d
    .line 74
    iget v3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    #@7f
    new-array v3, v3, [Ljava/lang/Object;

    #@81
    iput-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    #@83
    .line 75
    if-eqz p3, :cond_2

    #@85
    .line 76
    iget-object v3, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    #@87
    array-length v4, p3

    #@88
    invoke-static {p3, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8b
    .line 41
    :cond_2
    :goto_2
    return-void

    #@8c
    .line 79
    :cond_3
    iput-object v7, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    #@8e
    goto :goto_2

    #@8f
    .line 46
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private bind(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 211
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Cannot bind argument at index "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 213
    const-string/jumbo v2, " because the index is out of range.  "

    #@1c
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 214
    const-string/jumbo v2, "The statement has "

    #@23
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 214
    iget v2, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    #@29
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 214
    const-string/jumbo v2, " parameters."

    #@30
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 216
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    #@3e
    add-int/lit8 v1, p1, -0x1

    #@40
    aput-object p2, v0, v1

    #@42
    .line 210
    return-void
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2
    .param p1, "bindArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 198
    if-eqz p1, :cond_0

    #@2
    .line 199
    array-length v0, p1

    #@3
    .local v0, "i":I
    :goto_0
    if-eqz v0, :cond_0

    #@5
    .line 200
    add-int/lit8 v1, v0, -0x1

    #@7
    aget-object v1, p1, v1

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    #@c
    .line 199
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_0

    #@f
    .line 197
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public bindBlob(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 177
    if-nez p2, :cond_0

    #@2
    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "the bind value at index "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " is null"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 180
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    #@26
    .line 176
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 152
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    #@7
    .line 151
    return-void
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 141
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    #@7
    .line 140
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    #@4
    .line 129
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    if-nez p2, :cond_0

    #@2
    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "the bind value at index "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " is null"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 166
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    #@26
    .line 162
    return-void
.end method

.method public clearBindings()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 187
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 188
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    #@7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@a
    .line 186
    :cond_0
    return-void
.end method

.method final getBindArgs()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method final getColumnNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected final getConnectionFlags()I
    .locals 2

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    #@2
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    #@4
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method final getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    #@2
    return-object v0
.end method

.method protected final getSession()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    #@2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method final getSql()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 120
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    #@0
    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    #@3
    .line 206
    return-void
.end method

.method protected final onCorruption()V
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    #@2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    #@5
    .line 110
    return-void
.end method
