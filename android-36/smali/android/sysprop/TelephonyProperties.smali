.class public final Landroid/sysprop/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist airplane_mode_on()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 164
    const-string/jumbo v0, "persist.radio.airplane_mode_on"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist airplane_mode_on(Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 169
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_10

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "1"

    goto :goto_10

    :cond_e
    const-string v0, "0"

    :goto_10
    const-string/jumbo v1, "persist.radio.airplane_mode_on"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static blacklist baseband_version()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    const-string/jumbo v0, "gsm.version.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist baseband_version(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.version.baseband"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static blacklist call_ring_delay()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 330
    const-string/jumbo v0, "ro.telephony.call_ring.delay"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist cdma_msg_id()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 335
    const-string/jumbo v0, "persist.radio.cdma.msgid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist cdma_msg_id(Ljava/lang/Integer;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Integer;

    .line 340
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "persist.radio.cdma.msgid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public static blacklist current_active_phone()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 238
    const-string/jumbo v0, "gsm.current.phone-type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist current_active_phone(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.current.phone-type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static blacklist data_network_type()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    const-string/jumbo v0, "gsm.network.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist data_network_type(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 288
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.network.type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static blacklist data_roaming()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 403
    const-string/jumbo v0, "ro.com.android.dataroaming"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist default_network()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 398
    const-string/jumbo v0, "ro.telephony.default_network"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist disable_call()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 320
    const-string/jumbo v0, "ro.telephony.disable-call"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ecm_exit_timer()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 301
    const-string/jumbo v0, "ro.cdma.ecmexittimer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist enable_esim_ui_by_default()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 393
    const-string v0, "esim.enable_esim_system_ui_by_default"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 120
    const-string v0, "([\\\\,])"

    const-string v1, "\\\\$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist formatEnumList(Ljava/util/List;Ljava/util/function/Function;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 154
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "elementFormatter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 157
    .local v2, "element":Ljava/lang/Enum;, "TT;"
    if-nez v2, :cond_1c

    const-string v3, ""

    goto :goto_22

    :cond_1c
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :goto_22
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 158
    .end local v2    # "element":Ljava/lang/Enum;, "TT;"
    goto :goto_b

    .line 160
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatList(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 124
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "element":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1a

    const-string v3, ""

    goto :goto_22

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/sysprop/TelephonyProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_22
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 128
    .end local v2    # "element":Ljava/lang/Object;, "TT;"
    goto :goto_b

    .line 130
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatUIntList(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 134
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 137
    .local v2, "element":Ljava/lang/Integer;
    if-nez v2, :cond_1c

    const-string v3, ""

    goto :goto_28

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/sysprop/TelephonyProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_28
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 138
    .end local v2    # "element":Ljava/lang/Integer;
    goto :goto_b

    .line 140
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatULongList(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 144
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 146
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 147
    .local v2, "element":Ljava/lang/Long;
    if-nez v2, :cond_1c

    const-string v3, ""

    goto :goto_28

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/sysprop/TelephonyProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_28
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    .end local v2    # "element":Ljava/lang/Long;
    goto :goto_b

    .line 150
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist icc_operator_alpha()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist icc_operator_alpha(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.sim.operator.alpha"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static blacklist icc_operator_iso_country()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist icc_operator_iso_country(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.sim.operator.iso-country"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static blacklist icc_operator_numeric()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist icc_operator_numeric(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static blacklist ignore_nitz()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 369
    const-string/jumbo v0, "telephony.test.ignore.nitz"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist in_ecm_mode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 292
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist in_ecm_mode(Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 297
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method static synthetic blacklist lambda$baseband_version$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 174
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$current_active_phone$5(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 239
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$data_network_type$10(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 284
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$default_network$14(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 399
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$icc_operator_alpha$8(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 266
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$icc_operator_iso_country$9(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 275
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$icc_operator_numeric$7(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 257
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$operator_alpha$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 188
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$operator_is_roaming$3(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 211
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$operator_iso_country$4(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 220
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$operator_numeric$2(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 197
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$otasp_num_schema$11(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 316
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$sim_state$6(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 248
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$sms_receive$12(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 355
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$sms_send$13(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 360
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist lte_on_cdma_device()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 233
    const-string/jumbo v0, "telephony.lteOnCdmaDevice"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist lte_on_cdma_product_type()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist max_active_modems()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 418
    const-string/jumbo v0, "telephony.active_modems.max_count"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist mobile_data()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 408
    const-string/jumbo v0, "ro.com.android.mobiledata"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist multi_sim_config()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist multi_sim_config(Ljava/lang/String;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 379
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public static blacklist operator_alpha()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    const-string/jumbo v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist operator_alpha(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.operator.alpha"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static blacklist operator_idp_string()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    const-string/jumbo v0, "gsm.operator.idpstring"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist operator_idp_string(Ljava/lang/String;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 311
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.operator.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public static blacklist operator_is_manual()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 205
    const-string/jumbo v0, "operator.ismanual"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist operator_is_roaming()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 210
    const-string/jumbo v0, "gsm.operator.isroaming"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist operator_is_roaming(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.operator.isroaming"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static blacklist operator_iso_country()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    const-string/jumbo v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist operator_iso_country(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.operator.iso-country"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static blacklist operator_numeric()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    const-string/jumbo v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist operator_numeric(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.operator.numeric"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static blacklist otasp_num_schema()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    const-string/jumbo v0, "ro.cdma.otaspnumschema"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist reboot_on_modem_change()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 383
    const-string/jumbo v0, "persist.radio.reboot_on_modem_change"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist reset_on_radio_tech_change()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 349
    const-string/jumbo v0, "persist.radio.reset_on_switch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ril_impl()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    const-string/jumbo v0, "gsm.version.ril-impl"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ril_sends_multiple_call_ring()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 325
    const-string/jumbo v0, "ro.telephony.call_ring.multiple"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sim_slots_count()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 423
    const-string/jumbo v0, "ro.telephony.sim_slots.count"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sim_state()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    const-string/jumbo v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sim_state(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Landroid/sysprop/TelephonyProperties;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "gsm.sim.state"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public static blacklist sms_receive()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 354
    const-string/jumbo v0, "telephony.sms.receive"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sms_send()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 359
    const-string/jumbo v0, "telephony.sms.send"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/sysprop/TelephonyProperties$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, v0}, Landroid/sysprop/TelephonyProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist test_csim()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 364
    const-string/jumbo v0, "persist.radio.test-csim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 22
    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_46

    :cond_11
    goto :goto_3b

    :sswitch_12
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x3

    goto :goto_3c

    :sswitch_1c
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_3c

    :sswitch_27
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_3c

    :sswitch_31
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_3c

    :goto_3b
    const/4 v1, -0x1

    :goto_3c
    packed-switch v1, :pswitch_data_58

    .line 30
    return-object v0

    .line 28
    :pswitch_40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 25
    :pswitch_43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :sswitch_data_46
    .sparse-switch
        0x30 -> :sswitch_31
        0x31 -> :sswitch_27
        0x36758e -> :sswitch_1c
        0x5cb1923 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_43
        :pswitch_43
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method

.method private static blacklist tryParseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 69
    :catch_5
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 80
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 81
    :catch_b
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseEnumList(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 108
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 110
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    .line 113
    .local v4, "element":Ljava/lang/String;
    invoke-static {p0, v4}, Landroid/sysprop/TelephonyProperties;->tryParseEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v4    # "element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 116
    :cond_29
    return-object v0
.end method

.method private static blacklist tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 37
    :catch_5
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 87
    .local p0, "elementParser":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TT;>;"
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 89
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 93
    .local v1, "p":I
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_43

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_43

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_31

    add-int/lit8 v1, v1, 0x1

    .line 96
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_38

    goto :goto_43

    .line 97
    :cond_38
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "p":I
    .local v3, "p":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_19

    .line 99
    .end local v3    # "p":I
    .restart local v1    # "p":I
    :cond_43
    :goto_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_55

    .line 104
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    return-object v0

    .line 101
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_55
    nop

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    .line 102
    goto :goto_14
.end method

.method private static blacklist tryParseLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 53
    :catch_5
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 75
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    move-object v0, p0

    :goto_b
    return-object v0
.end method

.method private static blacklist tryParseUInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 45
    :catch_9
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseULong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 60
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 61
    :catch_9
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist videocall_audio_output()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 388
    const-string/jumbo v0, "persist.radio.call.audio.output"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist wake_lock_timeout()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 344
    const-string/jumbo v0, "ro.ril.wake_lock_timeout"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist wps_info()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 413
    const-string/jumbo v0, "wifidirect.wps"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method
