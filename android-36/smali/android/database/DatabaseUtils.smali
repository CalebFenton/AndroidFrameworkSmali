.class public Landroid/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DIGITS:[C

.field public static final whitelist STATEMENT_ABORT:I = 0x6

.field public static final whitelist STATEMENT_ATTACH:I = 0x3

.field public static final whitelist STATEMENT_BEGIN:I = 0x4

.field public static final blacklist STATEMENT_COMMENT:I = 0x66

.field public static final whitelist STATEMENT_COMMIT:I = 0x5

.field public static final blacklist STATEMENT_CREATE:I = 0x65

.field public static final whitelist STATEMENT_DDL:I = 0x8

.field public static final whitelist STATEMENT_OTHER:I = 0x63

.field public static final whitelist STATEMENT_PRAGMA:I = 0x7

.field public static final whitelist STATEMENT_SELECT:I = 0x1

.field public static final whitelist STATEMENT_UNPREPARED:I = 0x9

.field public static final whitelist STATEMENT_UPDATE:I = 0x2

.field public static final blacklist STATEMENT_WITH:I = 0x64

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static greylist-max-o mColl:Ljava/text/Collator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 625
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Landroid/database/DatabaseUtils;->DIGITS:[C

    .line 660
    const/4 v0, 0x0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    return-void

    nop

    :array_e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sqlString"    # Ljava/lang/String;

    .line 524
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 526
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_46

    .line 527
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 528
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 529
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1b

    .line 530
    goto :goto_43

    .line 532
    :cond_1b
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 534
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    goto :goto_43

    .line 542
    :cond_34
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 543
    goto :goto_43

    .line 545
    :cond_3b
    if-ne v3, v0, :cond_40

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_40
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    .end local v3    # "c":C
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 550
    .end local v2    # "i":I
    :cond_46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    return-void
.end method

.method public static whitelist appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "originalValues"    # [Ljava/lang/String;
    .param p1, "newValues"    # [Ljava/lang/String;

    .line 1719
    if-eqz p0, :cond_16

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_16

    .line 1722
    :cond_6
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 1723
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1724
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1725
    return-object v0

    .line 1720
    .end local v0    # "result":[Ljava/lang/String;
    :cond_16
    :goto_16
    return-object p1
.end method

.method public static final whitelist appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4
    .param p0, "sql"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .line 568
    if-nez p1, :cond_8

    .line 569
    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 570
    :cond_8
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 571
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 572
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 573
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 575
    :cond_1b
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    .end local v0    # "bool":Ljava/lang/Boolean;
    :goto_20
    goto :goto_28

    .line 578
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 580
    :goto_28
    return-void
.end method

.method private static blacklist bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V
    .registers 7
    .param p0, "st"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "bindArgs"    # [Ljava/lang/Object;

    .line 225
    if-nez p1, :cond_3

    return-void

    .line 227
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_5d

    .line 228
    aget-object v1, p1, v0

    .line 229
    .local v1, "bindArg":Ljava/lang/Object;
    invoke-static {v1}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_5e

    .line 244
    :pswitch_10
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_51

    .line 248
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4b

    const-wide/16 v3, 0x1

    goto :goto_4d

    .line 240
    :pswitch_22
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 241
    goto :goto_5a

    .line 237
    :pswitch_2b
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 238
    goto :goto_5a

    .line 234
    :pswitch_38
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 235
    goto :goto_5a

    .line 231
    :pswitch_45
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 232
    goto :goto_5a

    .line 248
    :cond_4b
    const-wide/16 v3, 0x0

    :goto_4d
    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_5a

    .line 250
    :cond_51
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 227
    .end local v1    # "bindArg":Ljava/lang/Object;
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 255
    .end local v0    # "i":I
    :cond_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_45
        :pswitch_38
        :pswitch_2b
        :pswitch_10
        :pswitch_22
    .end packed-switch
.end method

.method public static whitelist bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    .registers 6
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteProgram;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 268
    if-nez p2, :cond_6

    .line 269
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_54

    .line 270
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_4a

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_f

    goto :goto_4a

    .line 272
    :cond_f
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1e

    .line 273
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_54

    .line 274
    :cond_1e
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_37

    .line 275
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 276
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 277
    const-wide/16 v1, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_36

    .line 279
    :cond_31
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 281
    .end local v0    # "bool":Ljava/lang/Boolean;
    :goto_36
    goto :goto_54

    :cond_37
    instance-of v0, p2, [B

    if-eqz v0, :cond_42

    .line 282
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_54

    .line 284
    :cond_42
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_54

    .line 271
    :cond_4a
    :goto_4a
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 286
    :goto_54
    return-void
.end method

.method public static varargs blacklist bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 15
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/Object;

    .line 301
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 305
    :cond_b
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    return-object p0

    .line 309
    :cond_15
    const/16 v1, 0x20

    .line 310
    .local v1, "before":C
    const/16 v2, 0x20

    .line 312
    .local v2, "after":C
    const/4 v3, 0x0

    .line 313
    .local v3, "argIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 314
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 315
    .local v5, "res":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    if-ge v6, v4, :cond_b9

    .line 316
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 317
    .local v6, "c":C
    if-ne v6, v0, :cond_b2

    .line 320
    const/16 v2, 0x20

    .line 324
    move v8, v7

    .line 325
    .local v8, "start":I
    :goto_31
    if-ge v7, v4, :cond_45

    .line 326
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 327
    const/16 v9, 0x30

    if-lt v6, v9, :cond_43

    const/16 v9, 0x39

    if-le v6, v9, :cond_40

    goto :goto_43

    .line 325
    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 328
    :cond_43
    :goto_43
    move v2, v6

    .line 329
    nop

    .line 332
    :cond_45
    if-eq v8, v7, :cond_51

    .line 333
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 338
    :cond_51
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "argIndex":I
    .local v9, "argIndex":I
    aget-object v3, p1, v3

    .line 339
    .local v3, "arg":Ljava/lang/Object;
    const/16 v10, 0x20

    if-eq v1, v10, :cond_60

    const/16 v11, 0x3d

    if-eq v1, v11, :cond_60

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_60
    invoke-static {v3}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v11

    packed-switch v11, :pswitch_data_be

    .line 354
    :pswitch_67
    instance-of v11, v3, Ljava/lang/Boolean;

    if-eqz v11, :cond_9b

    .line 357
    move-object v11, v3

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_97

    .line 351
    :pswitch_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v10, "Blobs not supported"

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_7b
    move-object v11, v3

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 349
    goto :goto_aa

    .line 345
    :pswitch_86
    move-object v11, v3

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    goto :goto_aa

    .line 342
    :pswitch_91
    const-string v11, "NULL"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    goto :goto_aa

    .line 357
    :goto_97
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 359
    :cond_9b
    const/16 v11, 0x27

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :goto_aa
    if-eq v2, v10, :cond_af

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    .end local v3    # "arg":Ljava/lang/Object;
    .end local v8    # "start":I
    :cond_af
    move v3, v9

    move v6, v7

    goto :goto_b7

    .line 367
    .end local v9    # "argIndex":I
    .local v3, "argIndex":I
    :cond_b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    move v1, v6

    move v6, v7

    .line 370
    .end local v7    # "i":I
    .local v6, "i":I
    :goto_b7
    goto/16 :goto_24

    .line 371
    .end local v6    # "i":I
    :cond_b9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_91
        :pswitch_86
        :pswitch_7b
        :pswitch_67
        :pswitch_73
    .end packed-switch
.end method

.method public static whitelist blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1075
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1077
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1079
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1077
    return-object v1

    .line 1079
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1080
    throw v1
.end method

.method public static whitelist blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1091
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist categorizeStatement(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "sql"    # Ljava/lang/String;

    .line 1638
    const/16 v0, 0x63

    if-nez p0, :cond_5

    return v0

    .line 1640
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v1, :sswitch_data_10a

    :cond_17
    goto/16 :goto_d2

    :sswitch_19
    const-string v1, "WIT"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x10

    goto/16 :goto_d3

    :sswitch_25
    const-string v1, "UPD"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v9

    goto/16 :goto_d3

    :sswitch_30
    const-string v1, "SEL"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto/16 :goto_d3

    :sswitch_3b
    const-string v1, "ROL"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v4

    goto/16 :goto_d3

    :sswitch_46
    const-string v1, "REP"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v8

    goto/16 :goto_d3

    :sswitch_51
    const-string v1, "PRA"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xa

    goto/16 :goto_d3

    :sswitch_5d
    const-string v1, "INS"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v10

    goto/16 :goto_d3

    :sswitch_68
    const-string v1, "END"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v5

    goto/16 :goto_d3

    :sswitch_73
    const-string v1, "DRO"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xc

    goto :goto_d3

    :sswitch_7e
    const-string v1, "DET"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xf

    goto :goto_d3

    :sswitch_89
    const-string v1, "DEL"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v6

    goto :goto_d3

    :sswitch_93
    const-string v1, "CRE"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xb

    goto :goto_d3

    :sswitch_9e
    const-string v1, "COM"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_d3

    :sswitch_a8
    const-string v1, "BEG"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_d3

    :sswitch_b2
    const-string v1, "ATT"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v7

    goto :goto_d3

    :sswitch_bc
    const-string v1, "ANA"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xe

    goto :goto_d3

    :sswitch_c7
    const-string v1, "ALT"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0xd

    goto :goto_d3

    :goto_d2
    const/4 v1, -0x1

    :goto_d3
    packed-switch v1, :pswitch_data_150

    .line 1664
    const-string v1, "--"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_106

    const-string v1, "/*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_105

    goto :goto_106

    .line 1662
    :pswitch_e7
    const/16 v0, 0x64

    return v0

    .line 1661
    :pswitch_ea
    return v3

    .line 1659
    :pswitch_eb
    return v4

    .line 1657
    :pswitch_ec
    const/16 v0, 0x65

    return v0

    .line 1656
    :pswitch_ef
    return v5

    .line 1655
    :pswitch_f0
    return v6

    .line 1650
    :pswitch_f1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " TO "

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 1652
    return v0

    .line 1654
    :cond_100
    return v2

    .line 1648
    :pswitch_101
    return v7

    .line 1646
    :pswitch_102
    return v8

    .line 1645
    :pswitch_103
    return v9

    .line 1641
    :pswitch_104
    return v10

    .line 1667
    :cond_105
    return v0

    .line 1665
    :cond_106
    :goto_106
    const/16 v0, 0x66

    return v0

    nop

    :sswitch_data_10a
    .sparse-switch
        0xfd89 -> :sswitch_c7
        0xfdb4 -> :sswitch_bc
        0xfe81 -> :sswitch_b2
        0x10064 -> :sswitch_a8
        0x10561 -> :sswitch_9e
        0x105b6 -> :sswitch_93
        0x107eb -> :sswitch_89
        0x107f3 -> :sswitch_7e
        0x10981 -> :sswitch_73
        0x10cbb -> :sswitch_68
        0x11bce -> :sswitch_5d
        0x1367f -> :sswitch_51
        0x13c7d -> :sswitch_46
        0x13daf -> :sswitch_3b
        0x1403a -> :sswitch_30
        0x14909 -> :sswitch_25
        0x14fc2 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_104
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_101
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ec
        :pswitch_eb
        :pswitch_eb
        :pswitch_ea
        :pswitch_ea
        :pswitch_e7
    .end packed-switch
.end method

.method public static whitelist concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 586
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 587
    return-object p1

    .line 589
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 590
    return-object p0

    .line 593
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I
    .param p3, "sqlStatements"    # Ljava/lang/String;

    .line 1564
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1568
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, ";\n"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1569
    .local v2, "statements":[Ljava/lang/String;
    array-length v3, v2

    :goto_d
    if-ge v1, v3, :cond_1e

    aget-object v4, v2, v1

    .line 1570
    .local v4, "statement":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_1b

    .line 1571
    :cond_18
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1569
    .end local v4    # "statement":Ljava/lang/String;
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1573
    :cond_1e
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1574
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1575
    return-void
.end method

.method public static whitelist cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 915
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 916
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 917
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1d

    .line 919
    :cond_16
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 921
    :goto_1d
    return-void
.end method

.method public static whitelist cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1185
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1186
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1187
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1189
    :cond_18
    return-void
.end method

.method public static whitelist cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 902
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 903
    return-void
.end method

.method public static greylist-max-o cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V
    .registers 9
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .line 449
    if-ltz p1, :cond_80

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    goto/16 :goto_80

    .line 452
    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 453
    .local v0, "oldPos":I
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 454
    .local v1, "numColumns":I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 455
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 456
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 457
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 459
    :cond_21
    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v2

    if-nez v2, :cond_28

    .line 460
    goto :goto_7c

    .line 462
    :cond_28
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v1, :cond_74

    .line 463
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    .line 465
    .local v3, "type":I
    packed-switch v3, :pswitch_data_82

    .line 487
    :pswitch_32
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_65

    invoke-virtual {p2, v4, p1, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v5

    goto :goto_69

    .line 479
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_3d
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 480
    .local v4, "value":[B
    if-eqz v4, :cond_48

    invoke-virtual {p2, v4, p1, v2}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v5

    goto :goto_4c

    .line 481
    :cond_48
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    :goto_4c
    nop

    .line 482
    .local v5, "success":Z
    goto :goto_6b

    .line 475
    .end local v4    # "value":[B
    .end local v5    # "success":Z
    :pswitch_4e
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5, p1, v2}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v5

    .line 476
    .restart local v5    # "success":Z
    goto :goto_6b

    .line 471
    .end local v5    # "success":Z
    :pswitch_57
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5, p1, v2}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v5

    .line 472
    .restart local v5    # "success":Z
    goto :goto_6b

    .line 467
    .end local v5    # "success":Z
    :pswitch_60
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    .line 468
    .restart local v5    # "success":Z
    goto :goto_6b

    .line 489
    .end local v5    # "success":Z
    .local v4, "value":Ljava/lang/String;
    :cond_65
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    :goto_69
    nop

    .line 490
    .restart local v5    # "success":Z
    nop

    .line 493
    .end local v4    # "value":Ljava/lang/String;
    :goto_6b
    if-nez v5, :cond_71

    .line 494
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 495
    goto :goto_7c

    .line 462
    .end local v3    # "type":I
    .end local v5    # "success":Z
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 498
    .end local v2    # "i":I
    :cond_74
    add-int/lit8 p1, p1, 0x1

    .line 499
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_21

    .line 501
    :cond_7c
    :goto_7c
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 502
    return-void

    .line 450
    .end local v0    # "oldPos":I
    .end local v1    # "numColumns":I
    :cond_80
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_60
        :pswitch_57
        :pswitch_4e
        :pswitch_32
        :pswitch_3d
    .end packed-switch
.end method

.method public static whitelist cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1169
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1170
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1171
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1173
    :cond_18
    return-void
.end method

.method public static whitelist cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 841
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 842
    return-void
.end method

.method public static whitelist cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 854
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 855
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 856
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1d

    .line 858
    :cond_16
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    :goto_1d
    return-void
.end method

.method public static whitelist cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1153
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1154
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1155
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    :cond_18
    return-void
.end method

.method public static whitelist cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 871
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public static whitelist cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 884
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 885
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 886
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 887
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 888
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_1d

    .line 889
    :cond_16
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 891
    :goto_1d
    return-void
.end method

.method public static whitelist cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1121
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1122
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1123
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1125
    :cond_18
    return-void
.end method

.method public static greylist cursorPickFillWindowStartPosition(II)I
    .registers 4
    .param p0, "cursorPosition"    # I
    .param p1, "cursorWindowCapacity"    # I

    .line 965
    div-int/lit8 v0, p1, 0x3

    sub-int v0, p0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static whitelist cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 930
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "columns":[Ljava/lang/String;
    array-length v1, v0

    .line 932
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_25

    .line 933
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_19

    .line 934
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_22

    .line 936
    :cond_19
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 939
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public static whitelist cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1137
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1138
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1139
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 1141
    :cond_18
    return-void
.end method

.method public static whitelist cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 804
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public static whitelist cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 830
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public static whitelist cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1105
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1106
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1107
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :cond_14
    return-void
.end method

.method public static whitelist cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "inserter"    # Landroid/database/DatabaseUtils$InsertHelper;
    .param p3, "index"    # I

    .line 817
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 818
    return-void
.end method

.method public static blacklist deepCopyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0, "args"    # [Ljava/lang/Object;

    .line 381
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 384
    .local v0, "res":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_33

    .line 385
    aget-object v2, p0, v1

    .line 387
    .local v2, "arg":Ljava/lang/Object;
    if-eqz v2, :cond_2e

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_2e

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_18

    goto :goto_2e

    .line 390
    :cond_18
    instance-of v3, v2, [B

    if-eqz v3, :cond_27

    .line 392
    move-object v3, v2

    check-cast v3, [B

    .line 393
    .local v3, "castArg":[B
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    aput-object v4, v0, v1

    .line 394
    .end local v3    # "castArg":[B
    goto :goto_30

    .line 396
    :cond_27
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_30

    .line 389
    :cond_2e
    :goto_2e
    aput-object v2, v0, v1

    .line 384
    .end local v2    # "arg":Ljava/lang/Object;
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 399
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;)V
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 732
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 733
    return-void
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .registers 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 742
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "cols":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 744
    array-length v1, v0

    .line 745
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_56

    .line 748
    :try_start_28
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_2c} :catch_2d

    .line 753
    .local v3, "value":Ljava/lang/String;
    goto :goto_31

    .line 749
    .end local v3    # "value":Ljava/lang/String;
    :catch_2d
    move-exception v3

    .line 752
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    move-object v3, v4

    .line 754
    .local v3, "value":Ljava/lang/String;
    :goto_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 756
    .end local v2    # "i":I
    :cond_56
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 766
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "cols":[Ljava/lang/String;
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    array-length v1, v0

    .line 769
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_3c

    .line 772
    :try_start_15
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_19} :catch_1a

    .line 777
    .local v3, "value":Ljava/lang/String;
    goto :goto_1e

    .line 773
    .end local v3    # "value":Ljava/lang/String;
    :catch_1a
    move-exception v3

    .line 776
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    move-object v3, v4

    .line 778
    .local v3, "value":Ljava/lang/String;
    :goto_1e
    const-string v4, "   "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 780
    .end local v2    # "i":I
    :cond_3c
    const-string/jumbo v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    return-void
.end method

.method public static whitelist dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;)V
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 668
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 669
    return-void
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> Dumping cursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 680
    if-eqz p0, :cond_2d

    .line 681
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 683
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 684
    :goto_20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 685
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    goto :goto_20

    .line 687
    :cond_2a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 689
    .end local v0    # "startPos":I
    :cond_2d
    const-string v0, "<<<<<"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 700
    const-string v0, ">>>>> Dumping cursor "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    if-eqz p0, :cond_26

    .line 702
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 704
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 705
    :goto_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 706
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_19

    .line 708
    :cond_23
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 710
    .end local v0    # "startPos":I
    :cond_26
    const-string v0, "<<<<<\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    return-void
.end method

.method public static whitelist dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 723
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o encodeHex([B)[C
    .registers 8
    .param p0, "input"    # [B

    .line 631
    array-length v0, p0

    .line 632
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 635
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7
    if-ge v2, v0, :cond_26

    .line 636
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    sget-object v5, Landroid/database/DatabaseUtils;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 637
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    sget-object v5, Landroid/database/DatabaseUtils;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 640
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_26
    return-object v1
.end method

.method public static blacklist escapeForLike(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "arg"    # Ljava/lang/String;

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1749
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1750
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1751
    .local v2, "c":C
    const/16 v3, 0x5c

    sparse-switch v2, :sswitch_data_2a

    goto :goto_1e

    .line 1754
    :sswitch_16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1752
    :sswitch_1a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1753
    nop

    .line 1757
    :goto_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1749
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1759
    .end local v1    # "i":I
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_2a
    .sparse-switch
        0x25 -> :sswitch_1a
        0x5f -> :sswitch_16
    .end sparse-switch
.end method

.method public static blacklist executeInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)J
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 209
    .local v0, "st":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 211
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 210
    :cond_10
    return-wide v1

    .line 208
    :catchall_11
    move-exception v1

    if-eqz v0, :cond_1c

    :try_start_14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw v1
.end method

.method public static blacklist executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 218
    .local v0, "st":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 220
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 219
    :cond_10
    return v1

    .line 217
    :catchall_11
    move-exception v1

    if-eqz v0, :cond_1c

    :try_start_14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw v1
.end method

.method public static greylist-max-o findRowIdColumnIndex([Ljava/lang/String;)I
    .registers 5
    .param p0, "columnNames"    # [Ljava/lang/String;

    .line 1733
    array-length v0, p0

    .line 1734
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_12

    .line 1735
    aget-object v2, p0, v1

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1736
    return v1

    .line 1734
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1739
    .end local v1    # "i":I
    :cond_12
    const/4 v1, -0x1

    return v1
.end method

.method public static whitelist getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 602
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 604
    .local v0, "arr":[B
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v2

    const-string v3, "ISO8859_1"

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return-object v1

    .line 605
    :catch_11
    move-exception v1

    .line 606
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, ""

    return-object v2
.end method

.method private static greylist-max-o getCollationKeyInBytes(Ljava/lang/String;)[B
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 653
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_10

    .line 654
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 655
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 657
    :cond_10
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 616
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 617
    .local v0, "arr":[B
    invoke-static {v0}, Landroid/database/DatabaseUtils;->encodeHex([B)[C

    move-result-object v1

    .line 618
    .local v1, "keys":[C
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static greylist-max-o getKeyLen([B)I
    .registers 2
    .param p0, "arr"    # [B

    .line 644
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_9

    .line 645
    array-length v0, p0

    return v0

    .line 648
    :cond_9
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static blacklist getSqlStatementPrefixExtendedNoRegex(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "sql"    # Ljava/lang/String;

    .line 1618
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getSqlStatementPrefixOffset(Ljava/lang/String;)I

    move-result v0

    .line 1619
    .local v0, "n":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 1621
    return-object v1

    .line 1623
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1624
    .local v2, "end":I
    if-le v0, v2, :cond_f

    .line 1626
    return-object v1

    .line 1628
    :cond_f
    add-int/lit8 v1, v0, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1629
    .local v1, "eos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getSqlStatementPrefixOffset(Ljava/lang/String;)I
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 1582
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 1583
    .local v0, "limit":I
    const/4 v1, -0x1

    if-gez v0, :cond_a

    return v1

    .line 1584
    :cond_a
    const/4 v2, 0x0

    .line 1585
    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_59

    .line 1586
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1587
    .local v3, "c":C
    const/16 v4, 0x20

    if-gt v3, v4, :cond_18

    .line 1592
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1593
    :cond_18
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_33

    .line 1594
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_25

    return v2

    .line 1595
    :cond_25
    add-int/lit8 v4, v2, 0x2

    const/16 v5, 0xa

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1596
    if-gez v2, :cond_30

    return v1

    .line 1597
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1598
    :cond_33
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_58

    .line 1599
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_42

    return v2

    .line 1600
    :cond_42
    add-int/lit8 v2, v2, 0x1

    .line 1602
    :cond_44
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1603
    if-gez v2, :cond_4d

    return v1

    .line 1604
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    .line 1605
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_44

    .line 1606
    add-int/lit8 v2, v2, 0x1

    .line 1610
    .end local v3    # "c":C
    :goto_57
    goto :goto_b

    .line 1608
    .restart local v3    # "c":C
    :cond_58
    return v2

    .line 1611
    .end local v3    # "c":C
    :cond_59
    return v1
.end method

.method public static blacklist getSqlStatementType(I)I
    .registers 2
    .param p0, "extended"    # I

    .line 1685
    const/16 v0, 0x63

    packed-switch p0, :pswitch_data_c

    .line 1690
    return p0

    .line 1688
    :pswitch_6
    return v0

    .line 1686
    :pswitch_7
    const/16 v0, 0x8

    return v0

    .line 1687
    :pswitch_a
    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_a
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getSqlStatementType(Ljava/lang/String;)I
    .registers 2
    .param p0, "sql"    # Ljava/lang/String;

    .line 1711
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getSqlStatementTypeExtended(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getSqlStatementType(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getSqlStatementTypeExtended(Ljava/lang/String;)I
    .registers 2
    .param p0, "sql"    # Ljava/lang/String;

    .line 1677
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getSqlStatementPrefixExtendedNoRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->categorizeStatement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-p getTypeOfObject(Ljava/lang/Object;)I
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 421
    if-nez p0, :cond_4

    .line 422
    const/4 v0, 0x0

    return v0

    .line 423
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 424
    const/4 v0, 0x4

    return v0

    .line 425
    :cond_a
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_28

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_13

    goto :goto_28

    .line 427
    :cond_13
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_24

    goto :goto_26

    .line 431
    :cond_24
    const/4 v0, 0x3

    return v0

    .line 429
    :cond_26
    :goto_26
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_28
    :goto_28
    const/4 v0, 0x2

    return v0
.end method

.method public static whitelist longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1028
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1030
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1032
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1030
    return-wide v1

    .line 1032
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1033
    throw v1
.end method

.method public static whitelist longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .registers 4
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1041
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o queryIsEmpty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select exists(select 1 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1020
    .local v0, "isEmpty":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    return v2
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 975
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .line 988
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 1006
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1a
    const-string v0, ""

    .line 1007
    .local v0, "s":Ljava/lang/String;
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select count(*) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final whitelist readExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;

    .line 150
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 151
    .local v0, "code":I
    if-nez v0, :cond_7

    return-void

    .line 152
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method private static final greylist-max-o readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 181
    packed-switch p2, :pswitch_data_3e

    .line 201
    :pswitch_3
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 203
    return-void

    .line 199
    :pswitch_7
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0, p1}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :pswitch_d
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :pswitch_13
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :pswitch_19
    new-instance v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_1f
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_25
    new-instance v0, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :pswitch_2b
    new-instance v0, Landroid/database/sqlite/SQLiteAbortException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public static whitelist readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 159
    .local v0, "code":I
    if-nez v0, :cond_7

    return-void

    .line 160
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    .line 164
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 166
    return-void

    .line 162
    :cond_12
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 171
    .local v0, "code":I
    if-nez v0, :cond_7

    return-void

    .line 172
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "msg":Ljava/lang/String;
    const/16 v2, 0xa

    if-eq v0, v2, :cond_13

    .line 176
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 178
    return-void

    .line 174
    :cond_13
    new-instance v2, Landroid/content/OperationApplicationException;

    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .local v0, "escaper":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1050
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1052
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1054
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1052
    return-object v1

    .line 1054
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1055
    throw v1
.end method

.method public static whitelist stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1063
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .registers 7
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "code":I
    const/4 v1, 0x1

    .line 103
    .local v1, "logException":Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    const-string v3, "Writing exception to parcel"

    const-string v4, "DatabaseUtils"

    if-eqz v2, :cond_d

    .line 104
    const/4 v0, 0x1

    .line 105
    const/4 v1, 0x0

    goto :goto_4d

    .line 106
    :cond_d
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_13

    .line 107
    const/4 v0, 0x2

    goto :goto_4d

    .line 108
    :cond_13
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_19

    .line 109
    const/4 v0, 0x3

    goto :goto_4d

    .line 110
    :cond_19
    instance-of v2, p1, Landroid/database/sqlite/SQLiteAbortException;

    if-eqz v2, :cond_1f

    .line 111
    const/4 v0, 0x4

    goto :goto_4d

    .line 112
    :cond_1f
    instance-of v2, p1, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v2, :cond_25

    .line 113
    const/4 v0, 0x5

    goto :goto_4d

    .line 114
    :cond_25
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_2b

    .line 115
    const/4 v0, 0x6

    goto :goto_4d

    .line 116
    :cond_2b
    instance-of v2, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v2, :cond_31

    .line 117
    const/4 v0, 0x7

    goto :goto_4d

    .line 118
    :cond_31
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v2, :cond_38

    .line 119
    const/16 v0, 0x8

    goto :goto_4d

    .line 120
    :cond_38
    instance-of v2, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v2, :cond_3f

    .line 121
    const/16 v0, 0x9

    goto :goto_4d

    .line 122
    :cond_3f
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    if-eqz v2, :cond_46

    .line 123
    const/16 v0, 0xa

    goto :goto_4d

    .line 124
    :cond_46
    instance-of v2, p1, Landroid/os/OperationCanceledException;

    if-eqz v2, :cond_5d

    .line 125
    const/16 v0, 0xb

    .line 126
    const/4 v1, 0x0

    .line 132
    :goto_4d
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    if-eqz v1, :cond_5c

    .line 136
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :cond_5c
    return-void

    .line 128
    :cond_5d
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 129
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    return-void
.end method
