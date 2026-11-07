.class synthetic Ljava/time/Instant$1;
.super Ljava/lang/Object;
.source "Instant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Instant;
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
    .registers 7

    .line 845
    invoke-static {}, Ljava/time/temporal/ChronoUnit;->values()[Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

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
    sget-object v2, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

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
    sget-object v3, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

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
    sget-object v4, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

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
    :try_start_3d
    sget-object v4, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v4

    :goto_4a
    :try_start_4a
    sget-object v4, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v5, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v4

    :goto_57
    :try_start_57
    sget-object v4, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v5, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v4

    :goto_64
    :try_start_64
    sget-object v4, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v4

    .line 555
    :goto_72
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    :try_start_7b
    sget-object v4, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_85} :catch_86

    goto :goto_87

    :catch_86
    move-exception v0

    :goto_87
    :try_start_87
    sget-object v0, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_92

    goto :goto_93

    :catch_92
    move-exception v0

    :goto_93
    :try_start_93
    sget-object v0, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

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
    sget-object v0, Ljava/time/Instant$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_aa

    goto :goto_ab

    :catch_aa
    move-exception v0

    :goto_ab
    return-void
.end method
