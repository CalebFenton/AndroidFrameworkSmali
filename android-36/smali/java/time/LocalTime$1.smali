.class synthetic Ljava/time/LocalTime$1;
.super Ljava/lang/Object;
.source "LocalTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/LocalTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$java$time$temporal$ChronoField:[I

.field static final synthetic blacklist $SwitchMap$java$time$temporal$ChronoUnit:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 1063
    invoke-static {}, Ljava/time/temporal/ChronoUnit;->values()[Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoUnit;->ordinal()I

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
    sget-object v2, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoUnit;->ordinal()I

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
    sget-object v3, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x4

    :try_start_31
    sget-object v4, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v4

    :goto_3d
    const/4 v4, 0x5

    :try_start_3e
    sget-object v5, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v5

    :goto_4a
    const/4 v5, 0x6

    :try_start_4b
    sget-object v6, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v7, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v7}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v6

    :goto_57
    const/4 v6, 0x7

    :try_start_58
    sget-object v7, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v8, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v7

    .line 680
    :goto_64
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    :try_start_6d
    sget-object v7, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v8, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_78

    goto :goto_79

    :catch_78
    move-exception v0

    :goto_79
    :try_start_79
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    move-exception v0

    :goto_85
    :try_start_85
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_8f} :catch_90

    goto :goto_91

    :catch_90
    move-exception v0

    :goto_91
    :try_start_91
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_9c

    goto :goto_9d

    :catch_9c
    move-exception v0

    :goto_9d
    :try_start_9d
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_a8

    goto :goto_a9

    :catch_a8
    move-exception v0

    :goto_a9
    :try_start_a9
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_b4

    goto :goto_b5

    :catch_b4
    move-exception v0

    :goto_b5
    :try_start_b5
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_bf} :catch_c0

    goto :goto_c1

    :catch_c0
    move-exception v0

    :goto_c1
    :try_start_c1
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_cd} :catch_ce

    goto :goto_cf

    :catch_ce
    move-exception v0

    :goto_cf
    :try_start_cf
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_db} :catch_dc

    goto :goto_dd

    :catch_dc
    move-exception v0

    :goto_dd
    :try_start_dd
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e9} :catch_ea

    goto :goto_eb

    :catch_ea
    move-exception v0

    :goto_eb
    :try_start_eb
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_f7} :catch_f8

    goto :goto_f9

    :catch_f8
    move-exception v0

    :goto_f9
    :try_start_f9
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_105
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f9 .. :try_end_105} :catch_106

    goto :goto_107

    :catch_106
    move-exception v0

    :goto_107
    :try_start_107
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_113} :catch_114

    goto :goto_115

    :catch_114
    move-exception v0

    :goto_115
    :try_start_115
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_121
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_121} :catch_122

    goto :goto_123

    :catch_122
    move-exception v0

    :goto_123
    :try_start_123
    sget-object v0, Ljava/time/LocalTime$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_12f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_123 .. :try_end_12f} :catch_130

    goto :goto_131

    :catch_130
    move-exception v0

    :goto_131
    return-void
.end method
