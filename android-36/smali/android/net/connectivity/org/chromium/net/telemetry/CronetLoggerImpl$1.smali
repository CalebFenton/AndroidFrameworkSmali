.class synthetic Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;
.super Ljava/lang/Object;
.source "CronetLoggerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author:[I

.field static final synthetic blacklist $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

.field static final synthetic blacklist $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason:[I

.field static final synthetic blacklist $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 288
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_STATICALLY_LINKED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_FALLBACK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    :try_start_30
    sget-object v3, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v3

    :goto_3d
    :try_start_3d
    sget-object v3, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v3

    .line 275
    :goto_4a
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState:[I

    :try_start_53
    sget-object v3, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState:[I

    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->SUCCEEDED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    move-exception v3

    :goto_5f
    :try_start_5f
    sget-object v3, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState:[I

    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ERROR:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v3

    :goto_6b
    :try_start_6b
    sget-object v3, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState:[I

    sget-object v4, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->CANCELLED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    invoke-virtual {v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_76

    goto :goto_77

    :catch_76
    move-exception v2

    .line 264
    :goto_77
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author:[I

    :try_start_80
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author:[I

    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->API:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v2

    :goto_8c
    :try_start_8c
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author:[I

    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->IMPL:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_97

    goto :goto_98

    :catch_97
    move-exception v2

    .line 237
    :goto_98
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->values()[Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason:[I

    :try_start_a1
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason:[I

    sget-object v3, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->NETWORK:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ab} :catch_ac

    goto :goto_ad

    :catch_ac
    move-exception v0

    :goto_ad
    :try_start_ad
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason:[I

    sget-object v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->OTHER:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b7} :catch_b8

    goto :goto_b9

    :catch_b8
    move-exception v0

    :goto_b9
    return-void
.end method
