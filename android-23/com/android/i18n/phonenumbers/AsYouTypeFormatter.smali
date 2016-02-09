.class public Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PLACEHOLDER:Ljava/lang/String; = "\u2008"

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_BEFORE_NATIONAL_NUMBER:C = ' '

.field private static final STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private extractedNationalPrefix:Ljava/lang/String;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private inputHasFormatting:Z

.field private isCompleteNumber:Z

.field private isExpectingCountryCallingCode:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private originalPosition:I

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

.field private shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    #@5
    const-string/jumbo v1, "NA"

    #@8
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@b
    move-result-object v0

    #@c
    .line 64
    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@e
    .line 71
    const-string/jumbo v0, "\\[([^\\[\\]])*\\]"

    #@11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    #@17
    .line 77
    const-string/jumbo v0, "\\d(?=[^,}][^,}])"

    #@1a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    #@20
    .line 85
    const-string/jumbo v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    #@23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@26
    move-result-object v0

    #@27
    .line 84
    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    #@29
    .line 89
    const-string/jumbo v0, "[- ]"

    #@2c
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@2f
    move-result-object v0

    #@30
    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    #@32
    .line 99
    const-string/jumbo v0, "\u2008"

    #@35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@38
    move-result-object v0

    #@39
    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    #@3b
    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    const-string/jumbo v0, ""

    #@7
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    #@9
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    #@10
    .line 45
    const-string/jumbo v0, ""

    #@13
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    #@15
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@1c
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@23
    .line 49
    const/4 v0, 0x1

    #@24
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@26
    .line 52
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    #@28
    .line 56
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    #@2a
    .line 57
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    #@2c
    .line 58
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@32
    .line 100
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    #@34
    .line 103
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    #@36
    .line 106
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    #@38
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@3f
    .line 111
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    #@41
    .line 114
    const-string/jumbo v0, ""

    #@44
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@46
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@4d
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@52
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@54
    .line 119
    new-instance v0, Lcom/android/i18n/phonenumbers/RegexCache;

    #@56
    const/16 v1, 0x40

    #@58
    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/RegexCache;-><init>(I)V

    #@5b
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@5d
    .line 128
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    #@5f
    .line 129
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    #@61
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@64
    move-result-object v0

    #@65
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@67
    .line 130
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@69
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@6b
    .line 127
    return-void
.end method

.method private ableToExtractLongerNdd()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 407
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-lez v2, :cond_0

    #@9
    .line 409
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@b
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 413
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@12
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    .line 414
    .local v0, "indexOfPreviousNdd":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1d
    .line 416
    .end local v0    # "indexOfPreviousNdd":I
    :cond_0
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@1f
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    :goto_0
    return v1

    #@2a
    :cond_1
    const/4 v1, 0x1

    #@2b
    goto :goto_0
.end method

.method private appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nationalNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x20

    #@2
    .line 468
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v0

    #@8
    .line 469
    .local v0, "prefixBeforeNationalNumberLength":I
    iget-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    if-lez v0, :cond_0

    #@e
    .line 470
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@10
    add-int/lit8 v2, v0, -0x1

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@15
    move-result v1

    #@16
    if-eq v1, v4, :cond_0

    #@18
    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    new-instance v2, Ljava/lang/String;

    #@1f
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    return-object v1

    #@35
    .line 478
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    return-object v1
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x3

    #@7
    if-lt v1, v2, :cond_2

    #@9
    .line 491
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    #@12
    .line 493
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 494
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v1

    #@1a
    if-lez v1, :cond_0

    #@1c
    .line 495
    return-object v0

    #@1d
    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    :goto_0
    return-object v1

    #@28
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    goto :goto_0

    #@2f
    .line 499
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method

