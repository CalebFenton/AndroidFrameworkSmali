.class public final Landroid/icu/text/DisplayOptions;
.super Ljava/lang/Object;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DisplayOptions$Builder;,
        Landroid/icu/text/DisplayOptions$GrammaticalCase;,
        Landroid/icu/text/DisplayOptions$NounClass;,
        Landroid/icu/text/DisplayOptions$PluralCategory;,
        Landroid/icu/text/DisplayOptions$Capitalization;,
        Landroid/icu/text/DisplayOptions$NameStyle;,
        Landroid/icu/text/DisplayOptions$DisplayLength;,
        Landroid/icu/text/DisplayOptions$SubstituteHandling;
    }
.end annotation


# instance fields
.field private final blacklist capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

.field private final blacklist displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

.field private final blacklist grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field private final blacklist nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

.field private final blacklist nounClass:Landroid/icu/text/DisplayOptions$NounClass;

.field private final blacklist pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

.field private final blacklist substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcapitalization(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$Capitalization;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions;->capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdisplayLength(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$DisplayLength;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions;->displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetgrammaticalCase(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$GrammaticalCase;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions;->grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnameStyle(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$NameStyle;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions;->nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnounClass(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$NounClass;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions;->nounClass:Landroid/icu/text/DisplayOptions$NounClass;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpluralCategory(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$PluralCategory;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions;->pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsubstituteHandling(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$SubstituteHandling;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions;->substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/icu/text/DisplayOptions$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/icu/text/DisplayOptions$Builder;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/icu/text/DisplayOptions$Builder;->-$$Nest$fgetgrammaticalCase(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$GrammaticalCase;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions;->grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 36
    invoke-static {p1}, Landroid/icu/text/DisplayOptions$Builder;->-$$Nest$fgetnounClass(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$NounClass;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions;->nounClass:Landroid/icu/text/DisplayOptions$NounClass;

    .line 37
    invoke-static {p1}, Landroid/icu/text/DisplayOptions$Builder;->-$$Nest$fgetpluralCategory(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$PluralCategory;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions;->pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 38
    invoke-static {p1}, Landroid/icu/text/DisplayOptions$Builder;->-$$Nest$fgetcapitalization(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$Capitalization;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions;->capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 39
    invoke-static {p1}, Landroid/icu/text/DisplayOptions$Builder;->-$$Nest$fgetnameStyle(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$NameStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions;->nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

    .line 40
    invoke-static {p1}, Landroid/icu/text/DisplayOptions$Builder;->-$$Nest$fgetdisplayLength(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$DisplayLength;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions;->displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 41
    invoke-static {p1}, Landroid/icu/text/DisplayOptions$Builder;->-$$Nest$fgetsubstituteHandling(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$SubstituteHandling;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions;->substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DisplayOptions$Builder;Landroid/icu/text/DisplayOptions-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/DisplayOptions;-><init>(Landroid/icu/text/DisplayOptions$Builder;)V

    return-void
.end method

.method public static whitelist test-api builder()Landroid/icu/text/DisplayOptions$Builder;
    .registers 2

    .line 50
    new-instance v0, Landroid/icu/text/DisplayOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/DisplayOptions$Builder;-><init>(Landroid/icu/text/DisplayOptions-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api copyToBuilder()Landroid/icu/text/DisplayOptions$Builder;
    .registers 3

    .line 59
    new-instance v0, Landroid/icu/text/DisplayOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/text/DisplayOptions$Builder;-><init>(Landroid/icu/text/DisplayOptions;Landroid/icu/text/DisplayOptions-IA;)V

    return-object v0
.end method

.method public whitelist test-api getCapitalization()Landroid/icu/text/DisplayOptions$Capitalization;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/icu/text/DisplayOptions;->capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

    return-object v0
.end method

.method public whitelist test-api getDisplayLength()Landroid/icu/text/DisplayOptions$DisplayLength;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/icu/text/DisplayOptions;->displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

    return-object v0
.end method

.method public whitelist test-api getGrammaticalCase()Landroid/icu/text/DisplayOptions$GrammaticalCase;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/icu/text/DisplayOptions;->grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    return-object v0
.end method

.method public whitelist test-api getNameStyle()Landroid/icu/text/DisplayOptions$NameStyle;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/icu/text/DisplayOptions;->nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

    return-object v0
.end method

.method public whitelist test-api getNounClass()Landroid/icu/text/DisplayOptions$NounClass;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/icu/text/DisplayOptions;->nounClass:Landroid/icu/text/DisplayOptions$NounClass;

    return-object v0
.end method

.method public whitelist test-api getPluralCategory()Landroid/icu/text/DisplayOptions$PluralCategory;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/icu/text/DisplayOptions;->pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

    return-object v0
.end method

.method public whitelist test-api getSubstituteHandling()Landroid/icu/text/DisplayOptions$SubstituteHandling;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/icu/text/DisplayOptions;->substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    return-object v0
.end method
