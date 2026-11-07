.class public Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ondevicepersonalization/internal/util/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation


# instance fields
.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "mTag"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/ondevicepersonalization/internal/util/LoggerFactory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs blacklist format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 212
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist d(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 72
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

    .line 186
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs blacklist d(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    invoke-static {p1, p2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 81
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

    .line 86
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 87
    invoke-static {p2, p3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    return v1

    .line 90
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist e(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 130
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 132
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

    .line 208
    invoke-virtual {p0, p2, p1}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs blacklist e(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 138
    invoke-static {p1, p2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 141
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist e(Ljava/lang/Throwable;Ljava/lang/String;)I
    .registers 5
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 147
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 148
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 151
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

    .line 152
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 155
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public varargs blacklist e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p2, p3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

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

    .line 95
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 98
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public varargs blacklist i(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 104
    invoke-static {p1, p2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 107
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist v(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 55
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public varargs blacklist v(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61
    invoke-static {p1, p2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 64
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist w(Ljava/lang/String;)I
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 113
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 115
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

    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public varargs blacklist w(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 121
    invoke-static {p1, p2}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 124
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

    .line 165
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 166
    iget-object v0, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 167
    invoke-static {p2, p3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    return v1

    .line 171
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 172
    .restart local v0    # "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ondevicepersonalization/internal/util/LoggerFactory$Logger;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 175
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3f
    const/4 v0, 0x0

    return v0
.end method
