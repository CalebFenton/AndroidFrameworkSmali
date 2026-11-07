.class public final Landroid/health/connect/PageTokenWrapper;
.super Ljava/lang/Object;
.source "PageTokenWrapper.java"


# static fields
.field public static final blacklist EMPTY_PAGE_TOKEN:Landroid/health/connect/PageTokenWrapper;

.field private static final blacklist MAX_ALLOWED_OFFSET:J = 0x3ffffL

.field private static final blacklist MAX_ALLOWED_TIME_MILLIS:J = 0xfffffffffffL

.field private static final blacklist OFFSET_START_BIT:I = 0x2d

.field private static final blacklist TIMESTAMP_START_BIT:I = 0x1


# instance fields
.field private final blacklist mIsAscending:Z

.field private final blacklist mIsEmpty:Z

.field private final blacklist mIsTimestampSet:Z

.field private final blacklist mOffset:I

.field private final blacklist mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/health/connect/PageTokenWrapper;

    invoke-direct {v0}, Landroid/health/connect/PageTokenWrapper;-><init>()V

    sput-object v0, Landroid/health/connect/PageTokenWrapper;->EMPTY_PAGE_TOKEN:Landroid/health/connect/PageTokenWrapper;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 4

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    .line 213
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    .line 214
    const/4 v1, 0x0

    iput v1, p0, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    .line 215
    iput-boolean v1, p0, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    .line 216
    iput-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsEmpty:Z

    .line 217
    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "isAscending"    # Z

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-boolean p1, p0, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    .line 205
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    .line 207
    iput-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    .line 208
    iput-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsEmpty:Z

    .line 209
    return-void
.end method

.method private constructor blacklist <init>(ZJI)V
    .registers 6
    .param p1, "isAscending"    # Z
    .param p2, "timeMillis"    # J
    .param p4, "offset"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-boolean p1, p0, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    .line 197
    iput-wide p2, p0, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    .line 198
    iput p4, p0, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsEmpty:Z

    .line 201
    return-void
.end method

.method private static blacklist checkArgument(ZLjava/lang/String;)V
    .registers 3
    .param p0, "expression"    # Z
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 142
    if-eqz p0, :cond_3

    .line 145
    return-void

    .line 143
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist from(JZ)Landroid/health/connect/PageTokenWrapper;
    .registers 7
    .param p0, "pageToken"    # J
    .param p2, "defaultIsAscending"    # Z

    .line 112
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 113
    invoke-static {p2}, Landroid/health/connect/PageTokenWrapper;->ofAscending(Z)Landroid/health/connect/PageTokenWrapper;

    move-result-object v0

    return-object v0

    .line 115
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const-string v1, "pageToken cannot be negative"

    invoke-static {v0, v1}, Landroid/health/connect/PageTokenWrapper;->checkArgument(ZLjava/lang/String;)V

    .line 116
    nop

    .line 117
    invoke-static {p0, p1}, Landroid/health/connect/PageTokenWrapper;->getIsAscending(J)Z

    move-result v0

    invoke-static {p0, p1}, Landroid/health/connect/PageTokenWrapper;->getTimestamp(J)J

    move-result-wide v1

    invoke-static {p0, p1}, Landroid/health/connect/PageTokenWrapper;->getOffset(J)I

    move-result v3

    .line 116
    invoke-static {v0, v1, v2, v3}, Landroid/health/connect/PageTokenWrapper;->of(ZJI)Landroid/health/connect/PageTokenWrapper;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getIsAscending(J)Z
    .registers 6
    .param p0, "pageToken"    # J

    .line 127
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist getOffset(J)I
    .registers 4
    .param p0, "pageToken"    # J

    .line 138
    const/16 v0, 0x2d

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist getTimestamp(J)J
    .registers 7
    .param p0, "pageToken"    # J

    .line 132
    const-wide v0, 0x1ffffffffffeL

    .line 133
    .local v0, "mask":J
    and-long v2, p0, v0

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    return-wide v2
.end method

