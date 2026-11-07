.class Landroid/icu/message2/DateTimeFormatterFactory;
.super Ljava/lang/Object;
.source "DateTimeFormatterFactory.java"

# interfaces
.implements Landroid/icu/message2/FormatterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;
    }
.end annotation


# static fields
.field private static final blacklist ISO_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist kind:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smparseIso8601(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Landroid/icu/message2/DateTimeFormatterFactory;->parseIso8601(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 382
    const-string v0, "^(([0-9]{4})-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])){1}(T([01][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])(\\.[0-9]{1,3})?(Z|[+-]((0[0-9]|1[0-3]):[0-5][0-9]|14:00))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/message2/DateTimeFormatterFactory;->ISO_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "kind"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    :cond_a
    goto :goto_29

    :sswitch_b
    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_2a

    :sswitch_15
    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_2a

    :sswitch_1f
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_2a

    :goto_29
    const/4 v0, -0x1

    :goto_2a
    packed-switch v0, :pswitch_data_44

    .line 35
    const-string p1, "datetime"

    goto :goto_33

    .line 33
    :pswitch_30
    goto :goto_33

    .line 31
    :pswitch_31
    goto :goto_33

    .line 29
    :pswitch_32
    nop

    .line 37
    :goto_33
    iput-object p1, p0, Landroid/icu/message2/DateTimeFormatterFactory;->kind:Ljava/lang/String;

    .line 38
    return-void

    :sswitch_data_36
    .sparse-switch
        0x2eefae -> :sswitch_1f
        0x3652cd -> :sswitch_15
        0x6ae9bb7b -> :sswitch_b
    .end sparse-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch
.end method

.method private static blacklist getDateFieldOptions(Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 135
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "skeleton":Ljava/lang/StringBuilder;
    const-string v1, "weekday"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "opt":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "short"

    const-string v6, "long"

    const-string v7, "narrow"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v3, :sswitch_data_14a

    :cond_1e
    goto :goto_37

    :sswitch_1f
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v8

    goto :goto_38

    :sswitch_27
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v9

    goto :goto_38

    :sswitch_2f
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v4

    goto :goto_38

    :goto_37
    move v3, v10

    :goto_38
    packed-switch v3, :pswitch_data_158

    goto :goto_4e

    .line 151
    :pswitch_3c
    const-string v3, "EEEEEE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    goto :goto_4e

    .line 148
    :pswitch_42
    const-string v3, "E"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    goto :goto_4e

    .line 145
    :pswitch_48
    const-string v3, "EEEE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    nop

    .line 157
    :goto_4e
    const-string v3, "era"

    invoke-static {p0, v3, v2}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_162

    :cond_5b
    goto :goto_74

    :sswitch_5c
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    move v3, v8

    goto :goto_75

    :sswitch_64
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    move v3, v9

    goto :goto_75

    :sswitch_6c
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    move v3, v4

    goto :goto_75

    :goto_74
    move v3, v10

    :goto_75
    packed-switch v3, :pswitch_data_170

    goto :goto_8b

    .line 166
    :pswitch_79
    const-string v3, "GGGGG"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_8b

    .line 163
    :pswitch_7f
    const-string v3, "G"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    goto :goto_8b

    .line 160
    :pswitch_85
    const-string v3, "GGGG"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    nop

    .line 172
    :goto_8b
    const-string v3, "year"

    invoke-static {p0, v3, v2}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v11, "2-digit"

    const-string v12, "numeric"

    sparse-switch v3, :sswitch_data_17a

    :cond_9c
    goto :goto_ad

    :sswitch_9d
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    move v3, v8

    goto :goto_ae

    :sswitch_a5
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    move v3, v9

    goto :goto_ae

    :goto_ad
    move v3, v10

    :goto_ae
    packed-switch v3, :pswitch_data_184

    goto :goto_be

    .line 178
    :pswitch_b2
    const-string v3, "yy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    goto :goto_be

    .line 175
    :pswitch_b8
    const-string v3, "y"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    nop

    .line 184
    :goto_be
    const-string v3, "month"

    invoke-static {p0, v3, v2}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_18c

    :cond_cb
    goto :goto_f3

    :sswitch_cc
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    const/4 v4, 0x3

    goto :goto_f4

    :sswitch_d4
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    goto :goto_f4

    :sswitch_db
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    const/4 v4, 0x4

    goto :goto_f4

    :sswitch_e3
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    move v4, v8

    goto :goto_f4

    :sswitch_eb
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    move v4, v9

    goto :goto_f4

    :goto_f3
    move v4, v10

    :goto_f4
    packed-switch v4, :pswitch_data_1a2

    goto :goto_116

    .line 199
    :pswitch_f8
    const-string v3, "MMMMM"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    goto :goto_116

    .line 196
    :pswitch_fe
    const-string v3, "MMM"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    goto :goto_116

    .line 193
    :pswitch_104
    const-string v3, "MMMM"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    goto :goto_116

    .line 190
    :pswitch_10a
    const-string v3, "MM"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    goto :goto_116

    .line 187
    :pswitch_110
    const-string v3, "M"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    nop

    .line 205
    :goto_116
    const-string v3, "day"

    invoke-static {p0, v3, v2}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1b0

    :cond_123
    goto :goto_133

    :sswitch_124
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    goto :goto_134

    :sswitch_12b
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    move v8, v9

    goto :goto_134

    :goto_133
    move v8, v10

    :goto_134
    packed-switch v8, :pswitch_data_1ba

    goto :goto_144

    .line 211
    :pswitch_138
    const-string v2, "dd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    goto :goto_144

    .line 208
    :pswitch_13e
    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    nop

    .line 216
    :goto_144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_14a
    .sparse-switch
        -0x3ebe77a5 -> :sswitch_2f
        0x32c67c -> :sswitch_27
        0x685847c -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_48
        :pswitch_42
        :pswitch_3c
    .end packed-switch

    :sswitch_data_162
    .sparse-switch
        -0x3ebe77a5 -> :sswitch_6c
        0x32c67c -> :sswitch_64
        0x685847c -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_85
        :pswitch_7f
        :pswitch_79
    .end packed-switch

    :sswitch_data_17a
    .sparse-switch
        -0x773be4f3 -> :sswitch_a5
        -0x588be02e -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_b2
    .end packed-switch

    :sswitch_data_18c
    .sparse-switch
        -0x773be4f3 -> :sswitch_eb
        -0x588be02e -> :sswitch_e3
        -0x3ebe77a5 -> :sswitch_db
        0x32c67c -> :sswitch_d4
        0x685847c -> :sswitch_cc
    .end sparse-switch

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_110
        :pswitch_10a
        :pswitch_104
        :pswitch_fe
        :pswitch_f8
    .end packed-switch

    :sswitch_data_1b0
    .sparse-switch
        -0x773be4f3 -> :sswitch_12b
        -0x588be02e -> :sswitch_124
    .end sparse-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_13e
        :pswitch_138
    .end packed-switch
.end method

.method private static blacklist getDateTimeStyle(Ljava/util/Map;Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 127
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "opt":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 129
    invoke-static {v0}, Landroid/icu/message2/DateTimeFormatterFactory;->stringToStyle(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 131
    :cond_b
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist getTimeFieldOptions(Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 220
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "skeleton":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 228
    .local v1, "showHour":I
    const-string v2, "hour"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "opt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string v5, "2-digit"

    const-string v6, "numeric"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v4, :sswitch_data_1a6

    :cond_1c
    goto :goto_2d

    :sswitch_1d
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v7

    goto :goto_2e

    :sswitch_25
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v8

    goto :goto_2e

    :goto_2d
    move v4, v9

    :goto_2e
    packed-switch v4, :pswitch_data_1b0

    goto :goto_36

    .line 234
    :pswitch_32
    const/4 v1, 0x2

    .line 235
    goto :goto_36

    .line 231
    :pswitch_34
    const/4 v1, 0x1

    .line 232
    nop

    .line 239
    :goto_36
    const/4 v4, 0x3

    const/4 v10, 0x2

    if-lez v1, :cond_8d

    .line 240
    const-string v11, ""

    .line 241
    .local v11, "hourCycle":Ljava/lang/String;
    const-string v12, "hourCycle"

    invoke-static {p0, v12, v3}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1b8

    :cond_49
    goto :goto_72

    :sswitch_4a
    const-string v12, "h24"

    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    move v12, v4

    goto :goto_73

    :sswitch_54
    const-string v12, "h23"

    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    move v12, v10

    goto :goto_73

    :sswitch_5e
    const-string v12, "h12"

    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    move v12, v7

    goto :goto_73

    :sswitch_68
    const-string v12, "h11"

    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_49

    move v12, v8

    goto :goto_73

    :goto_72
    move v12, v9

    :goto_73
    packed-switch v12, :pswitch_data_1ca

    .line 256
    const-string v11, "j"

    goto :goto_85

    .line 253
    :pswitch_79
    const-string v11, "k"

    .line 254
    goto :goto_85

    .line 250
    :pswitch_7c
    const-string v11, "H"

    .line 251
    goto :goto_85

    .line 247
    :pswitch_7f
    const-string v11, "h"

    .line 248
    goto :goto_85

    .line 244
    :pswitch_82
    const-string v11, "K"

    .line 245
    nop

    .line 258
    :goto_85
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    if-ne v1, v10, :cond_8d

    .line 260
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .end local v11    # "hourCycle":Ljava/lang/String;
    :cond_8d
    const-string v11, "minute"

    invoke-static {p0, v11, v3}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1d6

    :cond_9a
    goto :goto_ab

    :sswitch_9b
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    move v11, v7

    goto :goto_ac

    :sswitch_a3
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    move v11, v8

    goto :goto_ac

    :goto_ab
    move v11, v9

    :goto_ac
    packed-switch v11, :pswitch_data_1e0

    goto :goto_bc

    .line 270
    :pswitch_b0
    const-string v11, "mm"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    goto :goto_bc

    .line 267
    :pswitch_b6
    const-string v11, "m"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    nop

    .line 276
    :goto_bc
    const-string v11, "second"

    invoke-static {p0, v11, v3}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1e8

    :cond_c9
    goto :goto_da

    :sswitch_ca
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    move v5, v7

    goto :goto_db

    :sswitch_d2
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    move v5, v8

    goto :goto_db

    :goto_da
    move v5, v9

    :goto_db
    packed-switch v5, :pswitch_data_1f2

    goto :goto_eb

    .line 282
    :pswitch_df
    const-string v5, "ss"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    goto :goto_eb

    .line 279
    :pswitch_e5
    const-string v5, "s"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    nop

    .line 288
    :goto_eb
    const-string v5, "fractionalSecondDigits"

    invoke-static {p0, v5, v3}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1fa

    :cond_f8
    goto :goto_117

    :pswitch_f9
    const-string v5, "3"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    move v5, v10

    goto :goto_118

    :pswitch_103
    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    move v5, v7

    goto :goto_118

    :pswitch_10d
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    move v5, v8

    goto :goto_118

    :goto_117
    move v5, v9

    :goto_118
    packed-switch v5, :pswitch_data_204

    goto :goto_12e

    .line 297
    :pswitch_11c
    const-string v5, "SSS"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    goto :goto_12e

    .line 294
    :pswitch_122
    const-string v5, "SS"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    goto :goto_12e

    .line 291
    :pswitch_128
    const-string v5, "S"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    nop

    .line 303
    :goto_12e
    const-string v5, "timeZoneName"

    invoke-static {p0, v5, v3}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_20e

    :cond_13b
    goto :goto_177

    :sswitch_13c
    const-string v3, "shortGeneric"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    const/4 v7, 0x4

    goto :goto_178

    :sswitch_146
    const-string v3, "shortOffset"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    move v7, v10

    goto :goto_178

    :sswitch_150
    const-string v3, "short"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    goto :goto_178

    :sswitch_159
    const-string v3, "long"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    move v7, v8

    goto :goto_178

    :sswitch_163
    const-string v3, "longOffset"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    move v7, v4

    goto :goto_178

    :sswitch_16d
    const-string v3, "longGeneric"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    const/4 v7, 0x5

    goto :goto_178

    :goto_177
    move v7, v9

    :goto_178
    packed-switch v7, :pswitch_data_228

    goto :goto_1a0

    .line 321
    :pswitch_17c
    const-string v3, "vvvv"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    goto :goto_1a0

    .line 318
    :pswitch_182
    const-string v3, "v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    goto :goto_1a0

    .line 315
    :pswitch_188
    const-string v3, "OOOO"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    goto :goto_1a0

    .line 312
    :pswitch_18e
    const-string v3, "O"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    goto :goto_1a0

    .line 309
    :pswitch_194
    const-string v3, "zzzz"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    goto :goto_1a0

    .line 306
    :pswitch_19a
    const-string v3, "z"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    nop

    .line 327
    :goto_1a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_1a6
    .sparse-switch
        -0x773be4f3 -> :sswitch_25
        -0x588be02e -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_1b0
    .packed-switch 0x0
        :pswitch_34
        :pswitch_32
    .end packed-switch

    :sswitch_data_1b8
    .sparse-switch
        0x18c88 -> :sswitch_68
        0x18c89 -> :sswitch_5e
        0x18ca9 -> :sswitch_54
        0x18caa -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
    .end packed-switch

    :sswitch_data_1d6
    .sparse-switch
        -0x773be4f3 -> :sswitch_a3
        -0x588be02e -> :sswitch_9b
    .end sparse-switch

    :pswitch_data_1e0
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b0
    .end packed-switch

    :sswitch_data_1e8
    .sparse-switch
        -0x773be4f3 -> :sswitch_d2
        -0x588be02e -> :sswitch_ca
    .end sparse-switch

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_df
    .end packed-switch

    :pswitch_data_1fa
    .packed-switch 0x31
        :pswitch_10d
        :pswitch_103
        :pswitch_f9
    .end packed-switch

    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_128
        :pswitch_122
        :pswitch_11c
    .end packed-switch

    :sswitch_data_20e
    .sparse-switch
        -0x643a2845 -> :sswitch_16d
        -0x2f58b5d1 -> :sswitch_163
        0x32c67c -> :sswitch_159
        0x685847c -> :sswitch_150
        0x3173882f -> :sswitch_146
        0x548159bb -> :sswitch_13c
    .end sparse-switch

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_19a
        :pswitch_194
        :pswitch_18e
        :pswitch_188
        :pswitch_182
        :pswitch_17c
    .end packed-switch
.end method

.method private static blacklist parseIso8601(Ljava/lang/String;)Ljava/lang/Object;
    .registers 23
    .param p0, "text"    # Ljava/lang/String;

    .line 392
    move-object/from16 v0, p0

    sget-object v1, Landroid/icu/message2/DateTimeFormatterFactory;->ISO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 393
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_128

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_128

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_128

    .line 394
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 395
    .local v3, "year":Ljava/lang/Integer;
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 396
    .local v4, "month":Ljava/lang/Integer;
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 397
    .local v6, "day":Ljava/lang/Integer;
    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 398
    .local v7, "hour":Ljava/lang/Integer;
    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 399
    .local v8, "minute":Ljava/lang/Integer;
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 400
    .local v9, "second":Ljava/lang/Integer;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 401
    .local v11, "millisecond":Ljava/lang/Integer;
    const/16 v12, 0x9

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    if-eqz v13, :cond_85

    .line 402
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "000"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "z":Ljava/lang/String;
    invoke-static {v5}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 404
    .end local v11    # "millisecond":Ljava/lang/Integer;
    .local v5, "millisecond":Ljava/lang/Integer;
    goto :goto_89

    .line 405
    .end local v5    # "millisecond":Ljava/lang/Integer;
    .restart local v11    # "millisecond":Ljava/lang/Integer;
    :cond_85
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 407
    .end local v11    # "millisecond":Ljava/lang/Integer;
    .restart local v5    # "millisecond":Ljava/lang/Integer;
    :goto_89
    const/16 v11, 0xa

    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 409
    .local v11, "tzPart":Ljava/lang/String;
    if-nez v7, :cond_9d

    .line 410
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 412
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 415
    :cond_9d
    new-instance v15, Landroid/icu/util/GregorianCalendar;

    .line 416
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v17, v12, -0x1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-direct/range {v15 .. v21}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    .line 417
    .local v15, "gc":Landroid/icu/util/GregorianCalendar;
    const/16 v12, 0xe

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v15, v12, v13}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 419
    if-eqz v11, :cond_125

    .line 420
    const-string v12, "Z"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d7

    .line 421
    sget-object v2, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    invoke-virtual {v15, v2}, Landroid/icu/util/GregorianCalendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    move-object/from16 v16, v1

    goto :goto_127

    .line 423
    :cond_d7
    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e1

    const/4 v12, -0x1

    goto :goto_e2

    :cond_e1
    move v12, v14

    .line 424
    .local v12, "sign":I
    :goto_e2
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v16, v10

    const-string v10, ":"

    invoke-virtual {v13, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 425
    .local v10, "tzParts":[Ljava/lang/String;
    array-length v13, v10

    if-ne v13, v2, :cond_122

    .line 426
    aget-object v2, v10, v16

    invoke-static {v2}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 427
    .local v2, "tzHour":Ljava/lang/Integer;
    aget-object v13, v10, v14

    invoke-static {v13}, Landroid/icu/message2/DateTimeFormatterFactory;->safeParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 428
    .local v13, "tzMin":Ljava/lang/Integer;
    if-eqz v2, :cond_11f

    if-eqz v13, :cond_11f

    .line 429
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int v14, v14, v16

    mul-int/2addr v14, v12

    mul-int/lit8 v14, v14, 0x3c

    mul-int/lit16 v14, v14, 0x3e8

    .line 430
    .local v14, "offset":I
    new-instance v0, Landroid/icu/util/SimpleTimeZone;

    move-object/from16 v16, v1

    .end local v1    # "m":Ljava/util/regex/Matcher;
    .local v16, "m":Ljava/util/regex/Matcher;
    const-string v1, "offset"

    invoke-direct {v0, v14, v1}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v15, v0}, Landroid/icu/util/GregorianCalendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    goto :goto_127

    .line 428
    .end local v14    # "offset":I
    .end local v16    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    :cond_11f
    move-object/from16 v16, v1

    .end local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v16    # "m":Ljava/util/regex/Matcher;
    goto :goto_127

    .line 425
    .end local v2    # "tzHour":Ljava/lang/Integer;
    .end local v13    # "tzMin":Ljava/lang/Integer;
    .end local v16    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    :cond_122
    move-object/from16 v16, v1

    .end local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v16    # "m":Ljava/util/regex/Matcher;
    goto :goto_127

    .line 419
    .end local v10    # "tzParts":[Ljava/lang/String;
    .end local v12    # "sign":I
    .end local v16    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    :cond_125
    move-object/from16 v16, v1

    .line 436
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v16    # "m":Ljava/util/regex/Matcher;
    :goto_127
    return-object v15

    .line 393
    .end local v3    # "year":Ljava/lang/Integer;
    .end local v4    # "month":Ljava/lang/Integer;
    .end local v5    # "millisecond":Ljava/lang/Integer;
    .end local v6    # "day":Ljava/lang/Integer;
    .end local v7    # "hour":Ljava/lang/Integer;
    .end local v8    # "minute":Ljava/lang/Integer;
    .end local v9    # "second":Ljava/lang/Integer;
    .end local v11    # "tzPart":Ljava/lang/String;
    .end local v15    # "gc":Landroid/icu/util/GregorianCalendar;
    .end local v16    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    :cond_128
    move-object/from16 v16, v1

    .line 438
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v16    # "m":Ljava/util/regex/Matcher;
    return-object p0
.end method

.method private static blacklist safeParse(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 386
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 388
    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 387
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist stringToStyle(Ljava/lang/String;)I
    .registers 6
    .param p0, "option"    # Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_56

    :cond_b
    goto :goto_34

    :sswitch_c
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_35

    :sswitch_16
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_35

    :sswitch_20
    const-string v0, "full"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v4

    goto :goto_35

    :sswitch_2a
    const-string v0, "medium"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_35

    :goto_34
    const/4 v0, -0x1

    :goto_35
    packed-switch v0, :pswitch_data_68

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid datetime style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_51
    return v1

    .line 47
    :pswitch_52
    return v2

    .line 45
    :pswitch_53
    return v3

    .line 43
    :pswitch_54
    return v4

    nop

    :sswitch_data_56
    .sparse-switch
        -0x4041708b -> :sswitch_2a
        0x30228f -> :sswitch_20
        0x32c67c -> :sswitch_16
        0x685847c -> :sswitch_c
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
    .end packed-switch
.end method


# virtual methods
.method public blacklist createFormatter(Ljava/util/Locale;Ljava/util/Map;)Landroid/icu/message2/Formatter;
    .registers 16
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/Formatter;"
        }
    .end annotation

    .line 63
    .local p2, "fixedOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, -0x1

    .line 64
    .local v0, "dateStyle":I
    const/4 v1, -0x1

    .line 65
    .local v1, "timeStyle":I
    iget-object v2, p0, Landroid/icu/message2/DateTimeFormatterFactory;->kind:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "datetime"

    const-string v8, "time"

    const-string v9, "date"

    const/4 v10, -0x1

    sparse-switch v3, :sswitch_data_f2

    :cond_15
    goto :goto_2e

    :sswitch_16
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_2f

    :sswitch_1e
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v5

    goto :goto_2f

    :sswitch_26
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v6

    goto :goto_2f

    :goto_2e
    move v2, v10

    :goto_2f
    const-string v3, "style"

    packed-switch v2, :pswitch_data_100

    .line 74
    const-string v2, "dateStyle"

    invoke-static {p2, v2}, Landroid/icu/message2/DateTimeFormatterFactory;->getDateTimeStyle(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 75
    const-string v2, "timeStyle"

    invoke-static {p2, v2}, Landroid/icu/message2/DateTimeFormatterFactory;->getDateTimeStyle(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    goto :goto_4b

    .line 70
    :pswitch_41
    invoke-static {p2, v3}, Landroid/icu/message2/DateTimeFormatterFactory;->getDateTimeStyle(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    .line 71
    goto :goto_4b

    .line 67
    :pswitch_46
    invoke-static {p2, v3}, Landroid/icu/message2/DateTimeFormatterFactory;->getDateTimeStyle(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    .line 68
    nop

    .line 80
    :goto_4b
    const/4 v2, 0x0

    if-ne v0, v10, :cond_e8

    if-ne v1, v10, :cond_e8

    .line 81
    const-string v3, ""

    .line 82
    .local v3, "skeleton":Ljava/lang/String;
    iget-object v11, p0, Landroid/icu/message2/DateTimeFormatterFactory;->kind:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_108

    :cond_5b
    goto :goto_74

    :sswitch_5c
    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5b

    move v11, v4

    goto :goto_75

    :sswitch_64
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5b

    move v11, v5

    goto :goto_75

    :sswitch_6c
    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5b

    move v11, v6

    goto :goto_75

    :goto_74
    move v11, v10

    :goto_75
    packed-switch v11, :pswitch_data_116

    .line 91
    invoke-static {p2}, Landroid/icu/message2/DateTimeFormatterFactory;->getDateFieldOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 92
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p2}, Landroid/icu/message2/DateTimeFormatterFactory;->getTimeFieldOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9c

    .line 87
    :pswitch_92
    invoke-static {p2}, Landroid/icu/message2/DateTimeFormatterFactory;->getTimeFieldOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 88
    goto :goto_9c

    .line 84
    :pswitch_97
    invoke-static {p2}, Landroid/icu/message2/DateTimeFormatterFactory;->getDateFieldOptions(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 85
    nop

    .line 96
    :goto_9c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_aa

    .line 98
    const-string v11, "icu:skeleton"

    const-string v12, ""

    invoke-static {p2, v11, v12}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    :cond_aa
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_ba

    .line 101
    invoke-static {v3, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v4

    .line 102
    .local v4, "df":Landroid/icu/text/DateFormat;
    new-instance v5, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;

    invoke-direct {v5, p1, v4, v2}, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;-><init>(Ljava/util/Locale;Landroid/icu/text/DateFormat;Landroid/icu/message2/DateTimeFormatterFactory-IA;)V

    return-object v5

    .line 106
    .end local v4    # "df":Landroid/icu/text/DateFormat;
    :cond_ba
    iget-object v11, p0, Landroid/icu/message2/DateTimeFormatterFactory;->kind:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_11e

    :cond_c3
    goto :goto_db

    :sswitch_c4
    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    goto :goto_dc

    :sswitch_cb
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    move v4, v5

    goto :goto_dc

    :sswitch_d3
    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    move v4, v6

    goto :goto_dc

    :goto_db
    move v4, v10

    :goto_dc
    packed-switch v4, :pswitch_data_12c

    .line 117
    const/4 v0, 0x3

    .line 118
    const/4 v1, 0x3

    goto :goto_e8

    .line 112
    :pswitch_e2
    const/4 v0, -0x1

    .line 113
    const/4 v1, 0x3

    .line 114
    goto :goto_e8

    .line 108
    :pswitch_e5
    const/4 v0, 0x3

    .line 109
    const/4 v1, -0x1

    .line 110
    nop

    .line 122
    .end local v3    # "skeleton":Ljava/lang/String;
    :cond_e8
    :goto_e8
    invoke-static {v0, v1, p1}, Landroid/icu/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 123
    .local v3, "df":Landroid/icu/text/DateFormat;
    new-instance v4, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;

    invoke-direct {v4, p1, v3, v2}, Landroid/icu/message2/DateTimeFormatterFactory$DateTimeFormatter;-><init>(Ljava/util/Locale;Landroid/icu/text/DateFormat;Landroid/icu/message2/DateTimeFormatterFactory-IA;)V

    return-object v4

    :sswitch_data_f2
    .sparse-switch
        0x2eefae -> :sswitch_26
        0x3652cd -> :sswitch_1e
        0x6ae9bb7b -> :sswitch_16
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_46
        :pswitch_41
    .end packed-switch

    :sswitch_data_108
    .sparse-switch
        0x2eefae -> :sswitch_6c
        0x3652cd -> :sswitch_64
        0x6ae9bb7b -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_97
        :pswitch_92
    .end packed-switch

    :sswitch_data_11e
    .sparse-switch
        0x2eefae -> :sswitch_d3
        0x3652cd -> :sswitch_cb
        0x6ae9bb7b -> :sswitch_c4
    .end sparse-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_e2
    .end packed-switch
.end method
