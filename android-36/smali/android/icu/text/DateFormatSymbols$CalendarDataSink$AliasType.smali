.class final enum Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
.super Ljava/lang/Enum;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormatSymbols$CalendarDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AliasType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum greylist-max-o DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum greylist-max-o GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum greylist-max-o NONE:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum greylist-max-o SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .registers 4

    .line 1917
    sget-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    sget-object v3, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1918
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const-string v1, "SAME_CALENDAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1919
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const-string v1, "DIFFERENT_CALENDAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1920
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const-string v1, "GREGORIAN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1921
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1917
    invoke-static {}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->$values()[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->$VALUES:[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

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

    .line 1917
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
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

    .line 1917
    const-class v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .registers 1

    .line 1917
    sget-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->$VALUES:[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    invoke-virtual {v0}, [Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object v0
.end method
