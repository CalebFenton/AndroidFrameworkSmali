.class public Landroid/icu/impl/personname/PersonNameFormatterImpl;
.super Ljava/lang/Object;
.source "PersonNameFormatterImpl.java"


# static fields
.field static final blacklist NON_DEFAULT_SCRIPTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist capitalizeSurname:Z

.field private final blacklist displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

.field private final blacklist foreignSpaceReplacement:Ljava/lang/String;

.field private final blacklist formality:Landroid/icu/text/PersonNameFormatter$Formality;

.field private final blacklist gnFirstLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist gnFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

.field private final blacklist initialPattern:Ljava/lang/String;

.field private final blacklist initialSequencePattern:Ljava/lang/String;

.field private final blacklist length:Landroid/icu/text/PersonNameFormatter$Length;

.field private final blacklist locale:Ljava/util/Locale;

.field private final blacklist nativeSpaceReplacement:Ljava/lang/String;

.field private final blacklist snFirstLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist snFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

.field private final blacklist usage:Landroid/icu/text/PersonNameFormatter$Usage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 209
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "Hira"

    const-string v2, "Kana"

    const-string v3, "Hani"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->NON_DEFAULT_SCRIPTS:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/PersonNameFormatter$Length;Landroid/icu/text/PersonNameFormatter$Usage;Landroid/icu/text/PersonNameFormatter$Formality;Landroid/icu/text/PersonNameFormatter$DisplayOrder;Z)V
    .registers 16
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "length"    # Landroid/icu/text/PersonNameFormatter$Length;
    .param p3, "usage"    # Landroid/icu/text/PersonNameFormatter$Usage;
    .param p4, "formality"    # Landroid/icu/text/PersonNameFormatter$Formality;
    .param p5, "displayOrder"    # Landroid/icu/text/PersonNameFormatter$DisplayOrder;
    .param p6, "surnameAllCaps"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->length:Landroid/icu/text/PersonNameFormatter$Length;

    .line 51
    iput-object p3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->usage:Landroid/icu/text/PersonNameFormatter$Usage;

    .line 52
    iput-object p4, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->formality:Landroid/icu/text/PersonNameFormatter$Formality;

    .line 53
    iput-object p5, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 54
    iput-boolean p6, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->capitalizeSurname:Z

    .line 57
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 58
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    iput-object p1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->locale:Ljava/util/Locale;

    .line 59
    const-string v1, "personNames/initialPattern/initial"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->initialPattern:Ljava/lang/String;

    .line 60
    const-string v1, "personNames/initialPattern/initialSequence"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->initialSequencePattern:Ljava/lang/String;

    .line 61
    const-string v1, "personNames/foreignSpaceReplacement"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->foreignSpaceReplacement:Ljava/lang/String;

    .line 62
    const-string v1, "personNames/nativeSpaceReplacement"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->nativeSpaceReplacement:Ljava/lang/String;

    .line 65
    sget-object v1, Landroid/icu/text/PersonNameFormatter$Usage;->MONOGRAM:Landroid/icu/text/PersonNameFormatter$Usage;

    if-ne p3, v1, :cond_3e

    .line 68
    sget-object p5, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->DEFAULT:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    goto :goto_44

    .line 69
    :cond_3e
    sget-object v1, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->SORTING:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    if-ne p5, v1, :cond_44

    .line 72
    sget-object p3, Landroid/icu/text/PersonNameFormatter$Usage;->REFERRING:Landroid/icu/text/PersonNameFormatter$Usage;

    .line 78
    :cond_44
    :goto_44
    const-string v1, "personNames/namePattern/"

    .line 79
    .local v1, "RESOURCE_PATH_PREFIX":Ljava/lang/String;
    sget-object v2, Landroid/icu/text/PersonNameFormatter$Length;->DEFAULT:Landroid/icu/text/PersonNameFormatter$Length;

    if-eq p2, v2, :cond_53

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_59

    .line 80
    :cond_53
    const-string v2, "personNames/parameterDefault/length"

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_59
    nop

    .line 81
    .local v2, "lengthStr":Ljava/lang/String;
    sget-object v3, Landroid/icu/text/PersonNameFormatter$Formality;->DEFAULT:Landroid/icu/text/PersonNameFormatter$Formality;

    if-eq p4, v3, :cond_67

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_6d

    .line 82
    :cond_67
    const-string v3, "personNames/parameterDefault/formality"

    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_6d
    nop

    .line 83
    .local v3, "formalityStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "resourceNameBody":Ljava/lang/String;
    sget-object v5, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->SORTING:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    if-eq p5, v5, :cond_108

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "personNames/namePattern/givenFirst-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    .line 86
    .local v5, "gnFirstResource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "personNames/namePattern/surnameFirst-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v6

    .line 88
    .local v6, "snFirstResource":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {p0, v5}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->asStringArray(Landroid/icu/impl/ICUResourceBundle;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p0}, Landroid/icu/impl/personname/PersonNamePattern;->makePatterns([Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)[Landroid/icu/impl/personname/PersonNamePattern;

    move-result-object v7

    iput-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    .line 89
    invoke-direct {p0, v6}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->asStringArray(Landroid/icu/impl/ICUResourceBundle;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p0}, Landroid/icu/impl/personname/PersonNamePattern;->makePatterns([Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)[Landroid/icu/impl/personname/PersonNamePattern;

    move-result-object v7

    iput-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    .line 91
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstLocales:Ljava/util/Set;

    .line 92
    iget-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstLocales:Ljava/util/Set;

    const-string v8, "personNames/nameOrderLocales/givenFirst"

    invoke-virtual {v0, v8}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->asStringArray(Landroid/icu/impl/ICUResourceBundle;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 93
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstLocales:Ljava/util/Set;

    .line 94
    iget-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstLocales:Ljava/util/Set;

    const-string v8, "personNames/nameOrderLocales/surnameFirst"

    invoke-virtual {v0, v8}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->asStringArray(Landroid/icu/impl/ICUResourceBundle;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 95
    .end local v5    # "gnFirstResource":Landroid/icu/impl/ICUResourceBundle;
    .end local v6    # "snFirstResource":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_130

    .line 96
    :cond_108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "personNames/namePattern/sorting-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    .line 98
    .local v5, "patternResource":Landroid/icu/impl/ICUResourceBundle;
    invoke-direct {p0, v5}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->asStringArray(Landroid/icu/impl/ICUResourceBundle;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Landroid/icu/impl/personname/PersonNamePattern;->makePatterns([Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)[Landroid/icu/impl/personname/PersonNamePattern;

    move-result-object v6

    iput-object v6, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    .line 99
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    .line 100
    iput-object v6, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstLocales:Ljava/util/Set;

    .line 101
    iput-object v6, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstLocales:Ljava/util/Set;

    .line 103
    .end local v5    # "patternResource":Landroid/icu/impl/ICUResourceBundle;
    :goto_130
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "gnFirstPatterns"    # [Ljava/lang/String;
    .param p3, "snFirstPatterns"    # [Ljava/lang/String;
    .param p4, "gnFirstLocales"    # [Ljava/lang/String;
    .param p5, "snFirstLocales"    # [Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Length;->MEDIUM:Landroid/icu/text/PersonNameFormatter$Length;

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->length:Landroid/icu/text/PersonNameFormatter$Length;

    .line 111
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Usage;->REFERRING:Landroid/icu/text/PersonNameFormatter$Usage;

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->usage:Landroid/icu/text/PersonNameFormatter$Usage;

    .line 112
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Formality;->FORMAL:Landroid/icu/text/PersonNameFormatter$Formality;

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->formality:Landroid/icu/text/PersonNameFormatter$Formality;

    .line 113
    sget-object v0, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->DEFAULT:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    .line 114
    const-string v0, "{0}."

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->initialPattern:Ljava/lang/String;

    .line 115
    const-string v0, "{0} {1}"

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->initialSequencePattern:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->capitalizeSurname:Z

    .line 117
    const-string v0, " "

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->foreignSpaceReplacement:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->nativeSpaceReplacement:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->locale:Ljava/util/Locale;

    .line 122
    invoke-static {p2, p0}, Landroid/icu/impl/personname/PersonNamePattern;->makePatterns([Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)[Landroid/icu/impl/personname/PersonNamePattern;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    .line 123
    const/4 v0, 0x0

    if-eqz p3, :cond_34

    invoke-static {p3, p0}, Landroid/icu/impl/personname/PersonNamePattern;->makePatterns([Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)[Landroid/icu/impl/personname/PersonNamePattern;

    move-result-object v1

    goto :goto_35

    :cond_34
    move-object v1, v0

    :goto_35
    iput-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    .line 124
    if-eqz p4, :cond_46

    .line 125
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstLocales:Ljava/util/Set;

    .line 126
    iget-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstLocales:Ljava/util/Set;

    invoke-static {v1, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_48

    .line 128
    :cond_46
    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstLocales:Ljava/util/Set;

    .line 130
    :goto_48
    if-eqz p5, :cond_57

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstLocales:Ljava/util/Set;

    .line 132
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstLocales:Ljava/util/Set;

    invoke-static {v0, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_59

    .line 134
    :cond_57
    iput-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstLocales:Ljava/util/Set;

    .line 136
    :goto_59
    return-void
.end method

.method private blacklist asStringArray(Landroid/icu/impl/ICUResourceBundle;)[Ljava/lang/String;
    .registers 5
    .param p1, "resource"    # Landroid/icu/impl/ICUResourceBundle;

    .line 218
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v0

    if-nez v0, :cond_f

    .line 219
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    :cond_f
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    .line 221
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 223
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported resource type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist formattingLocaleExists(Ljava/util/Locale;)Z
    .registers 8
    .param p1, "formattingLocale"    # Ljava/util/Locale;

    .line 434
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "formattingLanguage":Ljava/lang/String;
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string v3, "android/icu/impl/data/icudata"

    invoke-static {v3, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 436
    .local v1, "mainRB":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_20

    .line 437
    return v3

    .line 440
    :cond_20
    const-string v2, "personNames/nameOrderLocales/givenFirst"

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 441
    .local v2, "gnFirstResource":Landroid/icu/impl/ICUResourceBundle;
    const-string v4, "personNames/nameOrderLocales/surnameFirst"

    invoke-virtual {v1, v4}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    .line 443
    .local v4, "snFirstResource":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    :cond_48
    const/4 v3, 0x1

    :cond_49
    return v3
.end method

.method private blacklist getBestPattern([Landroid/icu/impl/personname/PersonNamePattern;Landroid/icu/text/PersonName;)Landroid/icu/impl/personname/PersonNamePattern;
    .registers 11
    .param p1, "patterns"    # [Landroid/icu/impl/personname/PersonNamePattern;
    .param p2, "name"    # Landroid/icu/text/PersonName;

    .line 305
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 306
    aget-object v0, p1, v2

    return-object v0

    .line 311
    :cond_8
    const/4 v0, 0x0

    .line 312
    .local v0, "maxPopulatedFields":I
    const v1, 0x7fffffff

    .line 313
    .local v1, "minEmptyFields":I
    const/4 v3, 0x0

    .line 315
    .local v3, "bestPattern":Landroid/icu/impl/personname/PersonNamePattern;
    array-length v4, p1

    :goto_e
    if-ge v2, v4, :cond_29

    aget-object v5, p1, v2

    .line 316
    .local v5, "pattern":Landroid/icu/impl/personname/PersonNamePattern;
    invoke-virtual {v5, p2}, Landroid/icu/impl/personname/PersonNamePattern;->numPopulatedFields(Landroid/icu/text/PersonName;)I

    move-result v6

    .line 317
    .local v6, "populatedFields":I
    invoke-virtual {v5, p2}, Landroid/icu/impl/personname/PersonNamePattern;->numEmptyFields(Landroid/icu/text/PersonName;)I

    move-result v7

    .line 318
    .local v7, "emptyFields":I
    if-le v6, v0, :cond_20

    .line 319
    move v0, v6

    .line 320
    move v1, v7

    .line 321
    move-object v3, v5

    goto :goto_26

    .line 322
    :cond_20
    if-ne v6, v0, :cond_26

    if-ge v7, v1, :cond_26

    .line 323
    move v1, v7

    .line 324
    move-object v3, v5

    .line 315
    .end local v5    # "pattern":Landroid/icu/impl/personname/PersonNamePattern;
    .end local v6    # "populatedFields":I
    .end local v7    # "emptyFields":I
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 327
    :cond_29
    return-object v3
.end method

.method private blacklist getNameLocale(Landroid/icu/text/PersonName;)Ljava/util/Locale;
    .registers 5
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 400
    invoke-interface {p1}, Landroid/icu/text/PersonName;->getNameLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getNameScript(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->newLocaleWithScript(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getNameScript(Landroid/icu/text/PersonName;)Ljava/lang/String;
    .registers 11
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 342
    sget-object v0, Landroid/icu/text/PersonName$NameField;->SURNAME:Landroid/icu/text/PersonName$NameField;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/icu/text/PersonName;->getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "givenName":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/PersonName$NameField;->GIVEN:Landroid/icu/text/PersonName$NameField;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/icu/text/PersonName;->getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "surname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    if-eqz v1, :cond_1f

    move-object v4, v1

    goto :goto_20

    :cond_1f
    move-object v4, v3

    :goto_20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_27

    move-object v3, v0

    :cond_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "nameText":Ljava/lang/String;
    const/16 v3, 0x67

    .line 346
    .local v3, "stringScript":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    const/16 v5, 0x67

    if-ne v3, v5, :cond_4f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4f

    .line 347
    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 348
    .local v6, "c":I
    invoke-static {v6}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v7

    .line 349
    .local v7, "charScript":I
    if-eqz v7, :cond_4c

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4c

    if-eq v7, v5, :cond_4c

    .line 350
    move v3, v7

    .line 346
    .end local v6    # "c":I
    .end local v7    # "charScript":I
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 353
    .end local v4    # "i":I
    :cond_4f
    invoke-static {v3}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private blacklist localesMatch(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 9
    .param p1, "nameLocale"    # Ljava/util/Locale;
    .param p2, "formatterLocale"    # Ljava/util/Locale;

    .line 450
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "nameLanguage":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "formatterLanguage":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    .line 454
    return v3

    .line 459
    :cond_10
    const-string v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "zh"

    if-nez v4, :cond_20

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_20
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_2f

    .line 463
    :cond_2d
    const/4 v2, 0x0

    return v2

    .line 460
    :cond_2f
    :goto_2f
    return v3
.end method

.method private blacklist nameIsGnFirst(Landroid/icu/text/PersonName;)Z
    .registers 12
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 236
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    sget-object v1, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->FORCE_GIVEN_FIRST:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 237
    return v2

    .line 238
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    sget-object v1, Landroid/icu/text/PersonNameFormatter$DisplayOrder;->FORCE_SURNAME_FIRST:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_10

    .line 239
    return v3

    .line 243
    :cond_10
    invoke-interface {p1}, Landroid/icu/text/PersonName;->getPreferredOrder()Landroid/icu/text/PersonName$PreferredOrder;

    move-result-object v0

    sget-object v1, Landroid/icu/text/PersonName$PreferredOrder;->GIVEN_FIRST:Landroid/icu/text/PersonName$PreferredOrder;

    if-ne v0, v1, :cond_19

    .line 244
    return v2

    .line 245
    :cond_19
    invoke-interface {p1}, Landroid/icu/text/PersonName;->getPreferredOrder()Landroid/icu/text/PersonName$PreferredOrder;

    move-result-object v0

    sget-object v1, Landroid/icu/text/PersonName$PreferredOrder;->SURNAME_FIRST:Landroid/icu/text/PersonName$PreferredOrder;

    if-ne v0, v1, :cond_22

    .line 246
    return v3

    .line 252
    :cond_22
    invoke-interface {p1}, Landroid/icu/text/PersonName;->getNameLocale()Ljava/util/Locale;

    move-result-object v0

    .line 253
    .local v0, "nameLocale":Ljava/util/Locale;
    if-nez v0, :cond_2c

    .line 254
    invoke-direct {p0, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getNameLocale(Landroid/icu/text/PersonName;)Ljava/util/Locale;

    move-result-object v0

    .line 260
    :cond_2c
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 261
    .local v1, "nameULocale":Landroid/icu/util/ULocale;
    sget-object v4, Landroid/icu/impl/personname/PersonNameFormatterImpl;->NON_DEFAULT_SCRIPTS:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 262
    new-instance v4, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v4}, Landroid/icu/util/ULocale$Builder;-><init>()V

    .line 263
    .local v4, "builder":Landroid/icu/util/ULocale$Builder;
    invoke-virtual {v4, v1}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    .line 264
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 265
    invoke-virtual {v4}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 269
    .end local v4    # "builder":Landroid/icu/util/ULocale$Builder;
    :cond_50
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "localeStr":Ljava/lang/String;
    move-object v5, v4

    .line 271
    .local v5, "origLocaleStr":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "languageCode":Ljava/lang/String;
    :cond_59
    iget-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstLocales:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 276
    return v2

    .line 277
    :cond_62
    iget-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstLocales:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 278
    return v3

    .line 284
    :cond_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "und"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "undStr":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstLocales:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 286
    return v2

    .line 287
    :cond_8d
    iget-object v8, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstLocales:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 288
    return v3

    .line 295
    :cond_96
    sget-object v8, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v4, v5, v8}, Landroid/icu/impl/ICUResourceBundle;->getParentLocaleID(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/ICUResourceBundle$OpenType;)Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, "parentLocaleStr":Ljava/lang/String;
    if-eqz v8, :cond_a0

    move-object v9, v8

    goto :goto_a1

    :cond_a0
    move-object v9, v6

    :goto_a1
    move-object v4, v9

    .line 297
    .end local v7    # "undStr":Ljava/lang/String;
    .end local v8    # "parentLocaleStr":Ljava/lang/String;
    if-nez v4, :cond_59

    .line 300
    return v2
.end method

.method private blacklist nameScriptMatchesLocale(Ljava/lang/String;Ljava/util/Locale;)Z
    .registers 12
    .param p1, "nameScriptID"    # Ljava/lang/String;
    .param p2, "formatterLocale"    # Ljava/util/Locale;

    .line 408
    const-string v0, "Zzzz"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 409
    return v1

    .line 412
    :cond_a
    invoke-static {p2}, Landroid/icu/lang/UScript;->getCode(Ljava/util/Locale;)[I

    move-result-object v0

    .line 413
    .local v0, "localeScripts":[I
    invoke-static {p1}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v2

    .line 415
    .local v2, "nameScript":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_2e

    aget v6, v0, v5

    .line 416
    .local v6, "localeScript":I
    if-eq v6, v2, :cond_2d

    const/16 v7, 0x49

    const/16 v8, 0x11

    if-ne v6, v7, :cond_23

    if-eq v2, v8, :cond_2d

    :cond_23
    const/16 v7, 0x4a

    if-ne v6, v7, :cond_2a

    if-ne v2, v8, :cond_2a

    goto :goto_2d

    .line 415
    .end local v6    # "localeScript":I
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 417
    .restart local v6    # "localeScript":I
    :cond_2d
    :goto_2d
    return v1

    .line 420
    .end local v6    # "localeScript":I
    :cond_2e
    return v4
.end method

.method private blacklist newLocaleWithScript(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .registers 8
    .param p1, "oldLocale"    # Ljava/util/Locale;
    .param p2, "scriptCode"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    .line 361
    const-string v0, "Zzzz"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 362
    return-object p1

    .line 365
    :cond_9
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 366
    .local v0, "builder":Ljava/util/Locale$Builder;
    if-eqz p1, :cond_21

    .line 367
    move-object v1, p1

    .line 368
    .local v1, "workingLocale":Ljava/util/Locale;
    invoke-virtual {v0, p1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    .line 369
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    .local v2, "localeScript":Ljava/lang/String;
    goto :goto_60

    .line 371
    .end local v1    # "workingLocale":Ljava/util/Locale;
    .end local v2    # "localeScript":Ljava/lang/String;
    :cond_21
    new-instance v1, Landroid/icu/util/ULocale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "und_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 372
    .local v1, "tmpLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 373
    new-instance v2, Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v2

    .line 374
    .local v2, "workingLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "localeScript":Ljava/lang/String;
    if-eqz p3, :cond_5e

    .line 377
    invoke-virtual {v0, p3}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 384
    .end local v1    # "tmpLocale":Landroid/icu/util/ULocale;
    :cond_5e
    move-object v1, v2

    move-object v2, v3

    .end local v3    # "localeScript":Ljava/lang/String;
    .local v1, "workingLocale":Ljava/util/Locale;
    .local v2, "localeScript":Ljava/lang/String;
    :goto_60
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-direct {p0, p2, v1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->nameScriptMatchesLocale(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 385
    move-object p2, v2

    .line 388
    :cond_6d
    invoke-virtual {v0, p2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    .line 389
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public blacklist formatToString(Landroid/icu/text/PersonName;)Ljava/lang/String;
    .registers 12
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 146
    invoke-direct {p0, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getNameLocale(Landroid/icu/text/PersonName;)Ljava/util/Locale;

    move-result-object v0

    .line 147
    .local v0, "nameLocale":Ljava/util/Locale;
    invoke-direct {p0, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getNameScript(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "nameScript":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->nameScriptMatchesLocale(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 151
    invoke-direct {p0, v0}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->formattingLocaleExists(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 152
    move-object v2, v0

    move-object v4, v2

    .local v2, "newFormattingLocale":Ljava/util/Locale;
    goto :goto_23

    .line 154
    .end local v2    # "newFormattingLocale":Ljava/util/Locale;
    :cond_19
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->newLocaleWithScript(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    move-object v4, v2

    .line 156
    .local v4, "newFormattingLocale":Ljava/util/Locale;
    :goto_23
    new-instance v3, Landroid/icu/impl/personname/PersonNameFormatterImpl;

    iget-object v5, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->length:Landroid/icu/text/PersonNameFormatter$Length;

    iget-object v6, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->usage:Landroid/icu/text/PersonNameFormatter$Usage;

    iget-object v7, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->formality:Landroid/icu/text/PersonNameFormatter$Formality;

    iget-object v8, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    iget-boolean v9, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->capitalizeSurname:Z

    invoke-direct/range {v3 .. v9}, Landroid/icu/impl/personname/PersonNameFormatterImpl;-><init>(Ljava/util/Locale;Landroid/icu/text/PersonNameFormatter$Length;Landroid/icu/text/PersonNameFormatter$Usage;Landroid/icu/text/PersonNameFormatter$Formality;Landroid/icu/text/PersonNameFormatter$DisplayOrder;Z)V

    .line 158
    .local v3, "nameLocaleFormatter":Landroid/icu/impl/personname/PersonNameFormatterImpl;
    invoke-virtual {v3, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->formatToString(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 161
    .end local v3    # "nameLocaleFormatter":Landroid/icu/impl/personname/PersonNameFormatterImpl;
    .end local v4    # "newFormattingLocale":Ljava/util/Locale;
    :cond_37
    const/4 v2, 0x0

    .line 164
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    if-eqz v3, :cond_4e

    invoke-direct {p0, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->nameIsGnFirst(Landroid/icu/text/PersonName;)Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_4e

    .line 167
    :cond_43
    iget-object v3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->snFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    invoke-direct {p0, v3, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getBestPattern([Landroid/icu/impl/personname/PersonNamePattern;Landroid/icu/text/PersonName;)Landroid/icu/impl/personname/PersonNamePattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/icu/impl/personname/PersonNamePattern;->format(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v2

    goto :goto_58

    .line 165
    :cond_4e
    :goto_4e
    iget-object v3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->gnFirstPatterns:[Landroid/icu/impl/personname/PersonNamePattern;

    invoke-direct {p0, v3, p1}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->getBestPattern([Landroid/icu/impl/personname/PersonNamePattern;Landroid/icu/text/PersonName;)Landroid/icu/impl/personname/PersonNamePattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/icu/impl/personname/PersonNamePattern;->format(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v2

    .line 174
    :goto_58
    iget-object v3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->nativeSpaceReplacement:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->foreignSpaceReplacement:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 175
    :cond_6a
    iget-object v3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->localesMatch(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 176
    iget-object v3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->nativeSpaceReplacement:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7f

    .line 178
    :cond_79
    iget-object v3, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->foreignSpaceReplacement:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_7f
    :goto_7f
    return-object v2
.end method

.method public blacklist getDisplayOrder()Landroid/icu/text/PersonNameFormatter$DisplayOrder;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    return-object v0
.end method

.method public blacklist getFormality()Landroid/icu/text/PersonNameFormatter$Formality;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->formality:Landroid/icu/text/PersonNameFormatter$Formality;

    return-object v0
.end method

.method public blacklist getInitialPattern()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->initialPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInitialSequencePattern()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->initialSequencePattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLength()Landroid/icu/text/PersonNameFormatter$Length;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->length:Landroid/icu/text/PersonNameFormatter$Length;

    return-object v0
.end method

.method public blacklist getLocale()Ljava/util/Locale;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist getSurnameAllCaps()Z
    .registers 2

    .line 195
    iget-boolean v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->capitalizeSurname:Z

    return v0
.end method

.method public blacklist getUsage()Landroid/icu/text/PersonNameFormatter$Usage;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->usage:Landroid/icu/text/PersonNameFormatter$Usage;

    return-object v0
.end method

.method public blacklist shouldCapitalizeSurname()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->capitalizeSurname:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonNameFormatter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->displayOrder:Landroid/icu/text/PersonNameFormatter$DisplayOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->length:Landroid/icu/text/PersonNameFormatter$Length;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->usage:Landroid/icu/text/PersonNameFormatter$Usage;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->formality:Landroid/icu/text/PersonNameFormatter$Formality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/personname/PersonNameFormatterImpl;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
