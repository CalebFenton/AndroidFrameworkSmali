.class public final enum Landroid/icu/text/DisplayOptions$NounClass;
.super Ljava/lang/Enum;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NounClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayOptions$NounClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api ANIMATE:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api COMMON:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api FEMININE:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api INANIMATE:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api MASCULINE:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api NEUTER:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api OTHER:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api PERSONAL:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final enum whitelist test-api UNDEFINED:Landroid/icu/text/DisplayOptions$NounClass;

.field public static final whitelist test-api VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/DisplayOptions$NounClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayOptions$NounClass;
    .registers 9

    .line 256
    sget-object v0, Landroid/icu/text/DisplayOptions$NounClass;->UNDEFINED:Landroid/icu/text/DisplayOptions$NounClass;

    sget-object v1, Landroid/icu/text/DisplayOptions$NounClass;->OTHER:Landroid/icu/text/DisplayOptions$NounClass;

    sget-object v2, Landroid/icu/text/DisplayOptions$NounClass;->NEUTER:Landroid/icu/text/DisplayOptions$NounClass;

    sget-object v3, Landroid/icu/text/DisplayOptions$NounClass;->FEMININE:Landroid/icu/text/DisplayOptions$NounClass;

    sget-object v4, Landroid/icu/text/DisplayOptions$NounClass;->MASCULINE:Landroid/icu/text/DisplayOptions$NounClass;

    sget-object v5, Landroid/icu/text/DisplayOptions$NounClass;->ANIMATE:Landroid/icu/text/DisplayOptions$NounClass;

    sget-object v6, Landroid/icu/text/DisplayOptions$NounClass;->INANIMATE:Landroid/icu/text/DisplayOptions$NounClass;

    sget-object v7, Landroid/icu/text/DisplayOptions$NounClass;->PERSONAL:Landroid/icu/text/DisplayOptions$NounClass;

    sget-object v8, Landroid/icu/text/DisplayOptions$NounClass;->COMMON:Landroid/icu/text/DisplayOptions$NounClass;

    filled-new-array/range {v0 .. v8}, [Landroid/icu/text/DisplayOptions$NounClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 261
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/4 v1, 0x0

    const-string v2, "undefined"

    const-string v3, "UNDEFINED"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->UNDEFINED:Landroid/icu/text/DisplayOptions$NounClass;

    .line 264
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/4 v1, 0x1

    const-string v2, "other"

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->OTHER:Landroid/icu/text/DisplayOptions$NounClass;

    .line 267
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/4 v1, 0x2

    const-string v2, "neuter"

    const-string v3, "NEUTER"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->NEUTER:Landroid/icu/text/DisplayOptions$NounClass;

    .line 270
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/4 v1, 0x3

    const-string v2, "feminine"

    const-string v3, "FEMININE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->FEMININE:Landroid/icu/text/DisplayOptions$NounClass;

    .line 273
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/4 v1, 0x4

    const-string v2, "masculine"

    const-string v3, "MASCULINE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->MASCULINE:Landroid/icu/text/DisplayOptions$NounClass;

    .line 276
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/4 v1, 0x5

    const-string v2, "animate"

    const-string v3, "ANIMATE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->ANIMATE:Landroid/icu/text/DisplayOptions$NounClass;

    .line 279
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/4 v1, 0x6

    const-string v2, "inanimate"

    const-string v3, "INANIMATE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->INANIMATE:Landroid/icu/text/DisplayOptions$NounClass;

    .line 282
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/4 v1, 0x7

    const-string v2, "personal"

    const-string v3, "PERSONAL"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->PERSONAL:Landroid/icu/text/DisplayOptions$NounClass;

    .line 285
    new-instance v0, Landroid/icu/text/DisplayOptions$NounClass;

    const/16 v1, 0x8

    const-string v2, "common"

    const-string v3, "COMMON"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$NounClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->COMMON:Landroid/icu/text/DisplayOptions$NounClass;

    .line 256
    invoke-static {}, Landroid/icu/text/DisplayOptions$NounClass;->$values()[Landroid/icu/text/DisplayOptions$NounClass;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->$VALUES:[Landroid/icu/text/DisplayOptions$NounClass;

    .line 297
    invoke-static {}, Landroid/icu/text/DisplayOptions$NounClass;->values()[Landroid/icu/text/DisplayOptions$NounClass;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$NounClass;->VALUES:Ljava/util/List;

    .line 296
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

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput-object p3, p0, Landroid/icu/text/DisplayOptions$NounClass;->identifier:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public static final whitelist test-api fromIdentifier(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$NounClass;
    .registers 4
    .param p0, "identifier"    # Ljava/lang/String;

    .line 311
    if-nez p0, :cond_5

    .line 312
    sget-object v0, Landroid/icu/text/DisplayOptions$NounClass;->UNDEFINED:Landroid/icu/text/DisplayOptions$NounClass;

    return-object v0

    .line 315
    :cond_5
    sget-object v0, Landroid/icu/text/DisplayOptions$NounClass;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DisplayOptions$NounClass;

    .line 316
    .local v1, "nounClass":Landroid/icu/text/DisplayOptions$NounClass;
    invoke-virtual {v1}, Landroid/icu/text/DisplayOptions$NounClass;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 317
    return-object v1

    .line 319
    .end local v1    # "nounClass":Landroid/icu/text/DisplayOptions$NounClass;
    :cond_22
    goto :goto_b

    .line 321
    :cond_23
    sget-object v0, Landroid/icu/text/DisplayOptions$NounClass;->UNDEFINED:Landroid/icu/text/DisplayOptions$NounClass;

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$NounClass;
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

    .line 256
    const-class v0, Landroid/icu/text/DisplayOptions$NounClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayOptions$NounClass;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayOptions$NounClass;
    .registers 1

    .line 256
    sget-object v0, Landroid/icu/text/DisplayOptions$NounClass;->$VALUES:[Landroid/icu/text/DisplayOptions$NounClass;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayOptions$NounClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayOptions$NounClass;

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api getIdentifier()Ljava/lang/String;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/icu/text/DisplayOptions$NounClass;->identifier:Ljava/lang/String;

    return-object v0
.end method
