.class synthetic Ljava/time/Year$1;
.super Ljava/lang/Object;
.source "Year.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Year;
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
    .registers 6

    .line 704
    invoke-static {}, Ljava/time/temporal/ChronoUnit;->values()[Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

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
    sget-object v2, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

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
    sget-object v3, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v4, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    :try_start_30
    sget-object v3, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoUnit;->ordinal()I

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
    sget-object v3, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    sget-object v4, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v3

    .line 493
    :goto_4a
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    :try_start_53
    sget-object v3, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    move-exception v0

    :goto_5f
    :try_start_5f
    sget-object v0, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v0

    :goto_6b
    :try_start_6b
    sget-object v0, Ljava/time/Year$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_76

    goto :goto_77

    :catch_76
    move-exception v0

    :goto_77
    return-void
.end method
