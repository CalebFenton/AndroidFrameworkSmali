.class public Landroid/icu/impl/locale/LocaleValidityChecker;
.super Ljava/lang/Object;
.source "LocaleValidityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/LocaleValidityChecker$Where;,
        Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    }
.end annotation


# static fields
.field static final blacklist REGULAR_ONLY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist REORDERING_EXCLUDE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist REORDERING_INCLUDE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist SEPARATOR:Ljava/util/regex/Pattern;

.field private static final blacklist VALID_X:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist allowsDeprecated:Z

.field private final blacklist datasubtypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 69
    const-string v0, "[-_]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker;->SEPARATOR:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "[a-zA-Z0-9]{2,8}(-[a-zA-Z0-9]{2,8})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker;->VALID_X:Ljava/util/regex/Pattern;

    .line 296
    new-instance v0, Ljava/util/HashSet;

    const-string v6, "others"

    const-string v7, "zzzz"

    const-string v1, "space"

    const-string v2, "punct"

    const-string v3, "symbol"

    const-string v4, "currency"

    const-string v5, "digit"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker;->REORDERING_INCLUDE:Ljava/util/Set;

    .line 297
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "zinh"

    const-string v2, "zyyy"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker;->REORDERING_EXCLUDE:Ljava/util/Set;

    .line 298
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->regular:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker;->REGULAR_ONLY:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "datasubtypes":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/ValidIdentifiers$Datasubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    .line 54
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/impl/locale/LocaleValidityChecker;->allowsDeprecated:Z

    .line 55
    return-void
.end method