.method private attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 390
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@4
    .line 391
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    #@6
    .line 392
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@b
    .line 393
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    #@d
    .line 394
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@12
    .line 395
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    #@17
    .line 396
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 596
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 597
    return v6

    #@a
    .line 599
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 600
    .local v3, "numberWithoutCountryCallingCode":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@11
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@13
    invoke-virtual {v4, v5, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    #@16
    move-result v0

    #@17
    .line 601
    .local v0, "countryCode":I
    if-nez v0, :cond_1

    #@19
    .line 602
    return v6

    #@1a
    .line 604
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@1c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1f
    .line 605
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@21
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@24
    .line 606
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@26
    invoke-virtual {v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 607
    .local v2, "newRegionCode":Ljava/lang/String;
    const-string/jumbo v4, "001"

    #@2d
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_3

    #@33
    .line 608
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@35
    invoke-virtual {v4, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@38
    move-result-object v4

    #@39
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@3b
    .line 612
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 613
    .local v1, "countryCodeString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    const/16 v5, 0x20

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    .line 616
    const-string/jumbo v4, ""

    #@4d
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@4f
    .line 617
    const/4 v4, 0x1

    #@50
    return v4

    #@51
    .line 609
    .end local v1    # "countryCodeString":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    #@53
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v4

    #@57
    if-nez v4, :cond_2

    #@59
    .line 610
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@5c
    move-result-object v4

    #@5d
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@5f
    goto :goto_0
.end method

.method private attemptToExtractIdd()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 569
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@4
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v5, "\\+|"

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    .line 570
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@12
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    .line 569
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@21
    move-result-object v1

    #@22
    .line 571
    .local v1, "internationalPrefix":Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@24
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@27
    move-result-object v0

    #@28
    .line 572
    .local v0, "iddMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 573
    iput-boolean v7, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    #@30
    .line 574
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@33
    move-result v2

    #@34
    .line 575
    .local v2, "startOfCountryCallingCode":I
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@36
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@39
    .line 576
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@3b
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@3d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 577
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@46
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    #@49
    .line 578
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@4b
    .line 579
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@4d
    invoke-virtual {v4, v6, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 578
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 580
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@56
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    #@59
    move-result v3

    #@5a
    const/16 v4, 0x2b

    #@5c
    if-eq v3, v4, :cond_0

    #@5e
    .line 581
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@60
    const/16 v4, 0x20

    #@62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    .line 583
    :cond_0
    return v7

    #@66
    .line 585
    .end local v2    # "startOfCountryCallingCode":I
    :cond_1
    return v6
.end method

.method private createFormattingTemplate(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z
    .locals 5
    .param p1, "format"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 219
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 223
    .local v0, "numberPattern":Ljava/lang/String;
    const/16 v2, 0x7c

    #@7
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v2

    #@b
    const/4 v3, -0x1

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 224
    return v4

    #@f
    .line 228
    :cond_0
    sget-object v2, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, "\\\\d"

    #@18
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 231
    sget-object v2, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    #@1e
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, "\\\\d"

    #@25
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 232
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    #@2b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@2e
    .line 233
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 234
    .local v1, "tempTemplate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@39
    move-result v2

    #@3a
    if-lez v2, :cond_1

    #@3c
    .line 235
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    #@3e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 236
    const/4 v2, 0x1

    #@42
    return v2

    #@43
    .line 238
    :cond_1
    return v4
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .locals 5
    .param p1, "leadingDigits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 177
    iget-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    #@2
    if-eqz v4, :cond_2

    #@4
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@6
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    #@9
    move-result v4

    #@a
    if-lez v4, :cond_2

    #@c
    .line 178
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@e
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    .line 180
    .local v2, "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@14
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    #@17
    move-result v3

    #@18
    .line 181
    .local v3, "nationalPrefixIsUsedByCountry":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "format$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_3

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@28
    .line 182
    .local v0, "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v3, :cond_1

    #@2a
    iget-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    #@2c
    if-nez v4, :cond_1

    #@2e
    .line 183
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    #@31
    move-result v4

    #@32
    .line 182
    if-nez v4, :cond_1

    #@34
    .line 185
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 184
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    #@3b
    move-result v4

    #@3c
    .line 182
    if-eqz v4, :cond_0

    #@3e
    .line 186
    :cond_1
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {p0, v4}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isFormatEligible(Ljava/lang/String;)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_0

    #@48
    .line 187
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@4a
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4d
    goto :goto_1

    #@4e
    .line 179
    .end local v0    # "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v1    # "format$iterator":Ljava/util/Iterator;
    .end local v2    # "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v3    # "nationalPrefixIsUsedByCountry":Z
    :cond_2
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@50
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    #@53
    move-result-object v2

    #@54
    .restart local v2    # "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    goto :goto_0

    #@55
    .line 191
    .restart local v1    # "format$iterator":Ljava/util/Iterator;
    .restart local v3    # "nationalPrefixIsUsedByCountry":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    #@58
    .line 175
    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "numberPattern"    # Ljava/lang/String;
    .param p2, "numberFormat"    # Ljava/lang/String;

    #@0
    .prologue
    .line 246
    const-string/jumbo v1, "999999999999999"

    #@3
    .line 247
    .local v1, "longestPhoneNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@5
    invoke-virtual {v4, p1}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@c
    move-result-object v2

    #@d
    .line 248
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@10
    .line 249
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 252
    .local v0, "aPhoneNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@17
    move-result v4

    #@18
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@1d
    move-result v5

    #@1e
    if-ge v4, v5, :cond_0

    #@20
    .line 253
    const-string/jumbo v4, ""

    #@23
    return-object v4

    #@24
    .line 256
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 258
    .local v3, "template":Ljava/lang/String;
    const-string/jumbo v4, "9"

    #@2b
    const-string/jumbo v5, "\u2008"

    #@2e
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 259
    return-object v3
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@2
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    .line 137
    .local v0, "countryCallingCode":I
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@8
    invoke-virtual {v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 138
    .local v1, "mainCountry":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@e
    invoke-virtual {v3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@11
    move-result-object v2

    #@12
    .line 139
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    #@14
    .line 140
    return-object v2

    #@15
    .line 144
    :cond_0
    sget-object v3, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@17
    return-object v3
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 508
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v1

    #@6
    .line 509
    .local v1, "lengthOfNationalNumber":I
    if-lez v1, :cond_2

    #@8
    .line 510
    const-string/jumbo v2, ""

    #@b
    .line 511
    .local v2, "tempNationalNumber":Ljava/lang/String;
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@e
    .line 512
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@13
    move-result v3

    #@14
    invoke-direct {p0, v3}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 511
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 514
    :cond_0
    iget-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@1d
    if-eqz v3, :cond_1

    #@1f
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    :goto_1
    return-object v3

    #@24
    :cond_1
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    goto :goto_1

    #@2b
    .line 516
    .end local v0    # "i":I
    .end local v2    # "tempNationalNumber":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .locals 5
    .param p1, "nextChar"    # C

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 645
    sget-object v2, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    #@3
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    #@5
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@8
    move-result-object v0

    #@9
    .line 646
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    iget v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    #@b
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 647
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 648
    .local v1, "tempTemplate":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    #@1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {v2, v4, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 649
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    #@25
    move-result v2

    #@26
    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    #@28
    .line 650
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    #@2a
    iget v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    #@2c
    add-int/lit8 v3, v3, 0x1

    #@2e
    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    return-object v2

    #@33
    .line 652
    .end local v1    # "tempTemplate":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@35
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@38
    move-result v2

    #@39
    const/4 v3, 0x1

    #@3a
    if-ne v2, v3, :cond_1

    #@3c
    .line 655
    iput-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@3e
    .line 657
    :cond_1
    const-string/jumbo v2, ""

    #@41
    iput-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    #@43
    .line 658
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    return-object v2
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .locals 5
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 315
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7
    .line 316
    if-eqz p2, :cond_0

    #@9
    .line 317
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@e
    move-result v2

    #@f
    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    #@11
    .line 321
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 322
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@19
    .line 323
    iput-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    #@1b
    .line 327
    :goto_0
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@1d
    if-nez v2, :cond_5

    #@1f
    .line 331
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 332
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2

    #@2a
    .line 325
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    #@2d
    move-result p1

    #@2e
    goto :goto_0

    #@2f
    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_3

    #@35
    .line 334
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_4

    #@3b
    .line 335
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    return-object v2

    #@40
    .line 337
    :cond_3
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_4

    #@46
    .line 341
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@48
    const/16 v3, 0x20

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 342
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    return-object v2

    #@52
    .line 344
    :cond_4
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    return-object v2

    #@59
    .line 349
    :cond_5
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@5e
    move-result v2

    #@5f
    packed-switch v2, :pswitch_data_0

    #@62
    .line 362
    :goto_1
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    #@64
    if-eqz v2, :cond_8

    #@66
    .line 363
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_6

    #@6c
    .line 364
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    #@6e
    .line 366
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    return-object v2

    #@88
    .line 353
    :pswitch_0
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@8a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    return-object v2

    #@8f
    .line 355
    :pswitch_1
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    #@92
    move-result v2

    #@93
    if-eqz v2, :cond_7

    #@95
    .line 356
    iput-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    #@97
    goto :goto_1

    #@98
    .line 358
    :cond_7
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    #@9b
    move-result-object v2

    #@9c
    iput-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@9e
    .line 359
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    return-object v2

    #@a3
    .line 368
    :cond_8
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@a5
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@a8
    move-result v2

    #@a9
    if-lez v2, :cond_c

    #@ab
    .line 369
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    .line 372
    .local v1, "tempNationalNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    #@b2
    move-result-object v0

    #@b3
    .line 373
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b6
    move-result v2

    #@b7
    if-lez v2, :cond_9

    #@b9
    .line 374
    return-object v0

    #@ba
    .line 376
    :cond_9
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v2

    #@c0
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    #@c3
    .line 377
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    #@c6
    move-result v2

    #@c7
    if-eqz v2, :cond_a

    #@c9
    .line 378
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    #@cc
    move-result-object v2

    #@cd
    return-object v2

    #@ce
    .line 380
    :cond_a
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@d0
    if-eqz v2, :cond_b

    #@d2
    .line 381
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    #@d5
    move-result-object v2

    #@d6
    .line 380
    :goto_2
    return-object v2

    #@d7
    .line 382
    :cond_b
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@d9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v2

    #@dd
    goto :goto_2

    #@de
    .line 384
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "tempNationalNumber":Ljava/lang/String;
    :cond_c
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    #@e1
    move-result-object v2

    #@e2
    return-object v2

    #@e3
    .line 349
    nop

    #@e4
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .locals 2
    .param p1, "nextChar"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 420
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 421
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@c
    move-result v1

    #@d
    if-ne v1, v0, :cond_1

    #@f
    .line 422
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    #@11
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@1c
    move-result v0

    #@1d
    .line 420
    :cond_0
    :goto_0
    return v0

    #@1e
    .line 421
    :cond_1
    const/4 v0, 0x0

    #@1f
    goto :goto_0
.end method

.method private isFormatEligible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 195
    sget-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private isNanpaNumberWithNationalPrefix()Z
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x31

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v0, 0x1

    #@4
    .line 529
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@6
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    #@9
    move-result v2

    #@a
    if-ne v2, v0, :cond_1

    #@c
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@11
    move-result v2

    #@12
    if-ne v2, v4, :cond_1

    #@14
    .line 530
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@19
    move-result v2

    #@1a
    const/16 v3, 0x30

    #@1c
    if-eq v2, v3, :cond_1

    #@1e
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@23
    move-result v2

    #@24
    if-eq v2, v4, :cond_0

    #@26
    .line 529
    :goto_0
    return v0

    #@27
    :cond_0
    move v0, v1

    #@28
    .line 530
    goto :goto_0

    #@29
    :cond_1
    move v0, v1

    #@2a
    .line 529
    goto :goto_0
.end method

.method private maybeCreateNewTemplate()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 151
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v0

    #@7
    .line 152
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@13
    .line 154
    .local v1, "numberFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 155
    .local v2, "pattern":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    #@19
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 156
    return v5

    #@20
    .line 158
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->createFormattingTemplate(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 159
    iput-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    #@28
    .line 161
    sget-object v3, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    #@2a
    .line 162
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 161
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@35
    move-result v3

    #@36
    .line 160
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    #@38
    .line 165
    iput v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    #@3a
    .line 166
    const/4 v3, 0x1

    #@3b
    return v3

    #@3c
    .line 168
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@3f
    goto :goto_0

    #@40
    .line 171
    .end local v1    # "numberFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_2
    iput-boolean v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@42
    .line 172
    return v5
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .locals 8
    .param p1, "leadingDigits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v6

    #@4
    add-int/lit8 v1, v6, -0x3

    #@6
    .line 200
    .local v1, "indexOfLeadingDigitsPattern":I
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@8
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .line 201
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_1

    #@12
    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@18
    .line 203
    .local v0, "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_0

    #@1e
    .line 208
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    #@21
    move-result v6

    #@22
    add-int/lit8 v6, v6, -0x1

    #@24
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v3

    #@28
    .line 209
    .local v3, "lastLeadingDigitsPattern":I
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@2a
    .line 210
    invoke-virtual {v0, v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    .line 209
    invoke-virtual {v6, v7}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@31
    move-result-object v4

    #@32
    .line 211
    .local v4, "leadingDigitsPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@35
    move-result-object v5

    #@36
    .line 212
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@39
    move-result v6

    #@3a
    if-nez v6, :cond_0

    #@3c
    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@3f
    goto :goto_0

    #@40
    .line 198
    .end local v0    # "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "lastLeadingDigitsPattern":I
    .end local v4    # "leadingDigitsPattern":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_1
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .locals 3
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    #@0
    .prologue
    .line 627
    const/16 v2, 0x2b

    #@2
    if-ne p1, v2, :cond_1

    #@4
    .line 628
    move v0, p1

    #@5
    .line 629
    .local v0, "normalizedChar":C
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@7
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    .line 636
    :goto_0
    if-eqz p2, :cond_0

    #@c
    .line 637
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@11
    move-result v2

    #@12
    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    #@14
    .line 639
    :cond_0
    return v0

    #@15
    .line 631
    .end local v0    # "normalizedChar":C
    :cond_1
    const/16 v1, 0xa

    #@17
    .line 632
    .local v1, "radix":I
    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    #@1a
    move-result v2

    #@1b
    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    #@1e
    move-result v0

    #@1f
    .line 633
    .restart local v0    # "normalizedChar":C
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 634
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    goto :goto_0
.end method

.method private removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 535
    const/4 v3, 0x0

    #@3
    .line 536
    .local v3, "startOfNationalNumber":I
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_1

    #@9
    .line 537
    const/4 v3, 0x1

    #@a
    .line 538
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@c
    const/16 v5, 0x31

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    const/16 v5, 0x20

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 539
    iput-boolean v7, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    #@19
    .line 555
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@1b
    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 556
    .local v1, "nationalPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@21
    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@24
    .line 557
    return-object v1

    #@25
    .line 540
    .end local v1    # "nationalPrefix":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@27
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    .line 542
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@2f
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@31
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@38
    move-result-object v2

    #@39
    .line 543
    .local v2, "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@3b
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3e
    move-result-object v0

    #@3f
    .line 546
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_0

    #@45
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@48
    move-result v4

    #@49
    if-lez v4, :cond_0

    #@4b
    .line 550
    iput-boolean v7, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    #@4d
    .line 551
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@50
    move-result v3

    #@51
    .line 552
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@53
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@55
    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_0
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 430
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "numberFormat$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    #@12
    .line 431
    .local v2, "numberFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/RegexCache;

    #@14
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1b
    move-result-object v4

    #@1c
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@21
    move-result-object v1

    #@22
    .line 432
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 434
    sget-object v4, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    #@2a
    .line 435
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    .line 434
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@35
    move-result v4

    #@36
    .line 433
    iput-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    #@38
    .line 436
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 437
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4

    #@45
    .line 440
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "numberFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_1
    const-string/jumbo v4, ""

    #@48
    return-object v4
.end method

.method public clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 266
    const-string/jumbo v0, ""

    #@4
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    #@6
    .line 267
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@b
    .line 268
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@10
    .line 269
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@15
    .line 270
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    #@17
    .line 271
    const-string/jumbo v0, ""

    #@1a
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    #@1c
    .line 272
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@21
    .line 273
    const-string/jumbo v0, ""

    #@24
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@26
    .line 274
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@2b
    .line 275
    const/4 v0, 0x1

    #@2c
    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@2e
    .line 276
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    #@30
    .line 277
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    #@32
    .line 278
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    #@34
    .line 279
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    #@36
    .line 280
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    #@38
    .line 281
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    #@3a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@3d
    .line 282
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    #@3f
    .line 283
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@41
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@43
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_0

    #@49
    .line 284
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    #@4b
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    #@51
    .line 265
    :cond_0
    return-void
.end method

.method getExtractedNationalPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRememberedPosition()I
    .locals 4

    #@0
    .prologue
    .line 448
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 449
    iget v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    #@6
    return v2

    #@7
    .line 451
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "accruedInputIndex":I
    const/4 v1, 0x0

    #@9
    .line 452
    .local v1, "currentOutputIndex":I
    :goto_0
    iget v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    #@b
    if-ge v0, v2, :cond_2

    #@d
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    #@f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    if-ge v1, v2, :cond_2

    #@15
    .line 453
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@1a
    move-result v2

    #@1b
    .line 454
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v3

    #@21
    .line 453
    if-ne v2, v3, :cond_1

    #@23
    .line 455
    add-int/lit8 v0, v0, 0x1

    #@25
    .line 457
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 459
    :cond_2
    return v1
.end method

.method public inputDigit(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    #@0
    .prologue
    .line 298
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    #@7
    .line 299
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    #@9
    return-object v0
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    #@0
    .prologue
    .line 309
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    #@7
    .line 310
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    #@9
    return-object v0
.end method
