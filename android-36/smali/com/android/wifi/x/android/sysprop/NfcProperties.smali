.class public final Lcom/android/wifi/x/android/sysprop/NfcProperties;
.super Ljava/lang/Object;
.source "NfcProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifi/x/android/sysprop/NfcProperties$snoop_log_mode_values;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist debug_enabled()Ljava/util/Optional;
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
    const-string v0, "persist.nfc.debug_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist debug_enabled(Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 169
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v1, "persist.nfc.debug_enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
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

    invoke-static {v3}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v3}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v3}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->escape(Ljava/lang/String;)Ljava/lang/String;

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

.method public static blacklist get_caps_supported()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 251
    const-string v0, "ro.nfc.get_caps_supported"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist info_antpos_X()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 221
    const-string v0, "ro.nfc.info.antpos.X"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/android/wifi/x/android/sysprop/NfcProperties$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/wifi/x/android/sysprop/NfcProperties$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist info_antpos_Y()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 226
    const-string v0, "ro.nfc.info.antpos.Y"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/android/wifi/x/android/sysprop/NfcProperties$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/wifi/x/android/sysprop/NfcProperties$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist info_antpos_device_foldable()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 241
    const-string v0, "ro.nfc.info.antpos.device_foldable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist info_antpos_device_height()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 236
    const-string v0, "ro.nfc.info.antpos.device_height"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist info_antpos_device_width()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 231
    const-string v0, "ro.nfc.info.antpos.device_width"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist initialized()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 212
    const-string v0, "nfc.initialized"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist initialized(Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 217
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v1, "nfc.initialized"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method static synthetic blacklist lambda$info_antpos_X$0(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 222
    invoke-static {p0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$info_antpos_Y$1(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 227
    invoke-static {p0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist observe_mode_supported()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 246
    const-string v0, "ro.nfc.observe_mode_supported"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist skipNdefRead()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 203
    const-string v0, "nfc.dta.skip_ndef_read"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "value":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 205
    const-string v1, "NfcProperties"

    const-string v2, "prop nfc.dta.skip_ndef_read doesn\'t exist; fallback to legacy prop nfc.dta.skipNdefRead"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "nfc.dta.skipNdefRead"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_1b
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist snoop_log_mode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wifi/x/android/sysprop/NfcProperties$snoop_log_mode_values;",
            ">;"
        }
    .end annotation

    .line 185
    const-string v0, "persist.nfc.snoop_log_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "value":Ljava/lang/String;
    const-class v1, Lcom/android/wifi/x/android/sysprop/NfcProperties$snoop_log_mode_values;

    invoke-static {v1, v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/wifi/x/android/sysprop/NfcProperties$snoop_log_mode_values;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist snoop_log_mode(Lcom/android/wifi/x/android/sysprop/NfcProperties$snoop_log_mode_values;)V
    .registers 3
    .param p0, "value"    # Lcom/android/wifi/x/android/sysprop/NfcProperties$snoop_log_mode_values;

    .line 190
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/android/wifi/x/android/sysprop/NfcProperties$snoop_log_mode_values;->getPropValue()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v1, "persist.nfc.snoop_log_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
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
    goto :goto_3a

    :sswitch_12
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x3

    goto :goto_3b

    :sswitch_1c
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_3b

    :sswitch_26
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_3b

    :sswitch_30
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    goto :goto_3b

    :goto_3a
    const/4 v1, -0x1

    :goto_3b
    packed-switch v1, :pswitch_data_58

    .line 30
    return-object v0

    .line 28
    :pswitch_3f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 25
    :pswitch_42
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    nop

    :sswitch_data_46
    .sparse-switch
        0x30 -> :sswitch_30
        0x31 -> :sswitch_26
        0x36758e -> :sswitch_1c
        0x5cb1923 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_42
        :pswitch_42
        :pswitch_3f
        :pswitch_3f
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
    invoke-static {p0, v4}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

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

.method public static blacklist vendor_debug_enabled()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 194
    const-string v0, "persist.nfc.vendor_debug_enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/wifi/x/android/sysprop/NfcProperties;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist vendor_debug_enabled(Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 199
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string v1, "persist.nfc.vendor_debug_enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method