.method public varargs constructor blacklist <init>([Landroid/icu/impl/ValidIdentifiers$Datasubtype;)V
    .registers 4
    .param p1, "datasubtypes"    # [Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    .line 59
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/impl/locale/LocaleValidityChecker;->allowsDeprecated:Z

    .line 60
    return-void
.end method

.method private blacklist isScriptReorder(Ljava/lang/String;)Z
    .registers 6
    .param p1, "subtag"    # Ljava/lang/String;

    .line 304
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker;->REORDERING_INCLUDE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 306
    return v1

    .line 307
    :cond_e
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker;->REORDERING_EXCLUDE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 308
    return v2

    .line 310
    :cond_18
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->script:Landroid/icu/impl/ValidIdentifiers$Datatype;

    sget-object v3, Landroid/icu/impl/locale/LocaleValidityChecker;->REGULAR_ONLY:Ljava/util/Set;

    invoke-static {v0, v3, p1}, Landroid/icu/impl/ValidIdentifiers;->isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    return v1
.end method

.method private blacklist isSubdivision(Landroid/icu/util/ULocale;Ljava/lang/String;)Z
    .registers 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "subtag"    # Ljava/lang/String;

    .line 276
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_9

    .line 277
    return v1

    .line 279
    :cond_9
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x2

    :goto_13
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "subdivision":Ljava/lang/String;
    sget-object v3, Landroid/icu/impl/ValidIdentifiers$Datatype;->subdivision:Landroid/icu/impl/ValidIdentifiers$Datatype;

    iget-object v4, p0, Landroid/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    invoke-static {v3, v4, v0, v2}, Landroid/icu/impl/ValidIdentifiers;->isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 282
    return v1

    .line 285
    :cond_2a
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "localeRegion":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 287
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v4

    .line 288
    .local v4, "max":Landroid/icu/util/ULocale;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 290
    .end local v4    # "max":Landroid/icu/util/ULocale;
    :cond_3c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 291
    return v1

    .line 293
    :cond_43
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z
    .registers 6
    .param p1, "datatype"    # Landroid/icu/impl/ValidIdentifiers$Datatype;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "where"    # Landroid/icu/impl/locale/LocaleValidityChecker$Where;

    .line 344
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 345
    return v1

    .line 357
    :cond_8
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->variant:Landroid/icu/impl/ValidIdentifiers$Datatype;

    if-ne p1, v0, :cond_15

    const-string v0, "posix"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 358
    return v1

    .line 361
    :cond_15
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ValidIdentifiers;->isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/util/Set;Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 362
    goto :goto_26

    :cond_1e
    if-nez p3, :cond_22

    const/4 v1, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {p3, p1, p2}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    .line 361
    :goto_26
    return v1
.end method

.method private blacklist isValidLocale(Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z
    .registers 8
    .param p1, "extensionString"    # Ljava/lang/String;
    .param p2, "where"    # Landroid/icu/impl/locale/LocaleValidityChecker$Where;

    .line 326
    :try_start_0
    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/icu/util/ULocale$Builder;->setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 327
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValid(Landroid/icu/util/ULocale;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v1
    :try_end_11
    .catch Landroid/icu/util/IllformedLocaleException; {:try_start_0 .. :try_end_11} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return v1

    .line 332
    .end local v0    # "locale":Landroid/icu/util/ULocale;
    :catch_12
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datatype;->t:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v0

    .line 329
    .local v0, "e":Landroid/icu/util/IllformedLocaleException;
    invoke-virtual {v0}, Landroid/icu/util/IllformedLocaleException;->getErrorIndex()I

    move-result v1

    .line 330
    .local v1, "startIndex":I
    sget-object v2, Landroid/icu/impl/locale/LocaleValidityChecker;->SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "list":[Ljava/lang/String;
    sget-object v3, Landroid/icu/impl/ValidIdentifiers$Datatype;->t:Landroid/icu/impl/ValidIdentifiers$Datatype;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p2, v3, v4}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private blacklist isValidU(Landroid/icu/util/ULocale;Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z
    .registers 27
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "datatype"    # Landroid/icu/impl/ValidIdentifiers$Datatype;
    .param p3, "extensionString"    # Ljava/lang/String;
    .param p4, "where"    # Landroid/icu/impl/locale/LocaleValidityChecker$Where;

    .line 152
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v0, ""

    .line 153
    .local v0, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 154
    .local v4, "typeCount":I
    const/4 v5, 0x0

    .line 155
    .local v5, "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    const/4 v6, 0x0

    .line 156
    .local v6, "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v7, "prefix":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 159
    .local v8, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Landroid/icu/impl/ValidIdentifiers$Datatype;->t:Landroid/icu/impl/ValidIdentifiers$Datatype;

    if-ne v2, v9, :cond_1f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_20

    :cond_1f
    const/4 v9, 0x0

    .line 163
    .local v9, "tBuffer":Ljava/lang/StringBuilder;
    :goto_20
    sget-object v10, Landroid/icu/impl/locale/LocaleValidityChecker;->SEPARATOR:Ljava/util/regex/Pattern;

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    move v14, v4

    move-object v4, v0

    move v0, v14

    const/4 v14, 0x0

    .local v0, "typeCount":I
    .local v4, "key":Ljava/lang/String;
    :goto_2d
    if-ge v14, v12, :cond_219

    const/16 v16, 0x0

    aget-object v13, v10, v14

    .line 164
    .local v13, "subtag":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    move/from16 v18, v0

    .end local v0    # "typeCount":I
    .local v18, "typeCount":I
    const/4 v0, 0x2

    if-ne v15, v0, :cond_87

    if-eqz v9, :cond_47

    .line 165
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0x39

    if-gt v15, v0, :cond_87

    .line 167
    :cond_47
    if-eqz v9, :cond_5b

    .line 169
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValidLocale(Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 170
    return v16

    .line 172
    :cond_5a
    const/4 v9, 0x0

    .line 174
    :cond_5b
    invoke-static {v13}, Landroid/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .end local v4    # "key":Ljava/lang/String;
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_66

    .line 176
    invoke-virtual {v3, v2, v13}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 178
    :cond_66
    iget-boolean v4, v1, Landroid/icu/impl/locale/LocaleValidityChecker;->allowsDeprecated:Z

    if-nez v4, :cond_75

    invoke-static {v0}, Landroid/icu/impl/locale/KeyTypeData;->isDeprecated(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 179
    invoke-virtual {v3, v2, v0}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 181
    :cond_75
    invoke-static {v0}, Landroid/icu/impl/locale/KeyTypeData;->getValueType(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v4

    .line 182
    .end local v5    # "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .local v4, "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    invoke-static {v0}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->get(Ljava/lang/String;)Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    move-result-object v5

    .line 183
    .end local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .local v5, "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    const/4 v6, 0x0

    move-object/from16 v21, v4

    move-object v4, v0

    move v0, v6

    move-object v6, v5

    move-object/from16 v5, v21

    .end local v18    # "typeCount":I
    .local v6, "typeCount":I
    goto/16 :goto_215

    .line 184
    .end local v0    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    .local v5, "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .local v6, "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v18    # "typeCount":I
    :cond_87
    const/16 v0, 0x2d

    if-eqz v9, :cond_9b

    .line 185
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eqz v15, :cond_94

    .line 186
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_94
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v18

    goto/16 :goto_215

    .line 190
    :cond_9b
    add-int/lit8 v15, v18, 0x1

    .line 191
    .end local v18    # "typeCount":I
    .local v15, "typeCount":I
    sget-object v18, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$ValueType:[I

    invoke-virtual {v5}, Landroid/icu/impl/locale/KeyTypeData$ValueType;->ordinal()I

    move-result v19

    aget v18, v18, v19

    move-object/from16 v19, v5

    .end local v5    # "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .local v19, "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    const-string v5, "-"

    packed-switch v18, :pswitch_data_236

    goto :goto_eb

    .line 207
    :pswitch_ad
    const/4 v0, 0x1

    if-ne v15, v0, :cond_eb

    .line 208
    invoke-interface {v8}, Ljava/util/Set;->clear()V

    goto :goto_eb

    .line 198
    :pswitch_b4
    const/4 v0, 0x1

    if-ne v15, v0, :cond_c0

    .line 199
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 200
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_eb

    .line 202
    :cond_c0
    const/16 v0, 0x2d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 205
    goto :goto_eb

    .line 193
    :pswitch_ce
    const/4 v0, 0x1

    if-le v15, v0, :cond_eb

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 214
    :cond_eb
    :goto_eb
    invoke-virtual {v6}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->ordinal()I

    move-result v0

    move/from16 v17, v0

    const-string v0, "zzzz"

    packed-switch v17, :pswitch_data_240

    .line 251
    move-object/from16 v20, v6

    .end local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .local v20, "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    new-instance v0, Landroid/icu/util/Output;

    invoke-direct {v0}, Landroid/icu/util/Output;-><init>()V

    .line 252
    .local v0, "isKnownKey":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    new-instance v6, Landroid/icu/util/Output;

    invoke-direct {v6}, Landroid/icu/util/Output;-><init>()V

    .line 253
    .local v6, "isSpecialType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    invoke-static {v4, v13, v0, v6}, Landroid/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v17

    .line 254
    .local v17, "type":Ljava/lang/String;
    if-nez v17, :cond_1ea

    .line 255
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 238
    .end local v0    # "isKnownKey":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v17    # "type":Ljava/lang/String;
    .end local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .local v6, "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    :pswitch_122
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v20, v6

    .end local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    const/4 v6, 0x6

    if-lt v5, v6, :cond_146

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_132

    goto :goto_146

    .line 241
    :cond_132
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datatype;->region:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    const/4 v6, 0x0

    invoke-virtual {v13, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5, v3}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v0

    if-nez v0, :cond_210

    .line 242
    return v6

    .line 239
    :cond_146
    :goto_146
    invoke-virtual {v3, v2, v13}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 233
    .end local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    :pswitch_14b
    move-object/from16 v20, v6

    .end local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    move-object/from16 v6, p1

    invoke-direct {v1, v6, v13}, Landroid/icu/impl/locale/LocaleValidityChecker;->isSubdivision(Landroid/icu/util/ULocale;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_210

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 219
    .end local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    :pswitch_16f
    move-object/from16 v20, v6

    move-object/from16 v6, p1

    .end local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    const/16 v0, 0x10

    :try_start_175
    invoke-static {v13, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const v6, 0x10ffff

    if-le v0, v6, :cond_198

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v0
    :try_end_197
    .catch Ljava/lang/NumberFormatException; {:try_start_175 .. :try_end_197} :catch_19a

    return v0

    .line 224
    :cond_198
    goto/16 :goto_210

    .line 222
    :catch_19a
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 227
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    :pswitch_1b5
    move-object/from16 v20, v6

    .end local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    const-string v0, "others"

    goto :goto_1c1

    :cond_1c0
    move-object v0, v13

    :goto_1c1
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 228
    .local v0, "newlyAdded":Z
    if-eqz v0, :cond_1cd

    invoke-direct {v1, v13}, Landroid/icu/impl/locale/LocaleValidityChecker;->isScriptReorder(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_210

    .line 229
    :cond_1cd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 216
    .end local v0    # "newlyAdded":Z
    .end local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    :pswitch_1e7
    move-object/from16 v20, v6

    .end local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .restart local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    goto :goto_210

    .line 257
    .local v0, "isKnownKey":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .local v6, "isSpecialType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .restart local v17    # "type":Ljava/lang/String;
    :cond_1ea
    move-object/from16 v18, v0

    .end local v0    # "isKnownKey":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .local v18, "isKnownKey":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    iget-boolean v0, v1, Landroid/icu/impl/locale/LocaleValidityChecker;->allowsDeprecated:Z

    if-nez v0, :cond_210

    invoke-static {v4, v13}, Landroid/icu/impl/locale/KeyTypeData;->isDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_210

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 163
    .end local v6    # "isSpecialType":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    .end local v13    # "subtag":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "isKnownKey":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    :cond_210
    :goto_210
    move v0, v15

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    .end local v15    # "typeCount":I
    .end local v19    # "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .end local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .local v0, "typeCount":I
    .restart local v5    # "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .local v6, "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    :goto_215
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2d

    .line 263
    :cond_219
    move/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .end local v0    # "typeCount":I
    .end local v5    # "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .end local v6    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .local v18, "typeCount":I
    .restart local v19    # "valueType":Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .restart local v20    # "specialCase":Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    if-eqz v9, :cond_234

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_234

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValidLocale(Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v0

    if-nez v0, :cond_234

    .line 264
    const/16 v16, 0x0

    return v16

    .line 266
    :cond_234
    const/4 v0, 0x1

    return v0

    :pswitch_data_236
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_b4
        :pswitch_ad
    .end packed-switch

    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_1e7
        :pswitch_1b5
        :pswitch_16f
        :pswitch_14b
        :pswitch_122
    .end packed-switch
.end method


# virtual methods
.method public blacklist getDatasubtypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleValidityChecker;->datasubtypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isValid(Landroid/icu/util/ULocale;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z
    .registers 16
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "where"    # Landroid/icu/impl/locale/LocaleValidityChecker$Where;

    .line 75
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "script":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "region":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "variantString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v6

    .line 89
    .local v6, "extensionKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    sget-object v7, Landroid/icu/impl/ValidIdentifiers$Datatype;->language:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {p0, v7, v2, p2}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_31

    .line 91
    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 92
    invoke-virtual {p2, v1, v1}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    .line 93
    return v8

    .line 95
    :cond_30
    return v9

    .line 97
    :cond_31
    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datatype;->script:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {p0, v1, v3, p2}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v1

    if-nez v1, :cond_3a

    return v9

    .line 98
    :cond_3a
    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datatype;->region:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {p0, v1, v4, p2}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v1

    if-nez v1, :cond_43

    return v9

    .line 99
    :cond_43
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 100
    sget-object v1, Landroid/icu/impl/locale/LocaleValidityChecker;->SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    move v10, v9

    :goto_51
    if-ge v10, v7, :cond_61

    aget-object v11, v1, v10

    .line 101
    .local v11, "variant":Ljava/lang/String;
    sget-object v12, Landroid/icu/impl/ValidIdentifiers$Datatype;->variant:Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {p0, v12, v11, p2}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValid(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v12

    if-nez v12, :cond_5e

    return v9

    .line 100
    .end local v11    # "variant":Ljava/lang/String;
    :cond_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_51

    .line 104
    :cond_61
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    .line 106
    .local v7, "c":Ljava/lang/Character;
    :try_start_71
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/icu/impl/ValidIdentifiers$Datatype;->valueOf(Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datatype;

    move-result-object v10

    .line 107
    .local v10, "datatype":Landroid/icu/impl/ValidIdentifiers$Datatype;
    sget-object v11, Landroid/icu/impl/locale/LocaleValidityChecker$1;->$SwitchMap$android$icu$impl$ValidIdentifiers$Datatype:[I

    invoke-virtual {v10}, Landroid/icu/impl/ValidIdentifiers$Datatype;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_be

    goto :goto_a2

    .line 112
    :pswitch_92
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v11

    invoke-virtual {p1, v11}, Landroid/icu/util/ULocale;->getExtension(C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v10, v11, p2}, Landroid/icu/impl/locale/LocaleValidityChecker;->isValidU(Landroid/icu/util/ULocale;Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;Landroid/icu/impl/locale/LocaleValidityChecker$Where;)Z

    move-result v11
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_9e} :catch_a4

    if-nez v11, :cond_a2

    return v9

    .line 109
    :pswitch_a1
    return v8

    .line 119
    .end local v10    # "datatype":Landroid/icu/impl/ValidIdentifiers$Datatype;
    :cond_a2
    :goto_a2
    nop

    .line 120
    .end local v7    # "c":Ljava/lang/Character;
    goto :goto_65

    .line 117
    .restart local v7    # "c":Ljava/lang/Character;
    :catch_a4
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Landroid/icu/impl/ValidIdentifiers$Datatype;->illegal:Landroid/icu/impl/ValidIdentifiers$Datatype;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v8, v0}, Landroid/icu/impl/locale/LocaleValidityChecker$Where;->set(Landroid/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "c":Ljava/lang/Character;
    :cond_bd
    return v8

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_92
        :pswitch_92
    .end packed-switch
.end method
