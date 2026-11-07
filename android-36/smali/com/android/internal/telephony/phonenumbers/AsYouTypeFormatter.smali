.class public Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final blacklist DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist EMPTY_METADATA:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

.field private static final blacklist NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist ableToFormat:Z

.field private blacklist accruedInput:Ljava/lang/StringBuilder;

.field private blacklist accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private blacklist currentFormattingPattern:Ljava/lang/String;

.field private blacklist currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

.field private blacklist currentOutput:Ljava/lang/String;

.field private blacklist defaultCountry:Ljava/lang/String;

.field private blacklist defaultMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

.field private blacklist extractedNationalPrefix:Ljava/lang/String;

.field private blacklist formattingTemplate:Ljava/lang/StringBuilder;

.field private blacklist inputHasFormatting:Z

.field private blacklist isCompleteNumber:Z

.field private blacklist isExpectingCountryCallingCode:Z

.field private blacklist lastMatchPosition:I

.field private blacklist nationalNumber:Ljava/lang/StringBuilder;

.field private blacklist originalPosition:I

.field private final blacklist phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

.field private blacklist positionToRemember:I

.field private blacklist possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private blacklist regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

.field private blacklist shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    const-string v1, "<ignored>"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setId(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setInternationalPrefix(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 75
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*\\$1[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)*"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "[- ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "\u2008"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 58
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 95
    iput v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 98
    iput v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 106
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 122
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method private blacklist ableToExtractLongerNdd()Z
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 476
    iget-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    if-eqz v1, :cond_32

    if-lez v0, :cond_32

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_32

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 485
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist attemptToChooseFormattingPattern()Ljava/lang/String;
    .registers 3

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2f

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    return-object v0

    .line 504
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 506
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 386
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 387
    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 389
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist attemptToExtractCountryCallingCode()Z
    .registers 5

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 606
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 611
    :cond_1a
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 614
    const-string v1, "001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_49

    .line 616
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 617
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 619
    :cond_49
    :goto_49
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist attemptToExtractIdd()Z
    .registers 6

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\+|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 577
    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    const/4 v1, 0x1

    .line 580
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 581
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 582
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 583
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_62

    .line 588
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_62
    return v1

    :cond_63
    return v2
.end method

.method private blacklist createFormattingTemplate(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Z
    .registers 5

    .line 224
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 226
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v2
.end method

.method private blacklist getAvailableFormats(Ljava/lang/String;)V
    .registers 6

    .line 169
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatCount()I

    move-result v0

    if-lez v0, :cond_1b

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v0

    goto :goto_21

    .line 173
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v0

    .line 174
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_50

    .line 179
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 180
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v2

    if-nez v2, :cond_50

    .line 181
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_25

    .line 187
    :cond_50
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6d

    iget-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-nez v2, :cond_6d

    .line 190
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 191
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_25

    .line 196
    :cond_6d
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 197
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 200
    :cond_83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "999999999999999"

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 242
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v1, p0, :cond_22

    .line 246
    const-string p0, ""

    return-object p0

    .line 249
    :cond_22
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    const-string p1, "9"

    const-string p2, "\u2008"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    if-eqz p0, :cond_15

    return-object p0

    .line 136
    :cond_15
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p0
.end method

.method private blacklist inputAccruedNationalNumber()Ljava/lang/String;
    .registers 4

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 518
    const-string v1, ""

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1a

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 521
    :cond_1a
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v0, :cond_23

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 523
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist inputDigitHelper(C)Ljava/lang/String;
    .registers 7

    .line 652
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 653
    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 654
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 655
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 657
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {p0, v3, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 659
    :cond_31
    iget-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_3b

    .line 662
    iput-boolean v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 664
    :cond_3b
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 665
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .registers 6

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 314
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    .line 315
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 316
    iput-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    goto :goto_20

    .line 318
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    .line 320
    :goto_20
    iget-boolean p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez p2, :cond_59

    .line 324
    iget-boolean p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz p1, :cond_2f

    .line 325
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 326
    :cond_2f
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 327
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 330
    :cond_40
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 334
    iget-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 337
    :cond_52
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 342
    :cond_59
    iget-object p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_e1

    if-eq p2, v2, :cond_e1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_e1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6a

    goto :goto_72

    .line 348
    :cond_6a
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result p2

    if-eqz p2, :cond_d6

    .line 349
    iput-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 356
    :goto_72
    iget-boolean p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz p2, :cond_96

    .line 357
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 358
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 360
    :cond_7e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :cond_96
    iget-object p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_d1

    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object p2

    .line 367
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ad

    return-object p2

    .line 370
    :cond_ad
    iget-object p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 372
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 374
    :cond_c1
    iget-boolean p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz p2, :cond_ca

    .line 375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 376
    :cond_ca
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 378
    :cond_d1
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_d6
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 352
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_e1
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isDigitOrLeadingPlusSign(C)Z
    .registers 4

    .line 414
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v1, :cond_20

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 416
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    return p0

    :cond_22
    :goto_22
    return v1
.end method

.method private blacklist isNanpaNumberWithNationalPrefix()Z
    .registers 6

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_27

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-eq p0, v3, :cond_27

    return v2

    :cond_27
    return v1
.end method

.method private blacklist maybeCreateNewTemplate()Z
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 144
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 146
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 147
    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    return v2

    .line 150
    :cond_20
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->createFormattingTemplate(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 151
    iput-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 154
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 157
    iput v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    const/4 p0, 0x1

    return p0

    .line 160
    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 163
    :cond_40
    iput-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    return v2
.end method

.method private blacklist narrowDownPossibleFormats(Ljava/lang/String;)V
    .registers 7

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 208
    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_c

    .line 213
    :cond_1f
    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 214
    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    .line 215
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 216
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_c

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :cond_41
    return-void
.end method

.method private blacklist normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .registers 4

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_a

    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_a
    const/16 v0, 0xa

    .line 639
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1e
    if-eqz p2, :cond_28

    .line 644
    iget-object p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    :cond_28
    return p1
.end method

.method private blacklist removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .registers 5

    .line 543
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    goto :goto_50

    .line 547
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 549
    invoke-virtual {v3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 550
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-lez v3, :cond_4f

    .line 557
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 558
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_4f
    move v1, v2

    .line 562
    :goto_50
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 563
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method blacklist attemptToFormatAccruedDigits()Ljava/lang/String;
    .registers 6

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 427
    sget-object v3, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 429
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 430
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 439
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 446
    :cond_51
    const-string p0, ""

    return-object p0
.end method

.method public blacklist clear()V
    .registers 4

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 263
    iput v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 264
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 266
    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->extractedNationalPrefix:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 269
    iput-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 270
    iput v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 271
    iput v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 272
    iput-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 273
    iput-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    iput-boolean v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->defaultMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentMetadata:Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_4a
    return-void
.end method

.method public blacklist getRememberedPosition()I
    .registers 5

    .line 454
    iget-boolean v0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v0, :cond_7

    .line 455
    iget p0, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    return p0

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    .line 459
    :goto_9
    iget v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 460
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 461
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_25

    add-int/lit8 v0, v0, 0x1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_28
    return v1
.end method

.method public blacklist inputDigit(C)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object p1
.end method

.method public blacklist inputDigitAndRememberPosition(C)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    .line 302
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object p1
.end method
