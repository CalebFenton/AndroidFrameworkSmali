.class final Landroid/database/sqlite/SQLiteConnection$Operation;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Operation"
.end annotation


# instance fields
.field public mBindArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mCookie:I

.field public mEndTime:J

.field public mException:Ljava/lang/Exception;

.field public mFinished:Z

.field public mKind:Ljava/lang/String;

.field public mSql:Ljava/lang/String;

.field public mStartTime:J


# direct methods
.method static synthetic -wrap0(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->getFormattedStartTime()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$Operation;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>()V

    #@3
    return-void
.end method

.method private getFormattedStartTime()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1500
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    #@5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    new-instance v1, Ljava/util/Date;

    #@a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    #@c
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@f
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private getStatus()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1489
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1490
    const-string/jumbo v0, "running"

    #@7
    return-object v0

    #@8
    .line 1492
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    #@a
    if-eqz v0, :cond_1

    #@c
    const-string/jumbo v0, "failed"

    #@f
    :goto_0
    return-object v0

    #@10
    :cond_1
    const-string/jumbo v0, "succeeded"

    #@13
    goto :goto_0
.end method


# virtual methods
.method public describe(Ljava/lang/StringBuilder;Z)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    #@0
    .prologue
    .line 1452
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    .line 1453
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    #@7
    if-eqz v3, :cond_2

    #@9
    .line 1454
    const-string/jumbo v3, " took "

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    #@12
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    #@14
    sub-long/2addr v4, v6

    #@15
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    const-string/jumbo v4, "ms"

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 1459
    :goto_0
    const-string/jumbo v3, " - "

    #@22
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->getStatus()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 1460
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    #@2f
    if-eqz v3, :cond_0

    #@31
    .line 1461
    const-string/jumbo v3, ", sql=\""

    #@34
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    #@3a
    invoke-static {v4}, Landroid/database/sqlite/SQLiteConnection;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    const-string/jumbo v4, "\""

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 1463
    :cond_0
    if-eqz p2, :cond_7

    #@4a
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@4c
    if-eqz v3, :cond_7

    #@4e
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_7

    #@56
    .line 1464
    const-string/jumbo v3, ", bindArgs=["

    #@59
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 1465
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v1

    #@62
    .line 1466
    .local v1, "count":I
    const/4 v2, 0x0

    #@63
    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    #@65
    .line 1467
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    .line 1468
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@6d
    .line 1469
    const-string/jumbo v3, ", "

    #@70
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 1471
    :cond_1
    if-nez v0, :cond_3

    #@75
    .line 1472
    const-string/jumbo v3, "null"

    #@78
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 1466
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@7d
    goto :goto_1

    #@7e
    .line 1456
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    const-string/jumbo v3, " started "

    #@81
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v3

    #@85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@88
    move-result-wide v4

    #@89
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    #@8b
    sub-long/2addr v4, v6

    #@8c
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    .line 1457
    const-string/jumbo v4, "ms ago"

    #@93
    .line 1456
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    goto :goto_0

    #@97
    .line 1473
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_3
    instance-of v3, v0, [B

    #@99
    if-eqz v3, :cond_4

    #@9b
    .line 1474
    const-string/jumbo v3, "<byte[]>"

    #@9e
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    goto :goto_2

    #@a2
    .line 1475
    :cond_4
    instance-of v3, v0, Ljava/lang/String;

    #@a4
    if-eqz v3, :cond_5

    #@a6
    .line 1476
    const-string/jumbo v3, "\""

    #@a9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v3

    #@ad
    check-cast v0, Ljava/lang/String;

    #@af
    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    const-string/jumbo v4, "\""

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    goto :goto_2

    #@ba
    .line 1478
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    goto :goto_2

    #@be
    .line 1481
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v3, "]"

    #@c1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    .line 1483
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    #@c6
    if-eqz v3, :cond_8

    #@c8
    .line 1484
    const-string/jumbo v3, ", exception=\""

    #@cb
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v3

    #@cf
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    #@d1
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@d4
    move-result-object v4

    #@d5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v3

    #@d9
    const-string/jumbo v4, "\""

    #@dc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    .line 1451
    :cond_8
    return-void
.end method
