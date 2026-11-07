.class final enum Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
.super Ljava/lang/Enum;
.source "LocaleValidityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/LocaleValidityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SpecialCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum blacklist anything:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum blacklist codepoints:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum blacklist normal:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum blacklist reorder:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum blacklist rgKey:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum blacklist subdivision:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .registers 6

    .line 125
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->normal:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    sget-object v1, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->anything:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    sget-object v2, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->reorder:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    sget-object v3, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->codepoints:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    sget-object v4, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->subdivision:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    sget-object v5, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->rgKey:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 126
    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->normal:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v1, "anything"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->anything:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v1, "reorder"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->reorder:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v1, "codepoints"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->codepoints:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v1, "subdivision"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->subdivision:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const-string v1, "rgKey"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->rgKey:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    .line 125
    invoke-static {}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->$values()[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->$VALUES:[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

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

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist get(Ljava/lang/String;)Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 128
    const-string v0, "kr"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->reorder:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0

    .line 130
    :cond_b
    const-string v0, "vt"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 131
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->codepoints:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0

    .line 132
    :cond_16
    const-string v0, "sd"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 133
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->subdivision:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0

    .line 134
    :cond_21
    const-string v0, "rg"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 135
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->rgKey:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0

    .line 136
    :cond_2c
    const-string v0, "x0"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 137
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->anything:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0

    .line 139
    :cond_37
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->normal:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
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

    .line 125
    const-class v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .registers 1

    .line 125
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->$VALUES:[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0
.end method
