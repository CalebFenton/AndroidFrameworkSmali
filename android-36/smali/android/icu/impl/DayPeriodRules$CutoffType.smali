.class final enum Landroid/icu/impl/DayPeriodRules$CutoffType;
.super Ljava/lang/Enum;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CutoffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/DayPeriodRules$CutoffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum greylist-max-o AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum greylist-max-o AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum greylist-max-o BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum greylist-max-o FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/DayPeriodRules$CutoffType;
    .registers 4

    .line 59
    sget-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

    sget-object v1, Landroid/icu/impl/DayPeriodRules$CutoffType;->AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

    sget-object v2, Landroid/icu/impl/DayPeriodRules$CutoffType;->FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;

    sget-object v3, Landroid/icu/impl/DayPeriodRules$CutoffType;->AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/impl/DayPeriodRules$CutoffType;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/DayPeriodRules$CutoffType;->fromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    const-string v1, "BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 61
    new-instance v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    const-string v1, "AFTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 62
    new-instance v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    const-string v1, "FROM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 63
    new-instance v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    const-string v1, "AT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 59
    invoke-static {}, Landroid/icu/impl/DayPeriodRules$CutoffType;->$values()[Landroid/icu/impl/DayPeriodRules$CutoffType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->$VALUES:[Landroid/icu/impl/DayPeriodRules$CutoffType;

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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static greylist-max-o fromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 66
    const-string v0, "from"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object v0

    .line 67
    :cond_b
    const-string v0, "before"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object v0

    .line 68
    :cond_16
    const-string v0, "after"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object v0

    .line 69
    :cond_21
    const-string v0, "at"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object v0

    .line 70
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/impl/DayPeriodRules$CutoffType;
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

    .line 59
    const-class v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/impl/DayPeriodRules$CutoffType;
    .registers 1

    .line 59
    sget-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->$VALUES:[Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v0}, [Landroid/icu/impl/DayPeriodRules$CutoffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object v0
.end method
