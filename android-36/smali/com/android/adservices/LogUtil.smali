.class public Lcom/android/adservices/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "adservices"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist d(Ljava/lang/String;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x3

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 58
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/adservices/LogUtil;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 181
    .local v0, "result":I
    return v0
.end method

.method public static varargs blacklist d(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 64
    const/4 v0, 0x3

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 65
    invoke-static {p0, p1}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 68
    .end local v0    # "msg":Ljava/lang/String;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 74
    const/4 v0, 0x3

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    invoke-static {p1, p2}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    return v1

    .line 78
    .end local v0    # "msg":Ljava/lang/String;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x6

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 122
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-static {p1, p0}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs blacklist e(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 128
    const/4 v0, 0x6

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 129
    invoke-static {p0, p1}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 132
    .end local v0    # "msg":Ljava/lang/String;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist e(Ljava/lang/Throwable;Ljava/lang/String;)I
    .registers 5
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "msg"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x6

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 138
    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 139
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 142
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 146
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 5
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 152
    const-string v0, "adservices"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1, p2}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/adservices/LogUtil;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static varargs blacklist format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 209
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist i(Ljava/lang/String;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x4

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 86
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist i(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 92
    const/4 v0, 0x4

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 93
    invoke-static {p0, p1}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 96
    .end local v0    # "msg":Ljava/lang/String;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x2

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 40
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist v(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 46
    const/4 v0, 0x2

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    invoke-static {p0, p1}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 50
    .end local v0    # "msg":Ljava/lang/String;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x5

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 102
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 104
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/adservices/LogUtil;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 194
    .local v0, "result":I
    return v0
.end method

.method public static varargs blacklist w(Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 4
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 110
    const/4 v0, 0x5

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 111
    invoke-static {p0, p1}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 114
    .end local v0    # "msg":Ljava/lang/String;
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 158
    const/4 v0, 0x5

    const-string v1, "adservices"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 159
    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 160
    invoke-static {p1, p2}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    return v1

    .line 164
    .end local v0    # "msg":Ljava/lang/String;
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/android/adservices/LogUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 168
    .end local v0    # "msg":Ljava/lang/String;
    :cond_39
    const/4 v0, 0x0

    return v0
.end method
