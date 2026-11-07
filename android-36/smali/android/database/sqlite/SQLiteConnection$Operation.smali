.class final Landroid/database/sqlite/SQLiteConnection$Operation;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Operation"
.end annotation


# static fields
.field private static final blacklist EMPTY_OPERATION:J = -0x1L

.field private static final greylist-max-o MAX_TRACE_METHOD_NAME_LEN:I = 0x100

.field private static final blacklist sDateTime:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public greylist-max-o mBindArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o mCookie:I

.field public greylist-max-o mEndTime:J

.field public greylist-max-o mException:Ljava/lang/Exception;

.field public greylist-max-o mFinished:Z

.field public greylist-max-o mKind:Ljava/lang/String;

.field public blacklist mResultLong:J

.field public blacklist mResultString:Ljava/lang/String;

.field public greylist-max-o mSql:Ljava/lang/String;

.field public greylist-max-o mStartTime:J

.field public greylist-max-o mStartWallTime:J

.field public blacklist mTraced:Z

.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->getTraceMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1930
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1931
    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {v1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteConnection$Operation;->sDateTime:Ljava/time/format/DateTimeFormatter;

    .line 1930
    return-void
.end method

.method private constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1919
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;)V

    return-void
.end method

.method private greylist-max-o getStatus()Ljava/lang/String;
    .registers 2

    .line 2053
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v0, :cond_8

    .line 2054
    const-string/jumbo v0, "running"

    return-object v0

    .line 2056
    :cond_8
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_f

    const-string v0, "failed"

    goto :goto_12

    :cond_f
    const-string/jumbo v0, "succeeded"

    :goto_12
    return-object v0
.end method

.method private greylist-max-o getTraceMethodName()Ljava/lang/String;
    .registers 4

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2061
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_29

    .line 2062
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2063
    :cond_29
    return-object v0
.end method

.method private blacklist timeString(J)Ljava/lang/String;
    .registers 5
    .param p1, "millis"    # J

    .line 2041
    sget-object v0, Landroid/database/sqlite/SQLiteConnection$Operation;->sDateTime:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V
    .registers 4
    .param p1, "r"    # Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1967
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 1968
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1969
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1970
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1971
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1972
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 1973
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1974
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1975
    iget v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1976
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1977
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 1978
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    .line 1979
    return-void
.end method

.method public blacklist describe(I)Ljava/lang/String;
    .registers 6
    .param p1, "n"    # I

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2046
    .local v0, "msg":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->timeString(J)Ljava/lang/String;

    move-result-object v1

    .line 2047
    .local v1, "start":Ljava/lang/String;
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 2049
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o describe(Ljava/lang/StringBuilder;Z)V
    .registers 10
    .param p1, "msg"    # Ljava/lang/StringBuilder;
    .param p2, "allowDetailedLog"    # Z

    .line 1992
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-eqz v0, :cond_1f

    .line 1994
    const-string v0, " took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 1996
    :cond_1f
    const-string v0, " started "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1997
    const-string/jumbo v1, "ms ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    :goto_36
    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    const-string v1, "\""

    if-eqz v0, :cond_5c

    .line 2001
    const-string v0, ", sql=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$smtrimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    :cond_5c
    if-eqz p2, :cond_70

    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_DETAILED:Z

    if-eqz v0, :cond_70

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v0, :cond_70

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 2004
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_70

    const/4 v0, 0x1

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    .line 2005
    .local v0, "dumpDetails":Z
    :goto_71
    if-eqz v0, :cond_bf

    .line 2006
    const-string v2, ", bindArgs=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2008
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7f
    if-ge v3, v2, :cond_ba

    .line 2009
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2010
    .local v4, "arg":Ljava/lang/Object;
    if-eqz v3, :cond_8e

    .line 2011
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    :cond_8e
    if-nez v4, :cond_97

    .line 2014
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 2015
    :cond_97
    instance-of v5, v4, [B

    if-eqz v5, :cond_a1

    .line 2016
    const-string v5, "<byte[]>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 2017
    :cond_a1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_b4

    .line 2018
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 2020
    :cond_b4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2008
    .end local v4    # "arg":Ljava/lang/Object;
    :goto_b7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 2023
    .end local v3    # "i":I
    :cond_ba
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    .end local v2    # "count":I
    :cond_bf
    const-string v2, ", path="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmPool(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-eqz v2, :cond_e9

    .line 2027
    const-string v2, ", exception=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :cond_e9
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_fc

    .line 2030
    const-string v2, ", result="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2032
    :cond_fc
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    if-eqz v2, :cond_10f

    .line 2033
    const-string v2, ", result=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    :cond_10f
    return-void
.end method

.method blacklist isEmpty()Z
    .registers 5

    .line 1988
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist setEmpty()V
    .registers 3

    .line 1983
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 1984
    return-void
.end method

.method blacklist start()V
    .registers 6

    .line 1948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 1949
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 1950
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1951
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1952
    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1953
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1954
    :cond_1e
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1955
    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1956
    const/4 v4, -0x1

    iput v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1957
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1958
    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 1959
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    .line 1960
    return-void
.end method
