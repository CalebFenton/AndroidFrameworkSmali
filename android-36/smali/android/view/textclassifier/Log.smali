.class public final Landroid/view/textclassifier/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field static final blacklist ENABLE_FULL_LOGGING:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    nop

    .line 35
    const-string v0, "androidtc"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/view/textclassifier/Log;->ENABLE_FULL_LOGGING:Z

    .line 34
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 55
    sget-boolean v0, Landroid/view/textclassifier/Log;->ENABLE_FULL_LOGGING:Z

    if-eqz v0, :cond_8

    .line 56
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 58
    :cond_8
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "??"

    .line 59
    .local v0, "trString":Ljava/lang/String;
    :goto_15
    const-string v1, "%s (%s)"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "trString":Ljava/lang/String;
    :goto_22
    return-void
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 41
    sget-boolean v0, Landroid/view/textclassifier/Log;->ENABLE_FULL_LOGGING:Z

    if-eqz v0, :cond_7

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_7
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
