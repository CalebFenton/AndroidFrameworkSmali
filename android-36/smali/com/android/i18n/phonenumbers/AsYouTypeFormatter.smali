.class public Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final greylist-max-o DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o DIGIT_PLACEHOLDER:Ljava/lang/String; = "\u2008"

.field private static final greylist-max-o ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private static final greylist-max-o MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final greylist-max-o NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o SEPARATOR_BEFORE_NATIONAL_NUMBER:C = ' '


# instance fields
.field private greylist-max-o ableToFormat:Z

.field private greylist-max-o accruedInput:Ljava/lang/StringBuilder;

.field private greylist-max-o accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private greylist-max-o currentFormattingPattern:Ljava/lang/String;

.field private greylist-max-o currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private greylist-max-o currentOutput:Ljava/lang/String;

.field private greylist-max-o defaultCountry:Ljava/lang/String;

.field private greylist-max-o defaultMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private greylist-max-o extractedNationalPrefix:Ljava/lang/String;

.field private greylist-max-o formattingTemplate:Ljava/lang/StringBuilder;

.field private greylist-max-o inputHasFormatting:Z

.field private greylist-max-o isCompleteNumber:Z

.field private greylist-max-o isExpectingCountryCallingCode:Z

.field private greylist-max-o lastMatchPosition:I

.field private greylist-max-o nationalNumber:Ljava/lang/StringBuilder;

.field private greylist-max-o originalPosition:I

.field private final greylist-max-o phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private greylist-max-o positionToRemember:I

.field private greylist-max-o possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private greylist-max-o regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

