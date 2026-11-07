.class public final enum Landroid/icu/text/DisplayOptions$GrammaticalCase;
.super Ljava/lang/Enum;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrammaticalCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayOptions$GrammaticalCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api ABLATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api ACCUSATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api COMITATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api DATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api ERGATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api GENITIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api INSTRUMENTAL:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api LOCATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api LOCATIVE_COPULATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api NOMINATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api OBLIQUE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api PREPOSITIONAL:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api SOCIATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final enum whitelist test-api UNDEFINED:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field public static final whitelist test-api VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/DisplayOptions$GrammaticalCase;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum whitelist test-api VOCATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;


# instance fields
.field private final blacklist identifier:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayOptions$GrammaticalCase;
    .registers 15

    .line 522
    sget-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->UNDEFINED:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v1, Landroid/icu/text/DisplayOptions$GrammaticalCase;->ABLATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v2, Landroid/icu/text/DisplayOptions$GrammaticalCase;->ACCUSATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v3, Landroid/icu/text/DisplayOptions$GrammaticalCase;->COMITATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v4, Landroid/icu/text/DisplayOptions$GrammaticalCase;->DATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v5, Landroid/icu/text/DisplayOptions$GrammaticalCase;->ERGATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v6, Landroid/icu/text/DisplayOptions$GrammaticalCase;->GENITIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v7, Landroid/icu/text/DisplayOptions$GrammaticalCase;->INSTRUMENTAL:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v8, Landroid/icu/text/DisplayOptions$GrammaticalCase;->LOCATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v9, Landroid/icu/text/DisplayOptions$GrammaticalCase;->LOCATIVE_COPULATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v10, Landroid/icu/text/DisplayOptions$GrammaticalCase;->NOMINATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v11, Landroid/icu/text/DisplayOptions$GrammaticalCase;->OBLIQUE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v12, Landroid/icu/text/DisplayOptions$GrammaticalCase;->PREPOSITIONAL:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v13, Landroid/icu/text/DisplayOptions$GrammaticalCase;->SOCIATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    sget-object v14, Landroid/icu/text/DisplayOptions$GrammaticalCase;->VOCATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    filled-new-array/range {v0 .. v14}, [Landroid/icu/text/DisplayOptions$GrammaticalCase;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 527
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/4 v1, 0x0

    const-string v2, "undefined"

    const-string v3, "UNDEFINED"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->UNDEFINED:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 531
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/4 v1, 0x1

    const-string v2, "ablative"

    const-string v3, "ABLATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->ABLATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 535
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/4 v1, 0x2

    const-string v2, "accusative"

    const-string v3, "ACCUSATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->ACCUSATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 539
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/4 v1, 0x3

    const-string v2, "comitative"

    const-string v3, "COMITATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->COMITATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 543
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/4 v1, 0x4

    const-string v2, "dative"

    const-string v3, "DATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->DATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 547
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/4 v1, 0x5

    const-string v2, "ergative"

    const-string v3, "ERGATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->ERGATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 551
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/4 v1, 0x6

    const-string v2, "genitive"

    const-string v3, "GENITIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->GENITIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 555
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/4 v1, 0x7

    const-string v2, "instrumental"

    const-string v3, "INSTRUMENTAL"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->INSTRUMENTAL:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 559
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/16 v1, 0x8

    const-string v2, "locative"

    const-string v3, "LOCATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->LOCATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 563
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/16 v1, 0x9

    const-string v2, "locative_copulative"

    const-string v3, "LOCATIVE_COPULATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->LOCATIVE_COPULATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 567
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/16 v1, 0xa

    const-string v2, "nominative"

    const-string v3, "NOMINATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->NOMINATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 571
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/16 v1, 0xb

    const-string v2, "oblique"

    const-string v3, "OBLIQUE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->OBLIQUE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 575
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/16 v1, 0xc

    const-string v2, "prepositional"

    const-string v3, "PREPOSITIONAL"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->PREPOSITIONAL:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 579
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/16 v1, 0xd

    const-string v2, "sociative"

    const-string v3, "SOCIATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->SOCIATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 583
    new-instance v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    const/16 v1, 0xe

    const-string v2, "vocative"

    const-string v3, "VOCATIVE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DisplayOptions$GrammaticalCase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->VOCATIVE:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 522
    invoke-static {}, Landroid/icu/text/DisplayOptions$GrammaticalCase;->$values()[Landroid/icu/text/DisplayOptions$GrammaticalCase;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->$VALUES:[Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 595
    invoke-static {}, Landroid/icu/text/DisplayOptions$GrammaticalCase;->values()[Landroid/icu/text/DisplayOptions$GrammaticalCase;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->VALUES:Ljava/util/List;

    .line 594
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

    .line 587
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 588
    iput-object p3, p0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->identifier:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public static final whitelist test-api fromIdentifier(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$GrammaticalCase;
    .registers 4
    .param p0, "identifier"    # Ljava/lang/String;

    .line 609
    if-nez p0, :cond_5

    .line 610
    sget-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->UNDEFINED:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    return-object v0

    .line 613
    :cond_5
    sget-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 614
    .local v1, "grammaticalCase":Landroid/icu/text/DisplayOptions$GrammaticalCase;
    invoke-virtual {v1}, Landroid/icu/text/DisplayOptions$GrammaticalCase;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 615
    return-object v1

    .line 617
    .end local v1    # "grammaticalCase":Landroid/icu/text/DisplayOptions$GrammaticalCase;
    :cond_22
    goto :goto_b

    .line 619
    :cond_23
    sget-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->UNDEFINED:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayOptions$GrammaticalCase;
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

    .line 522
    const-class v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayOptions$GrammaticalCase;
    .registers 1

    .line 522
    sget-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->$VALUES:[Landroid/icu/text/DisplayOptions$GrammaticalCase;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayOptions$GrammaticalCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayOptions$GrammaticalCase;

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api getIdentifier()Ljava/lang/String;
    .registers 2

    .line 601
    iget-object v0, p0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->identifier:Ljava/lang/String;

    return-object v0
.end method
