.class synthetic Ljava/time/LocalDate$1;
.super Ljava/lang/Object;
.source "LocalDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/LocalDate;
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
    .registers 10

    .line 1257
    invoke-static {}, Ljava/time/temporal/ChronoUnit;->values()[Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

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
    sget-object v2, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

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
    sget-object v3, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

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
    sget-object v4, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v5, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

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
    sget-object v5, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

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
    sget-object v6, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v7, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

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
    sget-object v7, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v8, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v7

    :goto_64
    const/16 v7, 0x8

    :try_start_66
    sget-object v8, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v9, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v9}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v8

    .line 602
    :goto_72
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    :try_start_7b
    sget-object v8, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_85} :catch_86

    goto :goto_87

    :catch_86
    move-exception v0

    :goto_87
    :try_start_87
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_92

    goto :goto_93

    :catch_92
    move-exception v0

    :goto_93
    :try_start_93
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_9e

    goto :goto_9f

    :catch_9e
    move-exception v0

    :goto_9f
    :try_start_9f
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_aa

    goto :goto_ab

    :catch_aa
    move-exception v0

    :goto_ab
    :try_start_ab
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b5} :catch_b6

    goto :goto_b7

    :catch_b6
    move-exception v0

    :goto_b7
    :try_start_b7
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_c1} :catch_c2

    goto :goto_c3

    :catch_c2
    move-exception v0

    :goto_c3
    :try_start_c3
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_cd} :catch_ce

    goto :goto_cf

    :catch_ce
    move-exception v0

    :goto_cf
    :try_start_cf
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_da

    goto :goto_db

    :catch_da
    move-exception v0

    :goto_db
    :try_start_db
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e7} :catch_e8

    goto :goto_e9

    :catch_e8
    move-exception v0

    :goto_e9
    :try_start_e9
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f5} :catch_f6

    goto :goto_f7

    :catch_f6
    move-exception v0

    :goto_f7
    :try_start_f7
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_103} :catch_104

    goto :goto_105

    :catch_104
    move-exception v0

    :goto_105
    :try_start_105
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_105 .. :try_end_111} :catch_112

    goto :goto_113

    :catch_112
    move-exception v0

    :goto_113
    :try_start_113
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11f} :catch_120

    goto :goto_121

    :catch_120
    move-exception v0

    :goto_121
    return-void
.end method
