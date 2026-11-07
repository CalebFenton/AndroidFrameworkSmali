.class public final enum Landroid/icu/impl/DayPeriodRules$DayPeriod;
.super Ljava/lang/Enum;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DayPeriod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/DayPeriodRules$DayPeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist AFTERNOON1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist AFTERNOON2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist AM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist EVENING1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist EVENING2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist MORNING1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist MORNING2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist NIGHT1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist NIGHT2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum blacklist PM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field public static blacklist VALUES:[Landroid/icu/impl/DayPeriodRules$DayPeriod;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .registers 12

    .line 26
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v1, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v2, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v4, Landroid/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v5, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v6, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v7, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v8, Landroid/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v9, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v10, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v11, Landroid/icu/impl/DayPeriodRules$DayPeriod;->PM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    filled-new-array/range {v0 .. v11}, [Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->fromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "MIDNIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 28
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "NOON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 29
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "MORNING1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 30
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "AFTERNOON1"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 31
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "EVENING1"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 32
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "NIGHT1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 33
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "MORNING2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 34
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "AFTERNOON2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 35
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "EVENING2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 36
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "NIGHT2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 37
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "AM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 38
    new-instance v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    const-string v1, "PM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->PM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 26
    invoke-static {}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->$values()[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->$VALUES:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 40
    invoke-static {}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->values()[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->VALUES:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static greylist-max-o fromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 43
    const-string v0, "midnight"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 44
    :cond_b
    const-string v0, "noon"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 45
    :cond_16
    const-string v0, "morning1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 46
    :cond_21
    const-string v0, "afternoon1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 47
    :cond_2c
    const-string v0, "evening1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 48
    :cond_37
    const-string v0, "night1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 49
    :cond_42
    const-string v0, "morning2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 50
    :cond_4d
    const-string v0, "afternoon2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 51
    :cond_58
    const-string v0, "evening2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 52
    :cond_63
    const-string v0, "night2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 53
    :cond_6e
    const-string v0, "am"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 54
    :cond_79
    const-string v0, "pm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->PM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0

    .line 55
    :cond_84
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/DayPeriodRules$DayPeriod;
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

    .line 26
    const-class v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/DayPeriodRules$DayPeriod;
    .registers 1

    .line 26
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->$VALUES:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v0}, [Landroid/icu/impl/DayPeriodRules$DayPeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0
.end method
