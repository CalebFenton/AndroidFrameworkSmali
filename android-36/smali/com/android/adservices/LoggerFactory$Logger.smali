.class public final Lcom/android/adservices/LoggerFactory$Logger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/adservices/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logger"
.end annotation


# instance fields
.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/adservices/LoggerFactory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/adservices/LoggerFactory$Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs blacklist format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 277
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist d(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 117
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 119
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/adservices/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 242
    .local v0, "result":I
    return v0
.end method

.method public varargs blacklist d(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 126
    invoke-static {p1, p2}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 129
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public varargs blacklist d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 136
    invoke-static {p2, p3}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    return v1

    .line 139
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist e(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 181
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 183
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    invoke-virtual {p0, p2, p1}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "result":I
    return v0
.end method

.method public varargs blacklist e(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 190
    invoke-static {p1, p2}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 193
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist e(Ljava/lang/Throwable;Ljava/lang/String;)I
    .registers 5
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 199
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 200
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 203
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 204
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 207
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public varargs blacklist e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p2, p3}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist i(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 145
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 147
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public varargs blacklist i(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 154
    invoke-static {p1, p2}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 157
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logger[tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist v(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 99
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 101
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public varargs blacklist v(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 108
    invoke-static {p1, p2}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 111
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist w(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 163
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 165
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/adservices/LoggerFactory$Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 255
    .local v0, "result":I
    return v0
.end method

.method public varargs blacklist w(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    invoke-static {p1, p2}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 175
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public varargs blacklist w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 220
    iget-object v0, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 221
    invoke-static {p2, p3}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    return v1

    .line 225
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/android/adservices/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/adservices/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 229
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3f
    const/4 v0, 0x0

    return v0
.end method
