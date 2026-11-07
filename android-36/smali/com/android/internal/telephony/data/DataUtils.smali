.class public Lcom/android/internal/telephony/data/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# static fields
.field public static final blacklist NET_CAPABILITY_NOT_BANDWIDTH_CONSTRAINED:I = 0x25

.field private static final blacklist TIME_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method public static synthetic blacklist $r8$lambda$aW2B2jxbvan5dwSPnJ6Z7vpaOJA(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)I
    .registers 3

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result p1

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getPriority()I

    move-result p0

    .line 427
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$c8l4SU8uiuonOy3hd23ZRSrh7C8(Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .registers 1

    .line 422
    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;-><init>()V

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/internal/telephony/data/DataUtils;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist apnTypeToNetworkCapability(I)I
    .registers 1

    .line 0
    sparse-switch p0, :sswitch_data_32

    const/4 p0, -0x1

    return p0

    :sswitch_5
    const/16 p0, 0x1a

    return p0

    :sswitch_8
    const/16 p0, 0x16

    return p0

    :sswitch_b
    const/16 p0, 0x8

    return p0

    :sswitch_e
    const/16 p0, 0x1d

    return p0

    :sswitch_11
    const/16 p0, 0x1f

    return p0

    :sswitch_14
    const/16 p0, 0x1e

    return p0

    :sswitch_17
    const/16 p0, 0x9

    return p0

    :sswitch_1a
    const/16 p0, 0x17

    return p0

    :sswitch_1d
    const/16 p0, 0xa

    return p0

    :sswitch_20
    const/4 p0, 0x7

    return p0

    :sswitch_22
    const/4 p0, 0x5

    return p0

    :sswitch_24
    const/4 p0, 0x4

    return p0

    :sswitch_26
    const/4 p0, 0x3

    return p0

    :sswitch_28
    const/16 p0, 0xc

    return p0

    :sswitch_2b
    const/4 p0, 0x2

    return p0

    :sswitch_2d
    const/4 p0, 0x1

    return p0

    :sswitch_2f
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_32
    .sparse-switch
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_2b
        0x11 -> :sswitch_28
        0x20 -> :sswitch_26
        0x40 -> :sswitch_24
        0x80 -> :sswitch_22
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1d
        0x400 -> :sswitch_1a
        0x800 -> :sswitch_17
        0x1000 -> :sswitch_14
        0x2000 -> :sswitch_11
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_b
        0x10000 -> :sswitch_8
        0x20000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist connectivityTransportToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_3c

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :pswitch_1a
    const-string p0, "SATELLITE"

    return-object p0

    .line 209
    :pswitch_1d
    const-string p0, "THREAD"

    return-object p0

    .line 208
    :pswitch_20
    const-string p0, "USB"

    return-object p0

    .line 207
    :pswitch_23
    const-string p0, "TEST"

    return-object p0

    .line 206
    :pswitch_26
    const-string p0, "LOWPAN"

    return-object p0

    .line 205
    :pswitch_29
    const-string p0, "WIFI_AWARE"

    return-object p0

    .line 204
    :pswitch_2c
    const-string p0, "VPN"

    return-object p0

    .line 203
    :pswitch_2f
    const-string p0, "ETHERNET"

    return-object p0

    .line 202
    :pswitch_32
    const-string p0, "BLUETOOTH"

    return-object p0

    .line 201
    :pswitch_35
    const-string p0, "WIFI"

    return-object p0

    .line 200
    :pswitch_38
    const-string p0, "CELLULAR"

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static blacklist connectivityTransportsToString([I)Ljava/lang/String;
    .registers 2

    .line 186
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, "|"

    .line 187
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist dataActivityToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_48

    const/4 v0, 0x1

    if-eq p0, v0, :cond_45

    const/4 v0, 0x2

    if-eq p0, v0, :cond_42

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3c

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown data activity("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->loge(Ljava/lang/String;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 494
    :cond_3c
    const-string p0, "DORMANT"

    return-object p0

    .line 493
    :cond_3f
    const-string p0, "INOUT"

    return-object p0

    .line 492
    :cond_42
    const-string p0, "OUT"

    return-object p0

    .line 491
    :cond_45
    const-string p0, "IN"

    return-object p0

    .line 490
    :cond_48
    const-string p0, "NONE"

    return-object p0
.end method

.method public static blacklist elapsedTimeToString(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_15

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    add-long/2addr v0, p0

    .line 362
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataUtils;->systemTimeToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 363
    :cond_15
    const-string p0, "never"

    return-object p0
.end method

.method public static blacklist getGroupedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 412
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 413
    new-instance v2, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;

    .line 414
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    .line 415
    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 416
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 417
    invoke-virtual {v4}, Landroid/net/NetworkRequest;->getEnterpriseIds()[I

    move-result-object v4

    .line 416
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    .line 418
    invoke-interface {v4}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 419
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getTransportTypes()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    .line 420
    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    new-instance v3, Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 413
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 422
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;->add(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z

    goto :goto_e

    .line 424
    :cond_74
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 426
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 427
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 429
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static blacklist getNetworkCapabilitiesFromString(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 112
    const-string v0, "(\\s*[a-zA-Z_]+\\s*)(\\|\\s*[a-zA-Z_]+\\s*)*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p0, -0x1

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 115
    :cond_12
    const-string v0, "\\s*\\|\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetworkController$HandoverRule$$ExternalSyntheticLambda1;-><init>()V

    .line 116
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda17;-><init>()V

    .line 117
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 118
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static blacklist getNetworkCapabilityFromString(Ljava/lang/String;)I
    .registers 14

    const/16 v0, 0xc

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 76
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_118

    :goto_1f
    move v10, v11

    goto/16 :goto_e3

    :sswitch_22
    const-string v12, "INTERNET"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2b

    goto :goto_1f

    :cond_2b
    const/16 v10, 0xf

    goto/16 :goto_e3

    :sswitch_2f
    const-string v12, "PRIORITIZE_LATENCY"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_38

    goto :goto_1f

    :cond_38
    const/16 v10, 0xe

    goto/16 :goto_e3

    :sswitch_3c
    const-string v12, "XCAP"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_45

    goto :goto_1f

    :cond_45
    const/16 v10, 0xd

    goto/16 :goto_e3

    :sswitch_49
    const-string v12, "VSIM"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_52

    goto :goto_1f

    :cond_52
    move v10, v0

    goto/16 :goto_e3

    :sswitch_55
    const-string v12, "SUPL"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5e

    goto :goto_1f

    :cond_5e
    const/16 v10, 0xb

    goto/16 :goto_e3

    :sswitch_62
    const-string v12, "FOTA"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6b

    goto :goto_1f

    :cond_6b
    move v10, v1

    goto/16 :goto_e3

    :sswitch_6e
    const-string v12, "EIMS"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_77

    goto :goto_1f

    :cond_77
    move v10, v2

    goto/16 :goto_e3

    :sswitch_7a
    const-string v12, "RCS"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_83

    goto :goto_1f

    :cond_83
    move v10, v3

    goto/16 :goto_e3

    :sswitch_86
    const-string v12, "MMS"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8f

    goto :goto_1f

    :cond_8f
    const/4 v10, 0x7

    goto :goto_e3

    :sswitch_91
    const-string v12, "MCX"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9a

    goto :goto_1f

    :cond_9a
    const/4 v10, 0x6

    goto :goto_e3

    :sswitch_9c
    const-string v12, "IMS"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a6

    goto/16 :goto_1f

    :cond_a6
    move v10, v4

    goto :goto_e3

    :sswitch_a8
    const-string v12, "DUN"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b2

    goto/16 :goto_1f

    :cond_b2
    move v10, v5

    goto :goto_e3

    :sswitch_b4
    const-string v12, "CBS"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_be

    goto/16 :goto_1f

    :cond_be
    move v10, v6

    goto :goto_e3

    :sswitch_c0
    const-string v12, "BIP"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ca

    goto/16 :goto_1f

    :cond_ca
    move v10, v7

    goto :goto_e3

    :sswitch_cc
    const-string v12, "ENTERPRISE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d6

    goto/16 :goto_1f

    :cond_d6
    move v10, v8

    goto :goto_e3

    :sswitch_d8
    const-string v12, "PRIORITIZE_BANDWIDTH"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e2

    goto/16 :goto_1f

    :cond_e2
    move v10, v9

    :goto_e3
    packed-switch v10, :pswitch_data_15a

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal network capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->loge(Ljava/lang/String;)V

    return v11

    :pswitch_fb
    return v0

    :pswitch_fc
    const/16 p0, 0x22

    return p0

    :pswitch_ff
    return v2

    :pswitch_100
    const/16 p0, 0x1e

    return p0

    :pswitch_103
    return v8

    :pswitch_104
    return v6

    :pswitch_105
    return v1

    :pswitch_106
    return v3

    :pswitch_107
    return v9

    :pswitch_108
    const/16 p0, 0x17

    return p0

    :pswitch_10b
    return v5

    :pswitch_10c
    return v7

    :pswitch_10d
    return v4

    :pswitch_10e
    const/16 p0, 0x1f

    return p0

    :pswitch_111
    const/16 p0, 0x1d

    return p0

    :pswitch_114
    const/16 p0, 0x23

    return p0

    nop

    :sswitch_data_118
    .sparse-switch
        -0x1c2137ef -> :sswitch_d8
        -0x12eee09f -> :sswitch_cc
        0x100e9 -> :sswitch_c0
        0x103d4 -> :sswitch_b4
        0x109dd -> :sswitch_a8
        0x11baf -> :sswitch_9c
        0x12982 -> :sswitch_91
        0x12ab3 -> :sswitch_86
        0x13c42 -> :sswitch_7a
        0x20794a -> :sswitch_6e
        0x2104f6 -> :sswitch_62
        0x2703de -> :sswitch_55
        0x2858a1 -> :sswitch_49
        0x29045a -> :sswitch_3c
        0x360eb05e -> :sswitch_2f
        0x50a5b741 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_114
        :pswitch_111
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_100
        :pswitch_ff
        :pswitch_fc
        :pswitch_fb
    .end packed-switch
.end method

.method public static blacklist getTargetTransport(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    return v0
.end method

.method public static blacklist imsFeatureToString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_37

    const/4 v0, 0x2

    if-eq p0, v0, :cond_34

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown IMS feature("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->loge(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :cond_34
    const-string p0, "RCS"

    return-object p0

    .line 386
    :cond_37
    const-string p0, "MMTEL"

    return-object p0
.end method

.method public static blacklist isValidAccessNetwork(I)Z
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist linkStatusToString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_42

    if-eqz p0, :cond_3f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_39

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown link status("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->loge(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 457
    :cond_39
    const-string p0, "ACTIVE"

    return-object p0

    .line 458
    :cond_3c
    const-string p0, "DORMANT"

    return-object p0

    .line 456
    :cond_3f
    const-string p0, "INACTIVE"

    return-object p0

    .line 455
    :cond_42
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 503
    const-string v0, "DataUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist networkCapabilitiesToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_39

    .line 226
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_39

    .line 227
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda1;-><init>()V

    .line 228
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, "|"

    .line 229
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_39
    :goto_39
    const-string p0, ""

    return-object p0
.end method

.method public static blacklist networkCapabilitiesToString([I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 242
    const-string p0, ""

    return-object p0

    .line 243
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/data/DataUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 244
    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, "|"

    .line 245
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist networkCapabilityToApnType(I)I
    .registers 4

    .line 0
    const/4 v0, 0x2

    if-eqz p0, :cond_58

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p0, v1, :cond_57

    if-eq p0, v0, :cond_54

    const/4 v0, 0x3

    if-eq p0, v0, :cond_51

    if-eq p0, v2, :cond_4e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4b

    const/16 v0, 0xc

    if-eq p0, v0, :cond_48

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_45

    const/16 v0, 0x16

    if-eq p0, v0, :cond_42

    const/16 v0, 0x17

    if-eq p0, v0, :cond_3f

    packed-switch p0, :pswitch_data_5a

    packed-switch p0, :pswitch_data_66

    const/4 p0, 0x0

    return p0

    :pswitch_29
    const/16 p0, 0x2000

    return p0

    :pswitch_2c
    const/16 p0, 0x1000

    return p0

    :pswitch_2f
    const/16 p0, 0x4000

    return p0

    :pswitch_32
    const/16 p0, 0x200

    return p0

    :pswitch_35
    const/16 p0, 0x800

    return p0

    :pswitch_38
    const p0, 0x8000

    return p0

    :pswitch_3c
    const/16 p0, 0x100

    return p0

    :cond_3f
    const/16 p0, 0x400

    return p0

    :cond_42
    const/high16 p0, 0x10000

    return p0

    :cond_45
    const/high16 p0, 0x20000

    return p0

    :cond_48
    const/16 p0, 0x11

    return p0

    :cond_4b
    const/16 p0, 0x80

    return p0

    :cond_4e
    const/16 p0, 0x40

    return p0

    :cond_51
    const/16 p0, 0x20

    return p0

    :cond_54
    const/16 p0, 0x8

    return p0

    :cond_57
    return v2

    :cond_58
    return v0

    nop

    :pswitch_data_5a
    .packed-switch 0x7
        :pswitch_3c
        :pswitch_38
        :pswitch_35
        :pswitch_32
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1d
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method public static blacklist networkCapabilityToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_a0

    .line 171
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown network capability("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->loge(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :pswitch_31
    const-string p0, "NOT_BANDWIDTH_CONSTRAINED"

    return-object p0

    .line 168
    :pswitch_34
    const-string p0, "PRIORITIZE_BANDWIDTH"

    return-object p0

    .line 167
    :pswitch_37
    const-string p0, "PRIORITIZE_LATENCY"

    return-object p0

    .line 166
    :pswitch_3a
    const-string p0, "MMTEL"

    return-object p0

    .line 165
    :pswitch_3d
    const-string p0, "HEAD_UNIT"

    return-object p0

    .line 164
    :pswitch_40
    const-string p0, "BIP"

    return-object p0

    .line 163
    :pswitch_43
    const-string p0, "VSIM"

    return-object p0

    .line 162
    :pswitch_46
    const-string p0, "ENTERPRISE"

    return-object p0

    .line 161
    :pswitch_49
    const-string p0, "NOT_VCN_MANAGED"

    return-object p0

    .line 160
    :pswitch_4c
    const-string p0, "VEHICLE_INTERNAL"

    return-object p0

    .line 159
    :pswitch_4f
    const-string p0, "OEM_PRIVATE"

    return-object p0

    .line 158
    :pswitch_52
    const-string p0, "TEMPORARILY_NOT_METERED"

    return-object p0

    .line 156
    :pswitch_55
    const-string p0, "PARTIAL_CONNECTIVITY"

    return-object p0

    .line 155
    :pswitch_58
    const-string p0, "MCX"

    return-object p0

    .line 154
    :pswitch_5b
    const-string p0, "OEM_PAID"

    return-object p0

    .line 153
    :pswitch_5e
    const-string p0, "NOT_SUSPENDED"

    return-object p0

    .line 152
    :pswitch_61
    const-string p0, "NOT_CONGESTED"

    return-object p0

    .line 151
    :pswitch_64
    const-string p0, "FOREGROUND"

    return-object p0

    .line 150
    :pswitch_67
    const-string p0, "NOT_ROAMING"

    return-object p0

    .line 149
    :pswitch_6a
    const-string p0, "CAPTIVE_PORTAL"

    return-object p0

    .line 148
    :pswitch_6d
    const-string p0, "VALIDATED"

    return-object p0

    .line 147
    :pswitch_70
    const-string p0, "NOT_VPN"

    return-object p0

    .line 146
    :pswitch_73
    const-string p0, "TRUSTED"

    return-object p0

    .line 145
    :pswitch_76
    const-string p0, "NOT_RESTRICTED"

    return-object p0

    .line 144
    :pswitch_79
    const-string p0, "INTERNET"

    return-object p0

    .line 143
    :pswitch_7c
    const-string p0, "NOT_METERED"

    return-object p0

    .line 142
    :pswitch_7f
    const-string p0, "EIMS"

    return-object p0

    .line 141
    :pswitch_82
    const-string p0, "XCAP"

    return-object p0

    .line 140
    :pswitch_85
    const-string p0, "RCS"

    return-object p0

    .line 139
    :pswitch_88
    const-string p0, "IA"

    return-object p0

    .line 138
    :pswitch_8b
    const-string p0, "WIFI_P2P"

    return-object p0

    .line 137
    :pswitch_8e
    const-string p0, "CBS"

    return-object p0

    .line 136
    :pswitch_91
    const-string p0, "IMS"

    return-object p0

    .line 135
    :pswitch_94
    const-string p0, "FOTA"

    return-object p0

    .line 134
    :pswitch_97
    const-string p0, "DUN"

    return-object p0

    .line 133
    :pswitch_9a
    const-string p0, "SUPL"

    return-object p0

    .line 132
    :pswitch_9d
    const-string p0, "MMS"

    return-object p0

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_3
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist networkTypeToAccessNetworkType(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_12

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_b
    const/4 p0, 0x4

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_3
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_7
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist systemTimeToString(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_11

    .line 374
    sget-object v0, Lcom/android/internal/telephony/data/DataUtils;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, "never"

    return-object p0
.end method

.method public static blacklist validationStatusToString(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_37

    const/4 v0, 0x2

    if-eq p0, v0, :cond_34

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown validation status("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->loge(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 258
    :cond_34
    const-string p0, "INVALID"

    return-object p0

    .line 257
    :cond_37
    const-string p0, "VALID"

    return-object p0
.end method
