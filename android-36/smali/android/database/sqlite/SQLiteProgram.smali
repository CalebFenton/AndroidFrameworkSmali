.class public abstract Landroid/database/sqlite/SQLiteProgram;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final greylist-max-r mBindArgs:[Ljava/lang/Object;

.field private final greylist-max-o mColumnNames:[Ljava/lang/String;

.field private final greylist-max-o mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final greylist-max-o mNumParameters:I

.field private final greylist-max-o mReadOnly:Z

.field private final greylist mSql:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;
    .param p4, "cancellationSignalForPrepare"    # Landroid/os/CancellationSignal;

    .line 45
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "n":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_8c

    .line 60
    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    goto :goto_23

    .line 54
    :pswitch_19
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 55
    sget-object v2, Landroid/database/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 56
    iput v1, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    .line 57
    goto :goto_41

    .line 60
    :cond_22
    move v2, v1

    .line 61
    .local v2, "assumeReadOnly":Z
    :goto_23
    new-instance v3, Landroid/database/sqlite/SQLiteStatementInfo;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteStatementInfo;-><init>()V

    .line 62
    .local v3, "info":Landroid/database/sqlite/SQLiteStatementInfo;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 63
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v6

    .line 62
    invoke-virtual {v4, v5, v6, p4, v3}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 65
    iget-boolean v4, v3, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 66
    iget-object v4, v3, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object v4, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 67
    iget v4, v3, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    iput v4, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    .line 71
    .end local v2    # "assumeReadOnly":Z
    .end local v3    # "info":Landroid/database/sqlite/SQLiteStatementInfo;
    :goto_41
    if-eqz p3, :cond_75

    array-length v2, p3

    iget v3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt v2, v3, :cond_49

    goto :goto_75

    .line 72
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many bind arguments.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arguments were provided but the statement needs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arguments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_75
    :goto_75
    iget v2, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz v2, :cond_88

    .line 78
    iget v2, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 79
    if-eqz p3, :cond_8b

    .line 80
    iget-object v2, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    array-length v3, p3

    invoke-static {p3, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8b

    .line 83
    :cond_88
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 85
    :cond_8b
    :goto_8b
    return-void

    :pswitch_data_8c
    .packed-switch 0x4
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private greylist-max-o bind(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 215
    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    iget v0, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, v0, :cond_e

    .line 220
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 221
    return-void

    .line 216
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind argument at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the index is out of range.  The statement has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/database/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist bindAllArgsAsStrings([Ljava/lang/String;)V
    .registers 4
    .param p1, "bindArgs"    # [Ljava/lang/String;

    .line 202
    if-eqz p1, :cond_f

    .line 203
    array-length v0, p1

    .local v0, "i":I
    :goto_3
    if-eqz v0, :cond_f

    .line 204
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 207
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public whitelist bindBlob(I[B)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .line 181
    if-eqz p2, :cond_6

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 185
    return-void

    .line 182
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindDouble(ID)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 156
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public whitelist bindLong(IJ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 145
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 146
    return-void
.end method

.method public whitelist bindNull(I)V
    .registers 3
    .param p1, "index"    # I

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public whitelist bindString(ILjava/lang/String;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 167
    if-eqz p2, :cond_6

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 171
    return-void

    .line 168
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the bind value at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearBindings()V
    .registers 3

    .line 191
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 192
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    :cond_a
    return-void
.end method

.method final greylist-max-o getBindArgs()[Ljava/lang/Object;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method final greylist-max-o getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method protected final greylist-max-o getConnectionFlags()I
    .registers 3

    .line 110
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v0

    return v0
.end method

.method final greylist-max-o getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected final greylist-max-o getSession()Landroid/database/sqlite/SQLiteSession;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o getSql()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getUniqueId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    const/4 v0, -0x1

    return v0
.end method

.method protected whitelist onAllReferencesReleased()V
    .registers 1

    .line 211
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 212
    return-void
.end method

.method protected final greylist-max-o onCorruption()V
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/database/sqlite/SQLiteProgram;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 116
    return-void
.end method
