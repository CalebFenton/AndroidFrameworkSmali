.class public Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;
.super Ljava/lang/Object;
.source "NoViewerConfigProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLog"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist logMessage(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p1}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    goto :goto_23

    .line 87
    :pswitch_c
    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 86
    :pswitch_10
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 85
    :pswitch_14
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 84
    :pswitch_18
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 83
    :pswitch_1c
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 82
    :pswitch_20
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
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

    .line 77
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 4
    .param p1, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p2, "level"    # Lcom/android/internal/protolog/common/LogLevel;

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProtoEnabled()Z
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 11
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageHash"    # J
    .param p5, "paramsMask"    # I
    .param p6, "args"    # [Ljava/lang/Object;

    .line 45
    const-string v0, "ProtoLog"

    const-string v1, "ProtoLogging is not available due to missing viewer config file..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROTOLOG#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    invoke-static {p6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;->logMessage(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public varargs blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "logLevel"    # Lcom/android/internal/protolog/common/LogLevel;
    .param p2, "group"    # Lcom/android/internal/protolog/common/IProtoLogGroup;
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 52
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;->logMessage(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4
    .param p1, "groups"    # [Ljava/lang/String;
    .param p2, "logger"    # Lcom/android/internal/protolog/common/ILogger;

    .line 67
    const/4 v0, 0x0

    return v0
.end method
