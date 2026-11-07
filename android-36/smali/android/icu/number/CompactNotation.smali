.class public Landroid/icu/number/CompactNotation;
.super Landroid/icu/number/Notation;
.source "CompactNotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/CompactNotation$CompactHandler;
    }
.end annotation


# instance fields
.field final blacklist compactCustomData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final blacklist compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V
    .registers 3
    .param p1, "compactStyle"    # Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 52
    invoke-direct {p0}, Landroid/icu/number/Notation;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Landroid/icu/number/CompactNotation;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    .local p1, "compactCustomData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/icu/number/Notation;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/number/CompactNotation;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 59
    iput-object p1, p0, Landroid/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public static blacklist forCustomData(Ljava/util/Map;)Landroid/icu/number/CompactNotation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/icu/number/CompactNotation;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    .local p0, "compactCustomData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Landroid/icu/number/CompactNotation;

    invoke-direct {v0, p0}, Landroid/icu/number/CompactNotation;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method blacklist withLocaleData(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;ZLandroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;
    .registers 18
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nsName"    # Ljava/lang/String;
    .param p3, "compactType"    # Landroid/icu/impl/number/CompactData$CompactType;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;
    .param p5, "buildReference"    # Landroid/icu/impl/number/MutablePatternModifier;
    .param p6, "safe"    # Z
    .param p7, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 71
    new-instance v0, Landroid/icu/number/CompactNotation$CompactHandler;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Landroid/icu/number/CompactNotation$CompactHandler;-><init>(Landroid/icu/number/CompactNotation;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;ZLandroid/icu/impl/number/MicroPropsGenerator;Landroid/icu/number/CompactNotation-IA;)V

    return-object v0
.end method
