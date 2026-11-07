.class public Lcom/android/internal/os/ProcTimeInStateReader;
.super Ljava/lang/Object;
.source "ProcTimeInStateReader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcTimeInStateReader"

.field private static final blacklist TIME_IN_STATE_HEADER_LINE_FORMAT:[I

.field private static final blacklist TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

.field private static final blacklist TIME_IN_STATE_LINE_TIME_FORMAT:[I


# instance fields
.field private blacklist mFrequenciesKhz:[J

.field private blacklist mTimeInStateTimeFormat:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 66
    const/16 v0, 0x2020

    const/16 v1, 0xa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    .line 74
    const/16 v0, 0x20

    const/16 v2, 0x200a

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    .line 82
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/nio/file/Path;)V
    .registers 2
    .param p1, "initialTimeInStateFile"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/os/ProcTimeInStateReader;->initializeTimeInStateFormat(Ljava/nio/file/Path;)V

    .line 107
    return-void
.end method

.method private blacklist initializeTimeInStateFormat(Ljava/nio/file/Path;)V
    .registers 12
    .param p1, "timeInStatePath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 165
    .local v0, "timeInStateBytes":[B
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    move-object v7, v1

    .line 166
    .local v7, "timeInStateFrequencyFormat":Landroid/util/IntArray;
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    move-object v8, v1

    .line 167
    .local v8, "timeInStateTimeFormat":Landroid/util/IntArray;
    const/4 v1, 0x0

    .line 168
    .local v1, "numFrequencies":I
    const/4 v2, 0x0

    move v9, v1

    .end local v1    # "numFrequencies":I
    .local v2, "i":I
    .local v9, "numFrequencies":I
    :goto_13
    array-length v1, v0

    if-ge v2, v1, :cond_44

    .line 170
    aget-byte v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 171
    sget-object v1, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    invoke-virtual {v7, v1}, Landroid/util/IntArray;->addAll([I)V

    .line 172
    sget-object v1, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_HEADER_LINE_FORMAT:[I

    invoke-virtual {v8, v1}, Landroid/util/IntArray;->addAll([I)V

    goto :goto_35

    .line 174
    :cond_29
    sget-object v1, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_FREQUENCY_FORMAT:[I

    invoke-virtual {v7, v1}, Landroid/util/IntArray;->addAll([I)V

    .line 175
    sget-object v1, Lcom/android/internal/os/ProcTimeInStateReader;->TIME_IN_STATE_LINE_TIME_FORMAT:[I

    invoke-virtual {v8, v1}, Landroid/util/IntArray;->addAll([I)V

    .line 176
    add-int/lit8 v9, v9, 0x1

    .line 179
    :goto_35
    array-length v1, v0

    if-ge v2, v1, :cond_41

    aget-byte v1, v0, v2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_41

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 168
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 184
    .end local v2    # "i":I
    :cond_44
    if-eqz v9, :cond_67

    .line 190
    new-array v5, v9, [J

    .line 191
    .local v5, "readLongs":[J
    array-length v2, v0

    .line 193
    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    .line 191
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v1

    .line 194
    .local v1, "readSuccess":Z
    if-eqz v1, :cond_5f

    .line 198
    invoke-virtual {v8}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    .line 199
    iput-object v5, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    .line 200
    return-void

    .line 195
    :cond_5f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse time_in_state file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    .end local v1    # "readSuccess":Z
    .end local v5    # "readLongs":[J
    :cond_67
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Empty time_in_state file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getFrequenciesKhz()[J
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    return-object v0
.end method

.method public blacklist getUsageTimesMillis(Ljava/nio/file/Path;)[J
    .registers 9
    .param p1, "timeInStatePath"    # Ljava/nio/file/Path;

    .line 119
    iget-object v0, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mFrequenciesKhz:[J

    array-length v0, v0

    new-array v0, v0, [J

    .line 120
    .local v0, "readLongs":[J
    nop

    .line 121
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ProcTimeInStateReader;->mTimeInStateTimeFormat:[I

    .line 120
    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    .line 124
    .local v1, "readSuccess":Z
    if-nez v1, :cond_14

    .line 125
    return-object v3

    .line 128
    :cond_14
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v0

    if-ge v2, v3, :cond_22

    .line 129
    aget-wide v3, v0, v2

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 131
    .end local v2    # "i":I
    :cond_22
    return-object v0
.end method