.field private greylist-max-o shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    invoke-static {}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    const-string v1, "<ignored>"

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setId(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->build()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 77
    nop

    .line 78
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*\\$1[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, "[- ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "\u2008"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 47
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 60
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 94
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 97
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 100
    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 105
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 108
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 122
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 124
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 125
    return-void
.end method

.method private greylist-max-o ableToExtractLongerNdd()Z
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 408
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, "indexOfPreviousNdd":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 415
    .end local v0    # "indexOfPreviousNdd":I
    :cond_1d
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "nationalNumber"    # Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 482
    .local v0, "prefixBeforeNationalNumberLength":I
    iget-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    if-eqz v1, :cond_35

    if-lez v0, :cond_35

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    .line 483
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_35

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 491
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o attemptToChooseFormattingPattern()Ljava/lang/String;
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2f

    .line 504
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 508
    return-object v0

    .line 510
    :cond_1d
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_28
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2e
    return-object v1

    .line 512
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_2f
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .registers 3

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 391
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 392
    iput v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 393
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o attemptToExtractCountryCallingCode()Z
    .registers 7

    .line 609
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 610
    return v1

    .line 612
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .local v0, "numberWithoutCountryCallingCode":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    .line 614
    .local v2, "countryCode":I
    if-nez v2, :cond_1a

    .line 615
    return v1

    .line 617
    :cond_1a
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 618
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "newRegionCode":Ljava/lang/String;
    const-string v3, "001"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 621
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_49

    .line 622
    :cond_3b
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 623
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 625
    :cond_49
    :goto_49
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "countryCodeString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    const-string v4, ""

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 630
    const/4 v4, 0x1

    return v4
.end method

.method private greylist-max-o attemptToExtractIdd()Z
    .registers 8

    .line 581
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\+|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 583
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 584
    .local v0, "internationalPrefix":Ljava/util/regex/Pattern;
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 585
    .local v1, "iddMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_65

    .line 586
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 587
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 588
    .local v4, "startOfCountryCallingCode":I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 589
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 591
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 591
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_64

    .line 594
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    :cond_64
    return v2

    .line 598
    .end local v4    # "startOfCountryCallingCode":I
    :cond_65
    return v3
.end method

.method private greylist-max-o createFormattingTemplate(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z
    .registers 6
    .param p1, "format"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 226
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "numberPattern":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 228
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "tempTemplate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    .line 230
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/4 v2, 0x1

    return v2

    .line 233
    :cond_1f
    return v2
.end method

.method private greylist-max-o getAvailableFormats(Ljava/lang/String;)V
    .registers 8
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .line 171
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 173
    .local v0, "isInternationalNumber":Z
    :goto_f
    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 174
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v1

    goto :goto_26

    .line 175
    :cond_20
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v1

    :goto_26
    nop

    .line 176
    .local v1, "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 179
    .local v3, "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_56

    .line 181
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 182
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v4

    if-nez v4, :cond_56

    .line 183
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v4

    if-nez v4, :cond_56

    .line 188
    goto :goto_2b

    .line 189
    :cond_56
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_73

    iget-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-nez v4, :cond_73

    .line 192
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 193
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v4

    if-nez v4, :cond_73

    .line 196
    goto :goto_2b

    .line 198
    :cond_73
    sget-object v4, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 199
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v3    # "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_88
    goto :goto_2b

    .line 202
    :cond_89
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private greylist-max-o getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "numberPattern"    # Ljava/lang/String;
    .param p2, "numberFormat"    # Ljava/lang/String;

    .line 241
    const-string v0, "999999999999999"

    .line 242
    .local v0, "longestPhoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 243
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 244
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "aPhoneNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_22

    .line 248
    const-string v3, ""

    return-object v3

    .line 251
    :cond_22
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "template":Ljava/lang/String;
    const-string v4, "9"

    const-string v5, "\u2008"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    return-object v3
.end method

.method private greylist-max-o getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "countryCallingCode":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "mainCountry":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 133
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_15

    .line 134
    return-object v2

    .line 138
    :cond_15
    sget-object v3, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v3
.end method

.method private greylist-max-o inputAccruedNationalNumber()Ljava/lang/String;
    .registers 5

    .line 521
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 522
    .local v0, "lengthOfNationalNumber":I
    if-lez v0, :cond_2a

    .line 523
    const-string v1, ""

    .line 524
    .local v1, "tempNationalNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1a

    .line 525
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 527
    .end local v2    # "i":I
    :cond_1a
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_23

    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :cond_23
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_29
    return-object v2

    .line 529
    .end local v1    # "tempNationalNumber":Ljava/lang/String;
    :cond_2a
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o inputDigitHelper(C)Ljava/lang/String;
    .registers 8
    .param p1, "nextChar"    # C

    .line 658
    sget-object v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 659
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    iget v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_33

    .line 660
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "tempTemplate":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v5, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 663
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 665
    .end local v1    # "tempTemplate":Ljava/lang/String;
    :cond_33
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_3d

    .line 668
    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 670
    :cond_3d
    const-string v1, ""

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 671
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .registers 6
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .line 313
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    if-eqz p2, :cond_f

    .line 315
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 319
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    .line 320
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 321
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    goto :goto_20

    .line 323
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    .line 325
    :goto_20
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_59

    .line 329
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz v0, :cond_2f

    .line 330
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 331
    :cond_2f
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 332
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 333
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_40
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 339
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_52
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_59
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_e4

    goto :goto_7e

    .line 353
    :pswitch_63
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 354
    iput-boolean v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    goto :goto_7e

    .line 356
    :cond_6c
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 357
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :pswitch_77
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :goto_7e
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz v0, :cond_a4

    .line 362
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 363
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 365
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_a4
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_df

    .line 368
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "tempNationalNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_bb

    .line 373
    return-object v1

    .line 375
    :cond_bb
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 377
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 379
    :cond_cf
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_d8

    .line 380
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_de

    .line 381
    :cond_d8
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    :goto_de
    return-object v2

    .line 383
    .end local v0    # "tempNationalNumber":Ljava/lang/String;
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_df
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_77
        :pswitch_77
        :pswitch_77
        :pswitch_63
    .end packed-switch
.end method

.method private greylist-max-o isDigitOrLeadingPlusSign(C)Z
    .registers 5
    .param p1, "nextChar"    # C

    .line 419
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v1, :cond_20

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 421
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    const/4 v1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    nop

    .line 419
    :goto_23
    return v1
.end method

.method private greylist-max-o isNanpaNumberWithNationalPrefix()Z
    .registers 6

    .line 542
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_28

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    nop

    .line 542
    :goto_29
    return v1
.end method

.method private greylist-max-o maybeCreateNewTemplate()Z
    .registers 7

    .line 145
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 148
    .local v1, "numberFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "pattern":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 150
    return v2

    .line 152
    :cond_20
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->createFormattingTemplate(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 153
    iput-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 154
    sget-object v4, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 156
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 159
    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 160
    const/4 v2, 0x1

    return v2

    .line 162
    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 164
    .end local v1    # "numberFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "pattern":Ljava/lang/String;
    goto :goto_6

    .line 165
    :cond_40
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 166
    return v2
.end method

.method private greylist-max-o narrowDownPossibleFormats(Ljava/lang/String;)V
    .registers 9
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 207
    .local v0, "indexOfLeadingDigitsPattern":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 210
    .local v2, "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v3

    if-nez v3, :cond_1f

    .line 212
    goto :goto_c

    .line 214
    :cond_1f
    nop

    .line 215
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 216
    .local v3, "lastLeadingDigitsPattern":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 217
    invoke-virtual {v2, v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 218
    .local v4, "leadingDigitsPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 219
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-nez v6, :cond_41

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 222
    .end local v2    # "format":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "lastLeadingDigitsPattern":I
    .end local v4    # "leadingDigitsPattern":Ljava/util/regex/Pattern;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_41
    goto :goto_c

    .line 223
    :cond_42
    return-void
.end method

.method private greylist-max-o normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .registers 6
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .line 640
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_b

    .line 641
    move v0, p1

    .line 642
    .local v0, "normalizedChar":C
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 644
    .end local v0    # "normalizedChar":C
    :cond_b
    const/16 v0, 0xa

    .line 645
    .local v0, "radix":I
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    .line 646
    .local v1, "normalizedChar":C
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 649
    .end local v1    # "normalizedChar":C
    .local v0, "normalizedChar":C
    :goto_20
    if-eqz p2, :cond_2a

    .line 650
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 652
    :cond_2a
    return v0
.end method

.method private greylist-max-o removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .registers 7

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "startOfNationalNumber":I
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    .line 550
    const/4 v0, 0x1

    .line 551
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    goto :goto_51

    .line 553
    :cond_1a
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 554
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 555
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 556
    .local v1, "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 559
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-lez v5, :cond_51

    .line 563
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 564
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 565
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .end local v1    # "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "nationalPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 570
    return-object v1
.end method


# virtual methods
.method greylist-max-o attemptToFormatAccruedDigits()Ljava/lang/String;
    .registers 8

    .line 429
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 430
    .local v1, "numberFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 431
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 432
    sget-object v3, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 434
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 434
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 435
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "formattedNumber":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "fullOutput":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "formattedNumberDigitsOnly":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 447
    return-object v4

    .line 450
    .end local v1    # "numberFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "formattedNumber":Ljava/lang/String;
    .end local v4    # "fullOutput":Ljava/lang/String;
    .end local v5    # "formattedNumberDigitsOnly":Ljava/lang/String;
    :cond_51
    goto :goto_6

    .line 451
    :cond_52
    const-string v0, ""

    return-object v0
.end method

.method public greylist clear()V
    .registers 4

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 265
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 266
    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 267
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 269
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 272
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 273
    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 274
    iput v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 275
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 276
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 277
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    iput-boolean v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 279
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 280
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 282
    :cond_4a
    return-void
.end method

.method greylist-max-o getExtractedNationalPrefix()Ljava/lang/String;
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getRememberedPosition()I
    .registers 5

    .line 460
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_7

    .line 461
    iget v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    return v0

    .line 463
    :cond_7
    const/4 v0, 0x0

    .line 464
    .local v0, "accruedInputIndex":I
    const/4 v1, 0x0

    .line 465
    .local v1, "currentOutputIndex":I
    :goto_9
    iget v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 466
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 467
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_25

    .line 468
    add-int/lit8 v0, v0, 0x1

    .line 470
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 472
    :cond_28
    return v1
.end method

.method public greylist inputDigit(C)Ljava/lang/String;
    .registers 3
    .param p1, "nextChar"    # C

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method

.method public greylist inputDigitAndRememberPosition(C)Ljava/lang/String;
    .registers 3
    .param p1, "nextChar"    # C

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method
