.class public Landroid/app/sdksandbox/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final blacklist GUARD_TAG:Ljava/lang/String; = "SDK_SANDBOX"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 43
    const-string v0, "SDK_SANDBOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    .line 46
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_12
    :goto_12
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 35
    const-string v0, "SDK_SANDBOX"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    .line 38
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_12
    :goto_12
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
