.class public Landroid/icu/text/DisplayOptions$Builder;
.super Ljava/lang/Object;
.source "DisplayOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

.field private blacklist displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

.field private blacklist grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

.field private blacklist nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

.field private blacklist nounClass:Landroid/icu/text/DisplayOptions$NounClass;

.field private blacklist pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

.field private blacklist substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcapitalization(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$Capitalization;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions$Builder;->capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdisplayLength(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$DisplayLength;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions$Builder;->displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetgrammaticalCase(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$GrammaticalCase;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions$Builder;->grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnameStyle(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$NameStyle;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions$Builder;->nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnounClass(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$NounClass;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions$Builder;->nounClass:Landroid/icu/text/DisplayOptions$NounClass;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpluralCategory(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$PluralCategory;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions$Builder;->pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsubstituteHandling(Landroid/icu/text/DisplayOptions$Builder;)Landroid/icu/text/DisplayOptions$SubstituteHandling;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DisplayOptions$Builder;->substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Landroid/icu/text/DisplayOptions$GrammaticalCase;->UNDEFINED:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 142
    sget-object v0, Landroid/icu/text/DisplayOptions$NounClass;->UNDEFINED:Landroid/icu/text/DisplayOptions$NounClass;

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->nounClass:Landroid/icu/text/DisplayOptions$NounClass;

    .line 143
    sget-object v0, Landroid/icu/text/DisplayOptions$PluralCategory;->UNDEFINED:Landroid/icu/text/DisplayOptions$PluralCategory;

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 144
    sget-object v0, Landroid/icu/text/DisplayOptions$Capitalization;->UNDEFINED:Landroid/icu/text/DisplayOptions$Capitalization;

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 145
    sget-object v0, Landroid/icu/text/DisplayOptions$NameStyle;->UNDEFINED:Landroid/icu/text/DisplayOptions$NameStyle;

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

    .line 146
    sget-object v0, Landroid/icu/text/DisplayOptions$DisplayLength;->UNDEFINED:Landroid/icu/text/DisplayOptions$DisplayLength;

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 147
    sget-object v0, Landroid/icu/text/DisplayOptions$SubstituteHandling;->UNDEFINED:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 148
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DisplayOptions-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/DisplayOptions$Builder;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/text/DisplayOptions;)V
    .registers 3
    .param p1, "displayOptions"    # Landroid/icu/text/DisplayOptions;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1}, Landroid/icu/text/DisplayOptions;->-$$Nest$fgetgrammaticalCase(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$GrammaticalCase;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 157
    invoke-static {p1}, Landroid/icu/text/DisplayOptions;->-$$Nest$fgetnounClass(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$NounClass;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->nounClass:Landroid/icu/text/DisplayOptions$NounClass;

    .line 158
    invoke-static {p1}, Landroid/icu/text/DisplayOptions;->-$$Nest$fgetpluralCategory(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$PluralCategory;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 159
    invoke-static {p1}, Landroid/icu/text/DisplayOptions;->-$$Nest$fgetcapitalization(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$Capitalization;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 160
    invoke-static {p1}, Landroid/icu/text/DisplayOptions;->-$$Nest$fgetnameStyle(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$NameStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

    .line 161
    invoke-static {p1}, Landroid/icu/text/DisplayOptions;->-$$Nest$fgetdisplayLength(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$DisplayLength;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 162
    invoke-static {p1}, Landroid/icu/text/DisplayOptions;->-$$Nest$fgetsubstituteHandling(Landroid/icu/text/DisplayOptions;)Landroid/icu/text/DisplayOptions$SubstituteHandling;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DisplayOptions$Builder;->substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 163
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/DisplayOptions;Landroid/icu/text/DisplayOptions-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/text/DisplayOptions$Builder;-><init>(Landroid/icu/text/DisplayOptions;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api build()Landroid/icu/text/DisplayOptions;
    .registers 3

    .line 248
    new-instance v0, Landroid/icu/text/DisplayOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/text/DisplayOptions;-><init>(Landroid/icu/text/DisplayOptions$Builder;Landroid/icu/text/DisplayOptions-IA;)V

    .line 249
    .local v0, "displayOptions":Landroid/icu/text/DisplayOptions;
    return-object v0
.end method

.method public whitelist test-api setCapitalization(Landroid/icu/text/DisplayOptions$Capitalization;)Landroid/icu/text/DisplayOptions$Builder;
    .registers 2
    .param p1, "capitalization"    # Landroid/icu/text/DisplayOptions$Capitalization;

    .line 205
    iput-object p1, p0, Landroid/icu/text/DisplayOptions$Builder;->capitalization:Landroid/icu/text/DisplayOptions$Capitalization;

    .line 206
    return-object p0
.end method

.method public whitelist test-api setDisplayLength(Landroid/icu/text/DisplayOptions$DisplayLength;)Landroid/icu/text/DisplayOptions$Builder;
    .registers 2
    .param p1, "displayLength"    # Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 227
    iput-object p1, p0, Landroid/icu/text/DisplayOptions$Builder;->displayLength:Landroid/icu/text/DisplayOptions$DisplayLength;

    .line 228
    return-object p0
.end method

.method public whitelist test-api setGrammaticalCase(Landroid/icu/text/DisplayOptions$GrammaticalCase;)Landroid/icu/text/DisplayOptions$Builder;
    .registers 2
    .param p1, "grammaticalCase"    # Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 172
    iput-object p1, p0, Landroid/icu/text/DisplayOptions$Builder;->grammaticalCase:Landroid/icu/text/DisplayOptions$GrammaticalCase;

    .line 173
    return-object p0
.end method

.method public whitelist test-api setNameStyle(Landroid/icu/text/DisplayOptions$NameStyle;)Landroid/icu/text/DisplayOptions$Builder;
    .registers 2
    .param p1, "nameStyle"    # Landroid/icu/text/DisplayOptions$NameStyle;

    .line 216
    iput-object p1, p0, Landroid/icu/text/DisplayOptions$Builder;->nameStyle:Landroid/icu/text/DisplayOptions$NameStyle;

    .line 217
    return-object p0
.end method

.method public whitelist test-api setNounClass(Landroid/icu/text/DisplayOptions$NounClass;)Landroid/icu/text/DisplayOptions$Builder;
    .registers 2
    .param p1, "nounClass"    # Landroid/icu/text/DisplayOptions$NounClass;

    .line 183
    iput-object p1, p0, Landroid/icu/text/DisplayOptions$Builder;->nounClass:Landroid/icu/text/DisplayOptions$NounClass;

    .line 184
    return-object p0
.end method

.method public whitelist test-api setPluralCategory(Landroid/icu/text/DisplayOptions$PluralCategory;)Landroid/icu/text/DisplayOptions$Builder;
    .registers 2
    .param p1, "pluralCategory"    # Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 194
    iput-object p1, p0, Landroid/icu/text/DisplayOptions$Builder;->pluralCategory:Landroid/icu/text/DisplayOptions$PluralCategory;

    .line 195
    return-object p0
.end method

.method public whitelist test-api setSubstituteHandling(Landroid/icu/text/DisplayOptions$SubstituteHandling;)Landroid/icu/text/DisplayOptions$Builder;
    .registers 2
    .param p1, "substituteHandling"    # Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 238
    iput-object p1, p0, Landroid/icu/text/DisplayOptions$Builder;->substituteHandling:Landroid/icu/text/DisplayOptions$SubstituteHandling;

    .line 239
    return-object p0
.end method
