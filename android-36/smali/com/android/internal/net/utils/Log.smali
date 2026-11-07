.class public Lcom/android/internal/net/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mIsVdbg:Z

.field private final blacklist mLogSensitive:Z

.field private final blacklist mTAG:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logSensitive"    # Z

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/net/utils/Log;-><init>(Ljava/lang/String;ZZ)V

    .line 42
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZZ)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isVdbg"    # Z
    .param p3, "logSensitive"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Lcom/android/internal/net/utils/Log;->mIsVdbg:Z

    .line 48
    iput-boolean p3, p0, Lcom/android/internal/net/utils/Log;->mLogSensitive:Z

    .line 49
    return-void
.end method

.method public static blacklist byteArrayToHexString([B)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B

    .line 273
    if-eqz p0, :cond_2c

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_2c

    .line 277
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_27

    aget-byte v3, p0, v2

    .line 279
    .local v3, "b":B
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02X"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 281
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 274
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2c
    :goto_2c
    const-string v0, ""

    return-object v0
.end method

.method private blacklist isLoggable(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 263
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 93
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_23
    return-void
.end method

.method public blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 108
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 109
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :cond_23
    return-void
.end method

.method public blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 185
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 186
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_23
    return-void
.end method

.method public blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 201
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 202
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    :cond_23
    return-void
.end method

.method public blacklist i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 124
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_23
    return-void
.end method

.method public blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 139
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 140
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_23
    return-void
.end method

.method public blacklist pii(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "pii"    # Ljava/lang/Object;

    .line 245
    iget-boolean v0, p0, Lcom/android/internal/net/utils/Log;->mIsVdbg:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/net/utils/Log;->mLogSensitive:Z

    if-nez v0, :cond_9

    goto :goto_1a

    .line 248
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_15

    .line 249
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/net/utils/Log;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 251
    :cond_15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_1a
    :goto_1a
    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 62
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_23
    return-void
.end method

.method public blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 78
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_23
    return-void
.end method

.method public blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 155
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_23
    return-void
.end method

.method public blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 170
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/internal/net/utils/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 171
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :cond_23
    return-void
.end method

.method public blacklist wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public blacklist wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 232
    iget-object v0, p0, Lcom/android/internal/net/utils/Log;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    return-void
.end method
