.class final enum Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
.super Ljava/lang/Enum;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SettingsParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;",
        ">;",
        "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum greylist-max-o INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum greylist-max-o LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum greylist-max-o SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum greylist-max-o STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;


# direct methods
.method private static synthetic blacklist $values()[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 4

    .line 2569
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    filled-new-array {v0, v1, v2, v3}, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2570
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2571
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "INSENSITIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2572
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "STRICT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2573
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "LENIENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    .line 2569
    invoke-static {}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$values()[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2569
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2569
    const-class v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 1

    .line 2569
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-virtual {v0}, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2577
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 7
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2583
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1a

    goto :goto_19

    .line 2587
    :pswitch_a
    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_19

    .line 2586
    :pswitch_e
    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_19

    .line 2585
    :pswitch_12
    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    goto :goto_19

    .line 2584
    :pswitch_16
    invoke-virtual {p1, v2}, Ljava/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    .line 2589
    :goto_19
    return p3

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2595
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 2601
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2599
    :pswitch_f
    const-string v0, "ParseStrict(false)"

    return-object v0

    .line 2598
    :pswitch_12
    const-string v0, "ParseStrict(true)"

    return-object v0

    .line 2597
    :pswitch_15
    const-string v0, "ParseCaseSensitive(false)"

    return-object v0

    .line 2596
    :pswitch_18
    const-string v0, "ParseCaseSensitive(true)"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method
