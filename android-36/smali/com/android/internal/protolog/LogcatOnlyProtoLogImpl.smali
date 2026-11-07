.class public Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;
.super Ljava/lang/Object;
.source "LogcatOnlyProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getRegisteredGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 4
    .param p1, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isProtoEnabled()Z
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 9
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageHash"    # J
    .param p5, "paramsMask"    # I
    .param p6, "args"    # [Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported when using LogcatOnlyProtoLogImpl"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 55
    sget-boolean v0, Lcom/android/internal/protolog/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    if-eqz v0, :cond_11

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 56
    sget-object v0, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ProtoLog message not processed. Failed to log it to proto. Logging it below to logcat instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_11
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 61
    :cond_1d
    invoke-static {p3, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "formattedString":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p1}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5e

    goto :goto_5c

    .line 68
    :pswitch_2d
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 67
    :pswitch_35
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 66
    :pswitch_3d
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 65
    :pswitch_45
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 64
    :pswitch_4d
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 63
    :pswitch_55
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "formattedString":Ljava/lang/String;
    :cond_5c
    :goto_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
    .end packed-switch
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 85
    const/4 v0, 0x0

    return v0
.end method