.method public static blacklist of(ZJI)Landroid/health/connect/PageTokenWrapper;
    .registers 9
    .param p0, "isAscending"    # Z
    .param p1, "timeMillis"    # J
    .param p3, "offset"    # I

    .line 87
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const-string v3, "timestamp can not be negative"

    invoke-static {v0, v3}, Landroid/health/connect/PageTokenWrapper;->checkArgument(ZLjava/lang/String;)V

    .line 88
    const-wide v3, 0xfffffffffffL

    cmp-long v0, p1, v3

    if-gtz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    const-string v3, "timestamp too large"

    invoke-static {v0, v3}, Landroid/health/connect/PageTokenWrapper;->checkArgument(ZLjava/lang/String;)V

    .line 89
    if-ltz p3, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    const-string v0, "offset can not be negative"

    invoke-static {v1, v0}, Landroid/health/connect/PageTokenWrapper;->checkArgument(ZLjava/lang/String;)V

    .line 90
    const v0, 0x3ffff

    invoke-static {v0, p3}, Ljava/lang/Integer;->min(II)I

    move-result v0

    .line 91
    .local v0, "boundedOffset":I
    new-instance v1, Landroid/health/connect/PageTokenWrapper;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/health/connect/PageTokenWrapper;-><init>(ZJI)V

    return-object v1
.end method

.method public static blacklist ofAscending(Z)Landroid/health/connect/PageTokenWrapper;
    .registers 2
    .param p0, "isAscending"    # Z

    .line 99
    new-instance v0, Landroid/health/connect/PageTokenWrapper;

    invoke-direct {v0, p0}, Landroid/health/connect/PageTokenWrapper;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public blacklist encode()J
    .registers 6

    .line 158
    iget-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    if-eqz v0, :cond_15

    .line 161
    iget v0, p0, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    int-to-long v0, v0

    const/16 v2, 0x2d

    shl-long/2addr v0, v2

    iget-wide v2, p0, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-boolean v2, p0, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    xor-int/2addr v2, v4

    int-to-long v2, v2

    or-long/2addr v0, v2

    goto :goto_17

    .line 162
    :cond_15
    const-wide/16 v0, -0x1

    .line 158
    :goto_17
    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 182
    :cond_4
    instance-of v1, p1, Landroid/health/connect/PageTokenWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Landroid/health/connect/PageTokenWrapper;

    .line 183
    .local v1, "that":Landroid/health/connect/PageTokenWrapper;
    iget-boolean v3, p0, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    iget-boolean v4, v1, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    if-ne v3, v4, :cond_2d

    iget-wide v3, p0, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    iget-wide v5, v1, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2d

    iget v3, p0, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    iget v4, v1, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    if-ne v3, v4, :cond_2d

    iget-boolean v3, p0, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    iget-boolean v4, v1, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    if-ne v3, v4, :cond_2d

    iget-boolean v3, p0, Landroid/health/connect/PageTokenWrapper;->mIsEmpty:Z

    iget-boolean v4, v1, Landroid/health/connect/PageTokenWrapper;->mIsEmpty:Z

    if-ne v3, v4, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    return v0

    .line 182
    .end local v1    # "that":Landroid/health/connect/PageTokenWrapper;
    :cond_2f
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 192
    iget-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, p0, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/health/connect/PageTokenWrapper;->mIsEmpty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAscending()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsEmpty:Z

    return v0
.end method

.method public blacklist isTimestampSet()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    return v0
.end method

.method public blacklist offset()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    return v0
.end method

.method public blacklist timeMillis()J
    .registers 3

    .line 59
    iget-wide v0, p0, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 167
    iget-boolean v0, p0, Landroid/health/connect/PageTokenWrapper;->mIsEmpty:Z

    if-eqz v0, :cond_7

    .line 168
    const-string v0, "PageTokenWrapper{}"

    return-object v0

    .line 170
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PageTokenWrapper{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "isAscending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/health/connect/PageTokenWrapper;->mIsAscending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    iget-boolean v1, p0, Landroid/health/connect/PageTokenWrapper;->mIsTimestampSet:Z

    if-eqz v1, :cond_33

    .line 173
    const-string v1, ", timeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/health/connect/PageTokenWrapper;->mTimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/health/connect/PageTokenWrapper;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    :cond_33
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
