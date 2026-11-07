.class public final enum Landroid/icu/text/DisplayOptions$PluralCategory;
.super Ljava/lang/Enum;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluralCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayOptions$PluralCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayOptions$PluralCategory;

.field public static final enum whitelist test-api FEW:Landroid/icu/text/DisplayOptions$PluralCategory;

.field public static final enum whitelist test-api MANY:Landroid/icu/text/DisplayOptions$PluralCategory;

.field public static final enum whitelist test-api ONE:Landroid/icu/text/DisplayOptions$PluralCategory;

.field public static final enum whitelist test-api OTHER:Landroid/icu/text/DisplayOptions$PluralCategory;

.field public static final enum whitelist test-api TWO:Landroid/icu/text/DisplayOptions$PluralCategory;

.field public static final enum whitelist test-api UNDEFINED:Landroid/icu/text/DisplayOptions$PluralCategory;

.field public static final whitelist test-api VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/DisplayOptions$PluralCategory;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum whitelist test-api ZERO:Landroid/icu/text/DisplayOptions$PluralCategory;


# instance fields
.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayOptions$PluralCategory;
    .registers 7

    .line 450
    sget-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->UNDEFINED:Landroid/icu/text/DisplayOptions$PluralCategory;

    sget-object v1, Landroid/icu/text/DisplayOptions$PluralCategory;->ZERO:Landroid/icu/text/DisplayOptions$PluralCategory;

    sget-object v2, Landroid/icu/text/DisplayOptions$PluralCategory;->ONE:Landroid/icu/text/DisplayOptions$PluralCategory;

    sget-object v3, Landroid/icu/text/DisplayOptions$PluralCategory;->TWO:Landroid/icu/text/DisplayOptions$PluralCategory;

    sget-object v4, Landroid/icu/text/DisplayOptions$PluralCategory;->FEW:Landroid/icu/text/DisplayOptions$PluralCategory;

    sget-object v5, Landroid/icu/text/DisplayOptions$PluralCategory;->MANY:Landroid/icu/text/DisplayOptions$PluralCategory;

    sget-object v6, Landroid/icu/text/DisplayOptions$PluralCategory;->OTHER:Landroid/icu/text/DisplayOptions$PluralCategory;

    filled-new-array/range {v0 .. v6}, [Landroid/icu/text/DisplayOptions$PluralCategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 455
    new-instance v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    const/4 v1, 0x0

    const-string v2, "undefined"

    const-string v3, "UNDEFINED"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$PluralCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->UNDEFINED:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 459
    new-instance v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    const/4 v1, 0x1

    const-string v2, "zero"

    const-string v3, "ZERO"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$PluralCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->ZERO:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 463
    new-instance v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    const/4 v1, 0x2

    const-string v2, "one"

    const-string v3, "ONE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$PluralCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->ONE:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 467
    new-instance v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    const/4 v1, 0x3

    const-string v2, "two"

    const-string v3, "TWO"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$PluralCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->TWO:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 471
    new-instance v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    const/4 v1, 0x4

    const-string v2, "few"

    const-string v3, "FEW"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$PluralCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->FEW:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 475
    new-instance v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    const/4 v1, 0x5

    const-string v2, "many"

    const-string v3, "MANY"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$PluralCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->MANY:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 479
    new-instance v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    const/4 v1, 0x6

    const-string v2, "other"

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$PluralCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->OTHER:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 450
    invoke-static {}, Landroid/icu/text/DisplayOptions$PluralCategory;->$values()[Landroid/icu/text/DisplayOptions$PluralCategory;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->$VALUES:[Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 491
    invoke-static {}, Landroid/icu/text/DisplayOptions$PluralCategory;->values()[Landroid/icu/text/DisplayOptions$PluralCategory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->VALUES:Ljava/util/List;

    .line 490
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 483
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 484
    iput-object p3, p0, Landroid/icu/text/DisplayOptions$PluralCategory;->identifier:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public static final whitelist test-api fromIdentifier(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$PluralCategory;
    .registers 4
    .param p0, "identifier"    # Ljava/lang/String;

    .line 505
    if-nez p0, :cond_5

    .line 506
    sget-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->UNDEFINED:Landroid/icu/text/DisplayOptions$PluralCategory;

    return-object v0

    .line 509
    :cond_5
    sget-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 510
    .local v1, "pluralCategory":Landroid/icu/text/DisplayOptions$PluralCategory;
    invoke-virtual {v1}, Landroid/icu/text/DisplayOptions$PluralCategory;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 511
    return-object v1

    .line 513
    .end local v1    # "pluralCategory":Landroid/icu/text/DisplayOptions$PluralCategory;
    :cond_22
    goto :goto_b

    .line 515
    :cond_23
    sget-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->UNDEFINED:Landroid/icu/text/DisplayOptions$PluralCategory;

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$PluralCategory;
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

    .line 450
    const-class v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayOptions$PluralCategory;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayOptions$PluralCategory;
    .registers 1

    .line 450
    sget-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->$VALUES:[Landroid/icu/text/DisplayOptions$PluralCategory;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayOptions$PluralCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayOptions$PluralCategory;

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api getIdentifier()Ljava/lang/String;
    .registers 2

    .line 497
    iget-object v0, p0, Landroid/icu/text/DisplayOptions$PluralCategory;->identifier:Ljava/lang/String;

    return-object v0
.end method
