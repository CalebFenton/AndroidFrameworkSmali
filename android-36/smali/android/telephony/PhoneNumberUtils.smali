.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;,
        Landroid/telephony/PhoneNumberUtils$BcdExtendType;
    }
.end annotation


# static fields
.field private static final greylist-max-o BCD_CALLED_PARTY_EXTENDED:Ljava/lang/String; = "*#abc"

.field private static final greylist-max-o BCD_EF_ADN_EXTENDED:Ljava/lang/String; = "*#,N;"

.field public static final whitelist BCD_EXTENDED_TYPE_CALLED_PARTY:I = 0x2

.field public static final whitelist BCD_EXTENDED_TYPE_EF_ADN:I = 0x1

.field private static final greylist-max-o CCC_LENGTH:I

.field private static final greylist-max-o CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final greylist-max-o CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final greylist-max-o COUNTRY_CALLING_CALL:[Z

.field private static final blacklist COUNTRY_CODES_TO_FORMAT_NATIONALLY:[Ljava/lang/String;

.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist FORMAT_JAPAN:I = 0x2

.field public static final whitelist FORMAT_NANP:I = 0x1

.field public static final whitelist FORMAT_UNKNOWN:I = 0x0

.field private static final greylist-max-o GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "JP"

.field private static final greylist-max-o KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final greylist-max-o KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final greylist-max-o NANP_COUNTRIES:[Ljava/lang/String;

.field private static final greylist-max-o NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final greylist-max-o NANP_LENGTH:I = 0xa

.field private static final greylist-max-o NANP_STATE_DASH:I = 0x4

.field private static final greylist-max-o NANP_STATE_DIGIT:I = 0x1

.field private static final greylist-max-o NANP_STATE_ONE:I = 0x3

.field private static final greylist-max-o NANP_STATE_PLUS:I = 0x2

.field public static final whitelist PAUSE:C = ','

.field private static final greylist-max-o PLUS_SIGN_CHAR:C = '+'

.field private static final greylist-max-o PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final blacklist PREFIX_WPS:Ljava/lang/String; = "*272"

.field private static final blacklist PREFIX_WPS_CLIR_ACTIVATE:Ljava/lang/String; = "*31#*272"

.field private static final blacklist PREFIX_WPS_CLIR_DEACTIVATE:Ljava/lang/String; = "#31#*272"

.field private static final blacklist SINGAPORE_ISO_COUNTRY_CODE:Ljava/lang/String; = "SG"

.field public static final whitelist TOA_International:I = 0x91

.field public static final whitelist TOA_Unknown:I = 0x81

.field public static final whitelist WAIT:C = ';'

.field public static final whitelist WILD:C = 'N'

.field private static greylist-max-o sConvertToEmergencyMap:[Ljava/lang/String;

.field private static blacklist sMinMatch:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 25

    .line 129
    nop

    .line 130
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 181
    const/4 v0, 0x0

    sput v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 1256
    const-string v23, "TC"

    const-string v24, "VI"

    const-string v1, "US"

    const-string v2, "CA"

    const-string v3, "AS"

    const-string v4, "AI"

    const-string v5, "AG"

    const-string v6, "BS"

    const-string v7, "BB"

    const-string v8, "BM"

    const-string v9, "VG"

    const-string v10, "KY"

    const-string v11, "DM"

    const-string v12, "DO"

    const-string v13, "GD"

    const-string v14, "GU"

    const-string v15, "JM"

    const-string v16, "PR"

    const-string v17, "MS"

    const-string v18, "MP"

    const-string v19, "KN"

    const-string v20, "LC"

    const-string v21, "VC"

    const-string v22, "TT"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1289
    const-string v0, "SG"

    const-string v1, "TW"

    const-string v2, "KR"

    const-string v3, "JP"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CODES_TO_FORMAT_NATIONALLY:[Ljava/lang/String;

    .line 2015
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2017
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2018
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2020
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x65

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x66

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2021
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x44

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x45

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v3, 0x46

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2023
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x67

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2024
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x48

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2026
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6a

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2027
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2029
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6d

    const/16 v3, 0x36

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2030
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2032
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x70

    const/16 v3, 0x37

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x71

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2033
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x51

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x53

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2035
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x74

    const/16 v3, 0x38

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x75

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x76

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2036
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x54

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x56

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2038
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x77

    const/16 v3, 0x39

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x7a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2039
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x57

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x58

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2681
    new-array v0, v1, [Z

    fill-array-data v0, :array_1e4

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 2693
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    .line 2877
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    return-void

    nop

    :array_1e4
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addTtsSpan(Landroid/text/Spannable;II)V
    .registers 5
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    .line 2239
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2243
    return-void
.end method

.method private static greylist-max-o appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .line 2541
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_16

    .line 2542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2543
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2545
    .local v0, "retStr":Ljava/lang/String;
    goto :goto_1f

    .line 2548
    .end local v0    # "retStr":Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2549
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2551
    .local v0, "retStr":Ljava/lang/String;
    :goto_1f
    return-object v0
.end method

.method public static whitelist areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 2964
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 2968
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p2, :cond_c

    .line 2969
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 2973
    :cond_c
    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v0, p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2974
    .local v2, "n1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3
    :try_end_15
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_d .. :try_end_15} :catch_44

    .line 2977
    .local v3, "n2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    nop

    .line 2979
    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v4

    .line 2980
    .local v4, "matchType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_43

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v4, v5, :cond_24

    goto :goto_43

    .line 2983
    :cond_24
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v4, v5, :cond_42

    .line 2984
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-nez v5, :cond_40

    .line 2985
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v7

    if-ne v5, v7, :cond_40

    move v1, v6

    goto :goto_41

    :cond_40
    nop

    .line 2984
    :goto_41
    return v1

    .line 2987
    :cond_42
    return v1

    .line 2982
    :cond_43
    :goto_43
    return v6

    .line 2975
    .end local v2    # "n1":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "n2":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4    # "matchType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :catch_44
    move-exception v2

    .line 2976
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1
.end method

.method private static greylist-max-o bcdToChar(BI)C
    .registers 5
    .param p0, "b"    # B
    .param p1, "bcdExtType"    # I

    .line 1078
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1079
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    .line 1082
    :cond_8
    const/4 v0, 0x0

    .line 1083
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_f

    .line 1084
    const-string v0, "*#,N;"

    goto :goto_14

    .line 1085
    :cond_f
    const/4 v1, 0x2

    if-ne v1, p1, :cond_14

    .line 1086
    const-string v0, "*#abc"

    .line 1088
    :cond_14
    :goto_14
    if-eqz v0, :cond_26

    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1f

    goto :goto_26

    .line 1092
    :cond_1f
    add-int/lit8 v1, p0, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 1089
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1059
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist calledPartyBCDFragmentToString([BIII)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1069
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 1070
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist calledPartyBCDToString([BIII)Ljava/lang/String;
    .registers 16
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "bcdExtType"    # I

    .line 912
    const/4 v0, 0x0

    .line 913
    .local v0, "prependPlus":Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 915
    .local v1, "ret":Ljava/lang/StringBuilder;
    const-string v2, ""

    const/4 v4, 0x2

    if-ge p2, v4, :cond_10

    .line 916
    return-object v2

    .line 920
    :cond_10
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_19

    .line 921
    const/4 v0, 0x1

    .line 924
    :cond_19
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v1, p0, v5, v6, p3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V

    .line 927
    if-eqz v0, :cond_29

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_29

    .line 929
    return-object v2

    .line 932
    :cond_29
    if-eqz v0, :cond_e5

    .line 958
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 959
    .local v5, "retString":Ljava/lang/String;
    const-string v6, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 960
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 961
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const/4 v9, 0x4

    const-string v10, "+"

    const/4 v11, 0x3

    if-eqz v8, :cond_a1

    .line 962
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x5

    if-eqz v2, :cond_74

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 967
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 976
    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 977
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 985
    :cond_a1
    const-string v2, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 986
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 987
    .end local v7    # "m":Ljava/util/regex/Matcher;
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 992
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 993
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 1000
    :cond_d7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 1001
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "retString":Ljava/lang/String;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :cond_e5
    :goto_e5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2078
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 2079
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2080
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2081
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2082
    .local v0, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2083
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 2084
    nop

    .line 2085
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    .line 2086
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    .line 2084
    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2090
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_41
    return-object p0
.end method

.method public static greylist-max-o cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .line 2143
    move-object v0, p0

    .line 2145
    .local v0, "retStr":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, p2, :cond_8

    if-ne p1, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 2148
    .local v2, "useNanp":Z
    :goto_9
    if-eqz p0, :cond_6a

    .line 2149
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6a

    .line 2152
    const/4 v3, 0x0

    .line 2153
    .local v3, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2156
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2165
    :cond_17
    if-eqz v2, :cond_1e

    .line 2166
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "networkDialStr":Ljava/lang/String;
    goto :goto_22

    .line 2168
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_1e
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2172
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :goto_22
    invoke-static {v5, v2}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 2175
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 2176
    if-nez v0, :cond_30

    .line 2177
    move-object v0, v5

    goto :goto_34

    .line 2179
    :cond_30
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2188
    :goto_34
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 2190
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v6

    .line 2193
    .local v6, "dialableIndex":I
    if-lt v6, v1, :cond_4d

    .line 2194
    invoke-static {v6, v0, v3}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_57

    .line 2202
    :cond_4d
    if-gez v6, :cond_51

    .line 2203
    const-string v3, ""

    .line 2205
    :cond_51
    const-string/jumbo v7, "wrong postDialStr="

    invoke-static {v7, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    .end local v5    # "networkDialStr":Ljava/lang/String;
    .end local v6    # "dialableIndex":I
    :cond_57
    :goto_57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_6a

    .line 2185
    .restart local v5    # "networkDialStr":Ljava/lang/String;
    :cond_64
    const-string v1, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    return-object p0

    .line 2211
    .end local v3    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    .end local v5    # "networkDialStr":Ljava/lang/String;
    :cond_6a
    :goto_6a
    return-object v0
.end method

.method public static greylist-max-o cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2104
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2105
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2106
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2107
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2111
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    :cond_2e
    return-object p0
.end method

.method private static greylist-max-o charToBCD(CI)I
    .registers 6
    .param p0, "c"    # C
    .param p1, "bcdExtType"    # I

    .line 1096
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1097
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1100
    :cond_b
    const/4 v0, 0x0

    .line 1101
    .local v0, "extended":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_12

    .line 1102
    const-string v0, "*#,N;"

    goto :goto_17

    .line 1103
    :cond_12
    const/4 v1, 0x2

    if-ne v1, p1, :cond_17

    .line 1104
    const-string v0, "*#abc"

    .line 1106
    :cond_17
    :goto_17
    if-eqz v0, :cond_27

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    .line 1109
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    return v1

    .line 1107
    :cond_27
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid char for BCD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .line 2844
    const/4 v0, 0x0

    .line 2845
    .local v0, "trunk_prefix_was_read":Z
    :goto_1
    if-lt p2, p1, :cond_21

    .line 2846
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_13

    .line 2847
    if-eqz v0, :cond_11

    .line 2850
    return v2

    .line 2853
    :cond_11
    const/4 v0, 0x1

    goto :goto_1e

    .line 2855
    :cond_13
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2857
    return v2

    .line 2859
    :cond_1e
    :goto_1e
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2862
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110297

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 510
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static whitelist compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 497
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .line 518
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_b
    return v0
.end method

.method public static greylist compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "numNonDialableCharsInA":I
    const/4 v1, 0x0

    .line 542
    .local v1, "numNonDialableCharsInB":I
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v2

    .line 544
    .local v2, "minMatch":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_a8

    if-nez p1, :cond_e

    goto/16 :goto_a8

    .line 546
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1c

    goto/16 :goto_a7

    .line 550
    :cond_1c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 551
    .local v5, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v6

    .line 552
    .local v6, "ib":I
    const/4 v7, 0x0

    .line 554
    .local v7, "matched":I
    :goto_25
    if-ltz v5, :cond_5a

    if-ltz v6, :cond_5a

    .line 556
    const/4 v8, 0x0

    .line 558
    .local v8, "skipCmp":Z
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 560
    .local v9, "ca":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_39

    .line 561
    add-int/lit8 v5, v5, -0x1

    .line 562
    const/4 v8, 0x1

    .line 563
    add-int/lit8 v0, v0, 0x1

    .line 566
    :cond_39
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 568
    .local v10, "cb":C
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_48

    .line 569
    add-int/lit8 v6, v6, -0x1

    .line 570
    const/4 v8, 0x1

    .line 571
    add-int/lit8 v1, v1, 0x1

    .line 574
    :cond_48
    if-nez v8, :cond_59

    .line 575
    if-eq v10, v9, :cond_53

    const/16 v11, 0x4e

    if-eq v9, v11, :cond_53

    if-eq v10, v11, :cond_53

    .line 576
    goto :goto_5a

    .line 578
    :cond_53
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    .line 580
    .end local v8    # "skipCmp":Z
    .end local v9    # "ca":C
    .end local v10    # "cb":C
    :cond_59
    goto :goto_25

    .line 582
    :cond_5a
    :goto_5a
    if-ge v7, v2, :cond_6c

    .line 583
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v0

    .line 584
    .local v8, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v1

    .line 589
    .local v9, "effectiveBLen":I
    if-ne v8, v9, :cond_6b

    if-ne v8, v7, :cond_6b

    .line 590
    return v4

    .line 593
    :cond_6b
    return v3

    .line 597
    .end local v8    # "effectiveALen":I
    .end local v9    # "effectiveBLen":I
    :cond_6c
    if-lt v7, v2, :cond_73

    if-ltz v5, :cond_72

    if-gez v6, :cond_73

    .line 598
    :cond_72
    return v4

    .line 610
    :cond_73
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_84

    add-int/lit8 v8, v6, 0x1

    .line 611
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 613
    return v4

    .line 616
    :cond_84
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_95

    add-int/lit8 v8, v6, 0x1

    .line 617
    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 619
    return v4

    .line 622
    :cond_95
    add-int/lit8 v8, v6, 0x1

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a6

    add-int/lit8 v8, v5, 0x1

    .line 623
    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 625
    return v4

    .line 628
    :cond_a6
    return v3

    .line 547
    .end local v5    # "ia":I
    .end local v6    # "ib":I
    .end local v7    # "matched":I
    :cond_a7
    :goto_a7
    return v3

    .line 544
    :cond_a8
    :goto_a8
    if-ne p0, p1, :cond_ab

    move v3, v4

    :cond_ab
    return v3
.end method

.method public static greylist compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 637
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 22
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .line 646
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_10f

    if-nez v1, :cond_12

    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_113

    .line 648
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1f

    .line 649
    return v4

    .line 652
    :cond_1f
    const/4 v5, 0x0

    .line 653
    .local v5, "forwardIndexA":I
    const/4 v6, 0x0

    .line 655
    .local v6, "forwardIndexB":I
    nop

    .line 656
    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 657
    .local v7, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    nop

    .line 658
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v8

    .line 659
    .local v8, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v9, 0x0

    .line 660
    .local v9, "bothHasCountryCallingCode":Z
    const/4 v10, 0x1

    .line 661
    .local v10, "okToIgnorePrefix":Z
    const/4 v11, 0x0

    .line 662
    .local v11, "trunkPrefixIsOmittedA":Z
    const/4 v12, 0x0

    .line 663
    .local v12, "trunkPrefixIsOmittedB":Z
    if-eqz v7, :cond_41

    if-eqz v8, :cond_41

    .line 664
    iget v13, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    iget v14, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    if-eq v13, v14, :cond_3a

    .line 666
    return v4

    .line 670
    :cond_3a
    const/4 v10, 0x0

    .line 671
    const/4 v9, 0x1

    .line 672
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 673
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_61

    .line 674
    :cond_41
    if-nez v7, :cond_47

    if-nez v8, :cond_47

    .line 677
    const/4 v10, 0x0

    goto :goto_61

    .line 679
    :cond_47
    if-eqz v7, :cond_4c

    .line 680
    iget v5, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_54

    .line 682
    :cond_4c
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 683
    .local v13, "tmp":I
    if-ltz v13, :cond_54

    .line 684
    move v5, v13

    .line 685
    const/4 v11, 0x1

    .line 688
    .end local v13    # "tmp":I
    :cond_54
    :goto_54
    if-eqz v8, :cond_59

    .line 689
    iget v6, v8, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_61

    .line 691
    :cond_59
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v13

    .line 692
    .restart local v13    # "tmp":I
    if-ltz v13, :cond_61

    .line 693
    move v6, v13

    .line 694
    const/4 v12, 0x1

    .line 699
    .end local v13    # "tmp":I
    :cond_61
    :goto_61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v3

    .line 700
    .local v13, "backwardIndexA":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v3

    .line 701
    .local v14, "backwardIndexB":I
    :goto_6b
    if-lt v13, v5, :cond_99

    if-lt v14, v6, :cond_99

    .line 702
    const/4 v15, 0x0

    .line 703
    .local v15, "skip_compare":Z
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 704
    .local v3, "chA":C
    move/from16 v17, v4

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 705
    .local v4, "chB":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_83

    .line 706
    add-int/lit8 v13, v13, -0x1

    .line 707
    const/4 v15, 0x1

    .line 709
    :cond_83
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8c

    .line 710
    add-int/lit8 v14, v14, -0x1

    .line 711
    const/4 v15, 0x1

    .line 714
    :cond_8c
    if-nez v15, :cond_95

    .line 715
    if-eq v3, v4, :cond_91

    .line 716
    return v17

    .line 718
    :cond_91
    add-int/lit8 v13, v13, -0x1

    .line 719
    add-int/lit8 v14, v14, -0x1

    .line 721
    .end local v3    # "chA":C
    .end local v4    # "chB":C
    .end local v15    # "skip_compare":Z
    :cond_95
    move/from16 v4, v17

    const/4 v3, 0x1

    goto :goto_6b

    .line 701
    :cond_99
    move/from16 v17, v4

    .line 723
    if-eqz v10, :cond_c7

    .line 724
    if-eqz v11, :cond_a1

    if-le v5, v13, :cond_a7

    .line 725
    :cond_a1
    invoke-static {v0, v5, v13}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_b3

    .line 726
    :cond_a7
    if-eqz v2, :cond_b0

    .line 736
    move/from16 v3, v17

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 738
    :cond_b0
    move/from16 v3, v17

    return v3

    .line 741
    :cond_b3
    if-eqz v12, :cond_b7

    if-le v6, v14, :cond_bd

    .line 742
    :cond_b7
    invoke-static {v1, v5, v14}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_10c

    .line 743
    :cond_bd
    if-eqz v2, :cond_c5

    .line 744
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 746
    :cond_c5
    const/4 v3, 0x0

    return v3

    .line 759
    :cond_c7
    xor-int/lit8 v3, v9, 0x1

    .line 760
    .local v3, "maybeNamp":Z
    :goto_c9
    if-lt v13, v5, :cond_ea

    .line 761
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 762
    .local v4, "chA":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v15

    if-eqz v15, :cond_e4

    .line 763
    if-eqz v3, :cond_e1

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v15

    const/4 v2, 0x1

    if-ne v15, v2, :cond_e1

    .line 764
    const/4 v2, 0x0

    move v3, v2

    .end local v3    # "maybeNamp":Z
    .local v2, "maybeNamp":Z
    goto :goto_e4

    .line 766
    .end local v2    # "maybeNamp":Z
    .restart local v3    # "maybeNamp":Z
    :cond_e1
    const/16 v17, 0x0

    return v17

    .line 769
    :cond_e4
    :goto_e4
    nop

    .end local v4    # "chA":C
    add-int/lit8 v13, v13, -0x1

    .line 770
    move/from16 v2, p2

    goto :goto_c9

    .line 771
    :cond_ea
    :goto_ea
    if-lt v14, v6, :cond_10c

    .line 772
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 773
    .local v2, "chB":C
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_106

    .line 774
    if-eqz v3, :cond_103

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_103

    .line 775
    const/4 v3, 0x0

    const/16 v17, 0x0

    goto :goto_108

    .line 777
    :cond_103
    const/16 v17, 0x0

    return v17

    .line 773
    :cond_106
    const/16 v17, 0x0

    .line 780
    :goto_108
    nop

    .end local v2    # "chB":C
    add-int/lit8 v14, v14, -0x1

    .line 781
    goto :goto_ea

    .line 784
    .end local v3    # "maybeNamp":Z
    :cond_10c
    const/16 v16, 0x1

    return v16

    .line 646
    .end local v5    # "forwardIndexA":I
    .end local v6    # "forwardIndexB":I
    .end local v7    # "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v8    # "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .end local v9    # "bothHasCountryCallingCode":Z
    .end local v10    # "okToIgnorePrefix":Z
    .end local v11    # "trunkPrefixIsOmittedA":Z
    .end local v12    # "trunkPrefixIsOmittedB":Z
    .end local v13    # "backwardIndexA":I
    .end local v14    # "backwardIndexB":I
    :cond_10f
    move/from16 v16, v3

    move/from16 v17, v4

    .line 647
    :goto_113
    if-ne v0, v1, :cond_118

    move/from16 v3, v16

    goto :goto_11a

    :cond_118
    move/from16 v3, v17

    :goto_11a
    return v3
.end method

.method public static greylist-max-o convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 390
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .line 1992
    if-nez p0, :cond_3

    .line 1993
    return-object p0

    .line 1995
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1996
    .local v0, "len":I
    if-nez v0, :cond_a

    .line 1997
    return-object p0

    .line 2000
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2002
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1f

    .line 2003
    aget-char v3, v1, v2

    .line 2005
    .local v3, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v1, v2

    .line 2002
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2008
    .end local v2    # "i":I
    :cond_1f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static greylist convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 401
    if-nez p0, :cond_4

    .line 402
    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 405
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 407
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2b

    .line 408
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 410
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 411
    const/16 v3, 0x2c

    goto :goto_25

    .line 412
    :cond_1d
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 413
    const/16 v3, 0x3b

    .line 415
    :cond_25
    :goto_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 417
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .param p0, "source"    # Landroid/net/Uri;

    .line 2473
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2475
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2477
    return-object p0

    .line 2480
    :cond_e
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 2481
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2483
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1c

    .line 2485
    return-object p0

    .line 2487
    :cond_1c
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 2489
    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o convertToEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 2890
    if-eqz p0, :cond_88

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_88

    .line 2894
    :cond_a
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2897
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2898
    return-object p1

    .line 2901
    :cond_15
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-nez v1, :cond_26

    .line 2902
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    .line 2907
    :cond_26
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    if-eqz v1, :cond_87

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_30

    goto :goto_87

    .line 2911
    :cond_30
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sConvertToEmergencyMap:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_35
    if-ge v4, v2, :cond_86

    aget-object v5, v1, v4

    .line 2913
    .local v5, "convertMap":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2914
    .local v6, "entry":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2915
    .local v7, "filterNumbers":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2916
    .local v8, "convertedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_48

    .line 2917
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2919
    :cond_48
    if-eqz v6, :cond_61

    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_61

    .line 2920
    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 2921
    aget-object v9, v6, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_61

    .line 2922
    aget-object v9, v6, v3

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2926
    :cond_61
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_83

    if-eqz v7, :cond_83

    array-length v9, v7

    if-nez v9, :cond_6d

    .line 2928
    goto :goto_83

    .line 2931
    :cond_6d
    array-length v9, v7

    move v10, v3

    :goto_6f
    if-ge v10, v9, :cond_83

    aget-object v11, v7, v10

    .line 2934
    .local v11, "filterNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_80

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_80

    .line 2937
    return-object v8

    .line 2931
    .end local v11    # "filterNumber":Ljava/lang/String;
    :cond_80
    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    .line 2911
    .end local v5    # "convertMap":Ljava/lang/String;
    .end local v6    # "entry":[Ljava/lang/String;
    .end local v7    # "filterNumbers":[Ljava/lang/String;
    .end local v8    # "convertedNumber":Ljava/lang/String;
    :cond_83
    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 2941
    :cond_86
    return-object p1

    .line 2908
    :cond_87
    :goto_87
    return-object p1

    .line 2891
    .end local v0    # "normalizedNumber":Ljava/lang/String;
    :cond_88
    :goto_88
    return-object p1
.end method

.method public static whitelist createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .registers 6
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    .line 2285
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2286
    return-object v0

    .line 2290
    :cond_4
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2291
    .local v1, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    .line 2296
    .local v2, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_9
    invoke-virtual {v1, p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0
    :try_end_d
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_9 .. :try_end_d} :catch_f

    move-object v2, v0

    .line 2298
    goto :goto_10

    .line 2297
    :catch_f
    move-exception v0

    .line 2301
    :goto_10
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    .line 2302
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v2, :cond_1f

    .line 2305
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_3b

    .line 2307
    :cond_1f
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2308
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2310
    :cond_30
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    .line 2312
    :goto_3b
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .line 2222
    if-nez p0, :cond_4

    .line 2223
    const/4 v0, 0x0

    return-object v0

    .line 2225
    :cond_4
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 2226
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2227
    return-object v0
.end method

.method public static whitelist extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 287
    if-nez p0, :cond_4

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 292
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_57

    .line 295
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 297
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 298
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 299
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 300
    :cond_21
    const/16 v5, 0x2b

    if-ne v3, v5, :cond_43

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3f

    const-string v6, "*31#"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    const-string v6, "#31#"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 304
    :cond_3f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_42
    goto :goto_54

    :cond_43
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 308
    :cond_4d
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 309
    goto :goto_57

    .line 294
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 313
    .end local v2    # "i":I
    :cond_57
    :goto_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 327
    if-nez p0, :cond_4

    .line 328
    const/4 v0, 0x0

    return-object v0

    .line 331
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 332
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 333
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 335
    .local v2, "haveSeenPlus":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_31

    .line 336
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 337
    .local v4, "c":C
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1d

    .line 338
    if-eqz v2, :cond_1c

    .line 339
    goto :goto_2e

    .line 341
    :cond_1c
    const/4 v2, 0x1

    .line 343
    :cond_1d
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 344
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 345
    :cond_27
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 346
    goto :goto_31

    .line 335
    .end local v4    # "c":C
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 350
    .end local v3    # "i":I
    :cond_31
    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 470
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 473
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .line 477
    .local v1, "trimIndex":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 478
    .local v3, "s":I
    :goto_13
    if-ge v2, v3, :cond_25

    .line 480
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 481
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 482
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    .end local v4    # "c":C
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 486
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .param p0, "postDialStr"    # Ljava/lang/String;

    .line 2525
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2526
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2527
    .local v1, "c":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2528
    return v0

    .line 2525
    .end local v1    # "c":C
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2531
    .end local v0    # "index":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1526
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1527
    return-void
.end method

.method public static whitelist formatNanpNumber(Landroid/text/Editable;)V
    .registers 12
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1410
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1411
    .local v0, "length":I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 1413
    return-void

    .line 1414
    :cond_d
    const/4 v1, 0x5

    if-gt v0, v1, :cond_11

    .line 1416
    return-void

    .line 1419
    :cond_11
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1422
    .local v2, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1423
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1428
    const/4 v3, 0x3

    new-array v4, v3, [I

    .line 1429
    .local v4, "dashPositions":[I
    const/4 v5, 0x0

    .line 1431
    .local v5, "numDashes":I
    const/4 v6, 0x1

    .line 1432
    .local v6, "state":I
    const/4 v7, 0x0

    .line 1433
    .local v7, "numDigits":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_24
    if-ge v8, v0, :cond_61

    .line 1434
    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    .line 1435
    .local v9, "c":C
    const/4 v10, 0x2

    packed-switch v9, :pswitch_data_90

    :pswitch_2e
    goto :goto_5d

    .line 1437
    :pswitch_2f
    if-eqz v7, :cond_33

    if-ne v6, v10, :cond_35

    .line 1438
    :cond_33
    const/4 v6, 0x3

    .line 1439
    goto :goto_5a

    .line 1451
    :cond_35
    :pswitch_35
    if-ne v6, v10, :cond_3b

    .line 1453
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1454
    return-void

    .line 1455
    :cond_3b
    if-ne v6, v3, :cond_43

    .line 1457
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "numDashes":I
    .local v10, "numDashes":I
    aput v8, v4, v5

    move v5, v10

    goto :goto_50

    .line 1458
    .end local v10    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_43
    const/4 v10, 0x4

    if-eq v6, v10, :cond_50

    if-eq v7, v3, :cond_4b

    const/4 v10, 0x6

    if-ne v7, v10, :cond_50

    .line 1460
    :cond_4b
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "numDashes":I
    .restart local v10    # "numDashes":I
    aput v8, v4, v5

    move v5, v10

    .line 1462
    .end local v10    # "numDashes":I
    .restart local v5    # "numDashes":I
    :cond_50
    :goto_50
    const/4 v6, 0x1

    .line 1463
    add-int/lit8 v7, v7, 0x1

    .line 1464
    goto :goto_5a

    .line 1467
    :pswitch_54
    const/4 v6, 0x4

    .line 1468
    goto :goto_5a

    .line 1471
    :pswitch_56
    if-nez v8, :cond_5d

    .line 1473
    const/4 v6, 0x2

    .line 1474
    nop

    .line 1433
    .end local v9    # "c":C
    :goto_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 1479
    .restart local v9    # "c":C
    :cond_5d
    :goto_5d
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1480
    return-void

    .line 1484
    .end local v8    # "i":I
    .end local v9    # "c":C
    :cond_61
    const/4 v1, 0x7

    if-ne v7, v1, :cond_66

    .line 1486
    add-int/lit8 v5, v5, -0x1

    .line 1490
    :cond_66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_67
    if-ge v1, v5, :cond_77

    .line 1491
    aget v3, v4, v1

    .line 1492
    .local v3, "pos":I
    add-int v8, v3, v1

    add-int v9, v3, v1

    const-string v10, "-"

    invoke-interface {p0, v8, v9, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1490
    .end local v3    # "pos":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 1496
    .end local v1    # "i":I
    :cond_77
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1497
    .local v1, "len":I
    :goto_7b
    if-lez v1, :cond_8f

    .line 1498
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_8f

    .line 1499
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1500
    add-int/lit8 v1, v1, -0x1

    goto :goto_7b

    .line 1505
    :cond_8f
    return-void

    :pswitch_data_90
    .packed-switch 0x2b
        :pswitch_56
        :pswitch_2e
        :pswitch_54
        :pswitch_2e
        :pswitch_2e
        :pswitch_35
        :pswitch_2f
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static whitelist formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1309
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1310
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1328
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1329
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1330
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1650
    const-string v0, "SG"

    const-string v1, "JP"

    const-string v2, "KR"

    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_df

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_df

    .line 1654
    :cond_18
    if-eqz p1, :cond_20

    .line 1655
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1658
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatNumber: defaultCountryIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PhoneNumberUtils"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 1661
    .local v3, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v4, 0x0

    .line 1663
    .local v4, "result":Ljava/lang/String;
    :try_start_3d
    invoke-virtual {v3, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 1665
    .local v5, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->nationalCountryCodeFormattingForLocalCalls()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1666
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CODES_TO_FORMAT_NATIONALLY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1667
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6c

    .line 1668
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v0, v1, :cond_6c

    .line 1670
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v5, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1672
    :cond_6c
    invoke-virtual {v3, v5, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1675
    :cond_71
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 1676
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v6

    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v2

    if-ne v6, v2, :cond_91

    .line 1677
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v2

    sget-object v6, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v2, v6, :cond_91

    .line 1684
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v5, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    goto :goto_dc

    .line 1685
    .end local v0    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_91
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1686
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {v3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_b1

    .line 1687
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v1, v2, :cond_b1

    .line 1693
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v5, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_dc

    .line 1694
    .end local v0    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_b1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->removeCountryCodeFromLocalSingaporeCalls()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1695
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1696
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_d7

    .line 1697
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v0, v1, :cond_d7

    .line 1703
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v5, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_dc

    .line 1705
    .end local v0    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_d7
    invoke-virtual {v3, v5, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_db
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_3d .. :try_end_db} :catch_dd

    move-object v4, v0

    .line 1710
    .end local v5    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_dc
    goto :goto_de

    .line 1708
    :catch_dd
    move-exception v0

    .line 1711
    :goto_de
    return-object v4

    .line 1651
    .end local v3    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v4    # "result":Ljava/lang/String;
    :cond_df
    :goto_df
    return-object p0
.end method

.method public static whitelist formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .line 1734
    if-eqz p2, :cond_8

    .line 1735
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 1738
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1739
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 1740
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1741
    return-object p0

    .line 1739
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1744
    .end local v1    # "i":I
    :cond_1d
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 1746
    .local v1, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_55

    .line 1747
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_55

    .line 1751
    :try_start_33
    const-string v2, "ZZ"

    invoke-virtual {v1, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1752
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1753
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 1755
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_50
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_33 .. :try_end_50} :catch_54

    if-gtz v4, :cond_53

    .line 1756
    move-object p2, v3

    .line 1759
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_53
    goto :goto_55

    .line 1758
    :catch_54
    move-exception v2

    .line 1761
    :cond_55
    :goto_55
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1762
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_5d

    move-object v3, v2

    goto :goto_5e

    :cond_5d
    move-object v3, p0

    :goto_5e
    return-object v3
.end method

.method public static whitelist formatNumber(Landroid/text/Editable;I)V
    .registers 8
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1361
    move v0, p1

    .line 1363
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_34

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_34

    .line 1364
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1c

    .line 1365
    const/4 v0, 0x1

    goto :goto_34

    .line 1366
    :cond_1c
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_33

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x38

    if-ne v1, v3, :cond_33

    .line 1367
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_33

    .line 1368
    const/4 v0, 0x2

    goto :goto_34

    .line 1370
    :cond_33
    const/4 v0, 0x0

    .line 1374
    :cond_34
    :goto_34
    packed-switch v0, :pswitch_data_44

    .line 1385
    return-void

    .line 1379
    :pswitch_38
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    .line 1380
    return-void

    .line 1376
    :pswitch_3c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 1377
    return-void

    .line 1382
    :pswitch_40
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1383
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3c
        :pswitch_38
    .end packed-switch
.end method

.method private static greylist-max-o formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 6
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1591
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1593
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_4
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1594
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1595
    invoke-virtual {v0, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_4 .. :try_end_12} :catch_14

    return-object v2

    .line 1594
    .end local v1    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_13
    goto :goto_15

    .line 1597
    :catch_14
    move-exception v1

    :goto_15
    nop

    .line 1599
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1553
    if-eqz p1, :cond_8

    .line 1554
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1557
    :cond_8
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1568
    if-eqz p1, :cond_8

    .line 1569
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1572
    :cond_8
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getCurrentIdp(Z)Ljava/lang/String;
    .registers 4
    .param p0, "useNanp"    # Z

    .line 2331
    const/4 v0, 0x0

    .line 2332
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 2333
    const-string v0, "011"

    goto :goto_13

    .line 2336
    :cond_6
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_idp_string()Ljava/util/Optional;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2338
    :goto_13
    return-object v0
.end method

.method private static greylist-max-o getDefaultVoiceSubId()I
    .registers 1

    .line 2869
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static whitelist getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1344
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static greylist-max-o getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 4
    .param p0, "country"    # Ljava/lang/String;

    .line 2351
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v0, v0

    .line 2352
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_15

    .line 2353
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 2354
    const/4 v2, 0x1

    return v2

    .line 2352
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2357
    .end local v1    # "i":I
    :cond_15
    const-string/jumbo v1, "jp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    .line 2358
    const/4 v1, 0x2

    return v1

    .line 2360
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist getMinMatch()I
    .registers 2

    .line 184
    sget v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    if-nez v0, :cond_11

    .line 185
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 188
    :cond_11
    sget v0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    return v0
.end method

.method public static blacklist getMinMatchForTest()I
    .registers 1

    .line 197
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v0

    return v0
.end method

.method public static whitelist getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 227
    .local v3, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    if-nez v3, :cond_9

    .line 228
    return-object v0

    .line 231
    :cond_9
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "scheme":Ljava/lang/String;
    if-nez v8, :cond_10

    .line 233
    return-object v0

    .line 236
    :cond_10
    const-string/jumbo v2, "tel"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string/jumbo v2, "sip"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto/16 :goto_87

    .line 240
    :cond_24
    if-nez p1, :cond_27

    .line 241
    return-object v0

    .line 244
    :cond_27
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 248
    .local v0, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 249
    .local v10, "authority":Ljava/lang/String;
    const-string v2, "contacts"

    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 250
    const-string/jumbo v0, "number"

    move-object v11, v0

    goto :goto_4a

    .line 251
    :cond_3d
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 252
    const-string v0, "data1"

    move-object v11, v0

    goto :goto_4a

    .line 251
    :cond_49
    move-object v11, v0

    .line 255
    .end local v0    # "phoneColumn":Ljava/lang/String;
    .local v11, "phoneColumn":Ljava/lang/String;
    :goto_4a
    const/4 v12, 0x0

    .line 257
    .local v12, "c":Landroid/database/Cursor;
    :try_start_4b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 259
    if-eqz v12, :cond_6c

    .line 260
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 261
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_6b} :catch_74
    .catchall {:try_start_4b .. :try_end_6b} :catchall_72

    move-object v1, v0

    .line 267
    :cond_6c
    if-eqz v12, :cond_80

    .line 268
    :goto_6e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_80

    .line 267
    :catchall_72
    move-exception v0

    goto :goto_81

    .line 264
    :catch_74
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_75
    const-string v2, "PhoneNumberUtils"

    const-string v4, "Error getting phone number."

    invoke-static {v2, v4, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_72

    .line 267
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v12, :cond_80

    .line 268
    goto :goto_6e

    .line 272
    :cond_80
    :goto_80
    return-object v1

    .line 267
    :goto_81
    if-eqz v12, :cond_86

    .line 268
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_86
    throw v0

    .line 237
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "authority":Ljava/lang/String;
    .end local v11    # "phoneColumn":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_87
    :goto_87
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 811
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    .line 815
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2438
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2439
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_e

    .line 2440
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2442
    :cond_e
    if-gez v0, :cond_33

    .line 2443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2447
    :cond_33
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .param p0, "a"    # Ljava/lang/String;

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 448
    .local v0, "origLength":I
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 449
    .local v1, "pIndex":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 451
    .local v2, "wIndex":I
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v3

    .line 453
    .local v3, "trimIndex":I
    if-gez v3, :cond_19

    .line 454
    add-int/lit8 v4, v0, -0x1

    return v4

    .line 456
    :cond_19
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method private static greylist-max-o internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BIII)V
    .registers 10
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bcdExtType"    # I

    .line 1013
    move v0, p2

    .local v0, "i":I
    :goto_1
    add-int v1, p3, p2

    if-ge v0, v1, :cond_31

    .line 1017
    aget-byte v1, p1, v0

    const/16 v2, 0xf

    and-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {v1, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 1019
    .local v1, "c":C
    if-nez v1, :cond_12

    .line 1020
    return-void

    .line 1022
    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1031
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1033
    .local v3, "b":B
    if-ne v3, v2, :cond_24

    add-int/lit8 v2, v0, 0x1

    add-int v4, p3, p2

    if-ne v2, v4, :cond_24

    .line 1035
    goto :goto_31

    .line 1038
    :cond_24
    invoke-static {v3, p4}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(BI)C

    move-result v1

    .line 1039
    if-nez v1, :cond_2b

    .line 1040
    return-void

    .line 1043
    :cond_2b
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1013
    .end local v1    # "c":C
    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1046
    .end local v0    # "i":I
    :cond_31
    :goto_31
    return-void
.end method

.method private static greylist-max-o internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .line 824
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 826
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 827
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 829
    .local v1, "length":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    move v3, v1

    .line 830
    .local v3, "s":I
    :goto_10
    if-ltz v2, :cond_20

    sub-int v4, v3, v2

    if-gt v4, p1, :cond_20

    .line 832
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 834
    .local v4, "c":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 830
    .end local v4    # "c":C
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 837
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final whitelist is12Key(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 141
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_13

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_13

    const/16 v0, 0x23

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static greylist-max-o isCountryCallingCode(I)Z
    .registers 2
    .param p0, "countryCallingCodeCandidate"    # I

    .line 2699
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static final whitelist isDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 147
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_1b

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private static greylist-max-o isDialable(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 1136
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1137
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1138
    const/4 v2, 0x0

    return v2

    .line 1136
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1141
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist isEmergencyNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1848
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1826
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isEmergencyNumberInternal(ILjava/lang/String;)Z
    .registers 5
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 1862
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1863
    :catch_9
    move-exception v0

    .line 1864
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmergencyNumberInternal: RuntimeException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneNumberUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1128
    const/4 v0, 0x0

    return v0

    .line 1131
    :cond_8
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1132
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static whitelist isISODigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 135
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .line 1613
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1614
    return v1

    .line 1618
    :cond_8
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_37

    .line 1622
    :cond_19
    if-eqz p1, :cond_21

    .line 1623
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1626
    :cond_21
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1628
    .local v0, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_25
    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1629
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v4
    :try_end_31
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_25 .. :try_end_31} :catch_35

    if-eq v3, v4, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1

    .line 1630
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_35
    move-exception v2

    .line 1631
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v1

    .line 1619
    .end local v0    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_37
    :goto_37
    return v1
.end method

.method public static whitelist isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1882
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static greylist isNanp(Ljava/lang/String;)Z
    .registers 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2370
    const/4 v0, 0x0

    .line 2371
    .local v0, "retVal":Z
    if-eqz p0, :cond_35

    .line 2372
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3b

    .line 2373
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2374
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2375
    const/4 v0, 0x1

    .line 2376
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_23
    if-ge v1, v2, :cond_34

    .line 2377
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2378
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_31

    .line 2379
    const/4 v0, 0x0

    .line 2380
    goto :goto_34

    .line 2376
    .end local v3    # "c":C
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .end local v1    # "i":I
    :cond_34
    :goto_34
    goto :goto_3b

    .line 2386
    :cond_35
    const-string/jumbo v1, "isNanp: null dialStr passed in"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :cond_3b
    :goto_3b
    return v0
.end method

.method public static final whitelist isNonSeparator(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 159
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x23

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private static greylist-max-o isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .param p0, "address"    # Ljava/lang/String;

    .line 1145
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 1146
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1147
    const/4 v2, 0x0

    return v2

    .line 1145
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1150
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .line 2395
    const/4 v0, 0x0

    .line 2396
    .local v0, "retVal":Z
    if-eqz p0, :cond_19

    .line 2397
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2398
    .local v1, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2399
    const/4 v0, 0x1

    .line 2401
    .end local v1    # "newDialStr":Ljava/lang/String;
    :cond_18
    goto :goto_1f

    .line 2402
    :cond_19
    const-string/jumbo v1, "isOneNanp: null dialStr passed in"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :goto_1f
    return v0
.end method

.method private static greylist-max-o isPause(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 173
    const/16 v0, 0x70

    if-eq p0, v0, :cond_b

    const/16 v0, 0x50

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static final whitelist isReallyDialable(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 153
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_17

    const/16 v0, 0x23

    if-eq p0, v0, :cond_17

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private static greylist-max-o isSeparator(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 211
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static final whitelist isStartsPostDial(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 168
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_b

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static greylist-max-o isToneWait(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 178
    const/16 v0, 0x77

    if-eq p0, v0, :cond_b

    const/16 v0, 0x57

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static greylist-max-o isTwoToNine(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 2342
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 2343
    const/4 v0, 0x1

    return v0

    .line 2345
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2421
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static greylist-max-o isVoiceMailNumber(ILjava/lang/String;)Z
    .registers 3
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 1912
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1934
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 1935
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    goto :goto_c

    .line 1938
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1941
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_c
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 1942
    .local v2, "vmNumber":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_14} :catch_50

    .line 1948
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .local v3, "mdn":Ljava/lang/String;
    nop

    .line 1951
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1952
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1954
    return v0

    .line 1958
    :cond_20
    const/4 v1, 0x0

    .line 1959
    .local v1, "compareWithMdn":Z
    if-eqz p0, :cond_3b

    .line 1960
    nop

    .line 1961
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CarrierConfigManager;

    .line 1962
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v4, :cond_3b

    .line 1963
    invoke-virtual {v4, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 1964
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_3b

    .line 1965
    const-string/jumbo v6, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1972
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "b":Landroid/os/PersistableBundle;
    :cond_3b
    if-eqz v1, :cond_4b

    .line 1974
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-static {p2, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    :cond_49
    const/4 v0, 0x1

    :cond_4a
    return v0

    .line 1977
    :cond_4b
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1945
    .end local v1    # "compareWithMdn":Z
    .end local v2    # "vmNumber":Ljava/lang/String;
    .end local v3    # "mdn":Ljava/lang/String;
    :catch_50
    move-exception v1

    .line 1947
    .local v1, "ex":Ljava/lang/SecurityException;
    return v0
.end method

.method public static whitelist isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .line 1896
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "address"    # Ljava/lang/String;

    .line 1118
    nop

    .line 1119
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1123
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 1121
    :goto_1c
    return v1
.end method

.method public static whitelist isWpsCallNumber(Ljava/lang/String;)Z
    .registers 2
    .param p0, "number"    # Ljava/lang/String;

    .line 2998
    if-eqz p0, :cond_1c

    const-string v0, "*272"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2999
    const-string v0, "*31#*272"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3000
    const-string v0, "#31#*272"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 2998
    :goto_1d
    return v0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 435
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method private static greylist-max-o matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2572
    const/4 v0, 0x0

    .line 2573
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p1, :cond_45

    .line 2574
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2576
    .local v3, "c":C
    const/16 v4, 0x31

    const/16 v5, 0x30

    packed-switch v0, :pswitch_data_50

    .line 2595
    :pswitch_10
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 2590
    :pswitch_17
    if-ne v3, v4, :cond_1b

    const/4 v0, 0x5

    goto :goto_42

    .line 2591
    :cond_1b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 2584
    :pswitch_22
    if-ne v3, v5, :cond_26

    const/4 v0, 0x3

    goto :goto_42

    .line 2585
    :cond_26
    if-ne v3, v4, :cond_2a

    const/4 v0, 0x4

    goto :goto_42

    .line 2586
    :cond_2a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 2578
    :pswitch_31
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_37

    const/4 v0, 0x1

    goto :goto_42

    .line 2579
    :cond_37
    if-ne v3, v5, :cond_3b

    const/4 v0, 0x2

    goto :goto_42

    .line 2580
    :cond_3b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_42

    return v2

    .line 2573
    .end local v3    # "c":C
    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2601
    .end local v1    # "i":I
    :cond_45
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4e

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4f

    :cond_4e
    move v2, v1

    :cond_4f
    return v2

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_31
        :pswitch_10
        :pswitch_22
        :pswitch_10
        :pswitch_17
    .end packed-switch
.end method

.method private static greylist-max-o matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2611
    const/4 v0, 0x0

    .line 2612
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p1, :cond_64

    .line 2613
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2615
    .local v3, "c":C
    const/16 v4, 0x31

    const/16 v5, 0x30

    packed-switch v0, :pswitch_data_70

    .line 2647
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2642
    :pswitch_17
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 2643
    :cond_20
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2629
    :pswitch_27
    if-ne v3, v4, :cond_2b

    const/4 v0, 0x5

    goto :goto_61

    .line 2630
    :cond_2b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2623
    :pswitch_32
    if-ne v3, v5, :cond_36

    const/4 v0, 0x3

    goto :goto_61

    .line 2624
    :cond_36
    if-ne v3, v4, :cond_3a

    const/4 v0, 0x4

    goto :goto_61

    .line 2625
    :cond_3a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2636
    :pswitch_41
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v0, 0x6

    goto :goto_61

    .line 2637
    :cond_49
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2617
    :pswitch_50
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_56

    const/4 v0, 0x1

    goto :goto_61

    .line 2618
    :cond_56
    if-ne v3, v5, :cond_5a

    const/4 v0, 0x2

    goto :goto_61

    .line 2619
    :cond_5a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    .line 2612
    .end local v3    # "c":C
    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2651
    .end local v1    # "i":I
    :cond_64
    const/4 v1, 0x6

    if-eq v0, v1, :cond_6e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6e

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6f

    :cond_6e
    const/4 v2, 0x1

    :cond_6f
    return v2

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_50
        :pswitch_41
        :pswitch_32
        :pswitch_41
        :pswitch_27
        :pswitch_41
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private static greylist-max-o matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2659
    const/4 v0, 0x0

    .line 2661
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_1b

    .line 2662
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2664
    .local v2, "c":C
    const/16 v3, 0x30

    if-ne v2, v3, :cond_10

    if-nez v0, :cond_10

    .line 2665
    const/4 v0, 0x1

    goto :goto_18

    .line 2666
    :cond_10
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2667
    const/4 v3, 0x0

    return v3

    .line 2661
    .end local v2    # "c":C
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2671
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method private static greylist-max-o minPositive(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 423
    if-ltz p0, :cond_a

    if-ltz p1, :cond_a

    .line 424
    if-ge p0, p1, :cond_8

    move v0, p0

    goto :goto_9

    :cond_8
    move v0, p1

    :goto_9
    return v0

    .line 425
    :cond_a
    if-ltz p0, :cond_d

    .line 426
    return p0

    .line 427
    :cond_d
    if-ltz p1, :cond_10

    .line 428
    return p1

    .line 430
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1159
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 1169
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 1774
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1775
    const-string v0, ""

    return-object v0

    .line 1778
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1779
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1780
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_50

    .line 1781
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1783
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 1784
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 1785
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 1786
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_34

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_34

    .line 1787
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 1788
    :cond_34
    const/16 v5, 0x61

    if-lt v3, v5, :cond_3c

    const/16 v5, 0x7a

    if-le v3, v5, :cond_44

    :cond_3c
    const/16 v5, 0x41

    if-lt v3, v5, :cond_4d

    const/16 v5, 0x5a

    if-gt v3, v5, :cond_4d

    .line 1789
    :cond_44
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1780
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1792
    .end local v2    # "i":I
    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .param p0, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1188
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist numberToCalledPartyBCD(Ljava/lang/String;I)[B
    .registers 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "bcdExtType"    # I

    .line 1203
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o numberToCalledPartyBCDHelper(Ljava/lang/String;ZI)[B
    .registers 20
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z
    .param p2, "bcdExtType"    # I

    .line 1212
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1213
    .local v1, "numberLenReal":I
    move v2, v1

    .line 1214
    .local v2, "numberLenEffective":I
    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v7, 0x1

    if-eq v4, v5, :cond_13

    move v4, v7

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    .line 1215
    .local v4, "hasPlus":Z
    :goto_14
    if-eqz v4, :cond_18

    add-int/lit8 v2, v2, -0x1

    .line 1217
    :cond_18
    if-nez v2, :cond_1c

    const/4 v3, 0x0

    return-object v3

    .line 1219
    :cond_1c
    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v5, v5, 0x2

    .line 1220
    .local v5, "resultLen":I
    const/4 v8, 0x1

    .line 1221
    .local v8, "extraBytes":I
    if-eqz p1, :cond_25

    add-int/lit8 v8, v8, 0x1

    .line 1222
    :cond_25
    add-int/2addr v5, v8

    .line 1224
    new-array v9, v5, [B

    .line 1226
    .local v9, "result":[B
    const/4 v10, 0x0

    .line 1227
    .local v10, "digitCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2a
    if-ge v11, v1, :cond_57

    .line 1228
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1229
    .local v12, "c":C
    if-ne v12, v3, :cond_35

    move/from16 v3, p2

    goto :goto_52

    .line 1230
    :cond_35
    and-int/lit8 v13, v10, 0x1

    if-ne v13, v7, :cond_3b

    const/4 v13, 0x4

    goto :goto_3c

    :cond_3b
    const/4 v13, 0x0

    .line 1231
    .local v13, "shift":I
    :goto_3c
    shr-int/lit8 v14, v10, 0x1

    add-int/2addr v14, v8

    aget-byte v15, v9, v14

    .line 1232
    move/from16 v3, p2

    invoke-static {v12, v3}, Landroid/telephony/PhoneNumberUtils;->charToBCD(CI)I

    move-result v16

    and-int/lit8 v16, v16, 0xf

    shl-int v6, v16, v13

    int-to-byte v6, v6

    or-int/2addr v6, v15

    int-to-byte v6, v6

    aput-byte v6, v9, v14

    .line 1233
    add-int/lit8 v10, v10, 0x1

    .line 1227
    .end local v12    # "c":C
    .end local v13    # "shift":I
    :goto_52
    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0x2b

    goto :goto_2a

    :cond_57
    move/from16 v3, p2

    .line 1237
    .end local v11    # "i":I
    and-int/lit8 v6, v10, 0x1

    if-ne v6, v7, :cond_67

    shr-int/lit8 v6, v10, 0x1

    add-int/2addr v6, v8

    aget-byte v7, v9, v6

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v9, v6

    .line 1239
    :cond_67
    const/4 v6, 0x0

    .line 1240
    .local v6, "offset":I
    if-eqz p1, :cond_72

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    add-int/lit8 v11, v5, -0x1

    int-to-byte v11, v11

    aput-byte v11, v9, v6

    move v6, v7

    .line 1241
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :cond_72
    if-eqz v4, :cond_77

    const/16 v7, 0x91

    goto :goto_79

    :cond_77
    const/16 v7, 0x81

    :goto_79
    int-to-byte v7, v7

    aput-byte v7, v9, v6

    .line 1243
    return-object v9
.end method

.method private static greylist-max-o processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .line 2499
    move-object v0, p0

    .line 2505
    .local v0, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_2b

    .line 2506
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2b

    .line 2507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2b

    .line 2508
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2510
    .local v1, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_21

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2512
    move-object v0, v1

    goto :goto_2b

    .line 2515
    :cond_21
    const-string v2, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2519
    .end local v1    # "newStr":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-object v0
.end method

.method private static greylist-max-o removeDashes(Landroid/text/Editable;)V
    .registers 4
    .param p0, "text"    # Landroid/text/Editable;

    .line 1535
    const/4 v0, 0x0

    .line 1536
    .local v0, "p":I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1537
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_15

    .line 1538
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1540
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1543
    :cond_18
    return-void
.end method

.method public static whitelist replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "number"    # Ljava/lang/String;

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1803
    .local v0, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_26

    aget-char v4, v1, v3

    .line 1804
    .local v4, "c":C
    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 1805
    .local v5, "digit":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_20

    .line 1806
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 1808
    :cond_20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1803
    .end local v4    # "c":C
    .end local v5    # "digit":I
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1811
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist setMinMatchForTest(I)V
    .registers 1
    .param p0, "minMatch"    # I

    .line 206
    sput p0, Landroid/telephony/PhoneNumberUtils;->sMinMatch:I

    .line 207
    return-void
.end method

.method private static greylist-max-o splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2319
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, " "

    if-ge v1, v2, :cond_2c

    .line 2320
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2321
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_26

    .line 2322
    :cond_25
    nop

    .line 2320
    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2319
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2327
    .end local v1    # "i":I
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .line 848
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 850
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2b

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 854
    :cond_2b
    return-object p0
.end method

.method public static whitelist stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 359
    if-nez p0, :cond_4

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 363
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 365
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_2d

    .line 366
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 368
    .local v3, "c":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 369
    .local v4, "digit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 370
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 371
    :cond_21
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 372
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    .end local v3    # "c":C
    .end local v4    # "digit":I
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 376
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .line 798
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "np":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist toaFromString(Ljava/lang/String;)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 864
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 865
    const/16 v0, 0x91

    return v0

    .line 868
    :cond_14
    const/16 v0, 0x81

    return v0
.end method

.method private static greylist-max-o tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .line 2738
    const/4 v0, 0x0

    .line 2739
    .local v0, "state":I
    const/4 v1, 0x0

    .line 2740
    .local v1, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2741
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/4 v4, 0x0

    if-ge v3, v2, :cond_9e

    .line 2742
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2743
    .local v5, "ch":C
    const/16 v6, 0x36

    const/16 v7, 0x30

    const/16 v8, 0x31

    packed-switch v0, :pswitch_data_a0

    .line 2808
    return-object v4

    .line 2802
    :pswitch_18
    if-ne v5, v6, :cond_24

    .line 2803
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x42

    invoke-direct {v4, v7, v6}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 2805
    :cond_24
    return-object v4

    .line 2796
    :pswitch_25
    if-ne v5, v6, :cond_2b

    const/16 v0, 0x9

    goto/16 :goto_9a

    .line 2797
    :cond_2b
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 2798
    return-object v4

    .line 2767
    :pswitch_32
    if-ne v5, v8, :cond_37

    const/4 v0, 0x5

    goto/16 :goto_9a

    .line 2768
    :cond_37
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 2769
    return-object v4

    .line 2759
    :pswitch_3e
    if-ne v5, v7, :cond_42

    const/4 v0, 0x3

    goto :goto_9a

    .line 2760
    :cond_42
    if-ne v5, v8, :cond_46

    const/4 v0, 0x4

    goto :goto_9a

    .line 2761
    :cond_46
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 2762
    return-object v4

    .line 2779
    :pswitch_4d
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v6

    .line 2780
    .local v6, "ret":I
    if-lez v6, :cond_79

    .line 2781
    mul-int/lit8 v4, v1, 0xa

    add-int v1, v4, v6

    .line 2782
    const/16 v4, 0x64

    if-ge v1, v4, :cond_71

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v4

    if-eqz v4, :cond_62

    goto :goto_71

    .line 2785
    :cond_62
    const/4 v4, 0x1

    if-eq v0, v4, :cond_6f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6f

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6c

    goto :goto_6f

    .line 2788
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 2786
    :cond_6f
    :goto_6f
    const/4 v0, 0x6

    goto :goto_80

    .line 2783
    :cond_71
    :goto_71
    new-instance v4, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v3, 0x1

    invoke-direct {v4, v1, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v4

    .line 2790
    :cond_79
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 2791
    return-object v4

    .line 2794
    .end local v6    # "ret":I
    :cond_80
    :goto_80
    goto :goto_9a

    .line 2745
    :pswitch_81
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_87

    const/4 v0, 0x1

    goto :goto_9a

    .line 2746
    :cond_87
    if-ne v5, v7, :cond_8b

    const/4 v0, 0x2

    goto :goto_9a

    .line 2747
    :cond_8b
    if-ne v5, v8, :cond_93

    .line 2748
    if-eqz p1, :cond_92

    .line 2749
    const/16 v0, 0x8

    goto :goto_9a

    .line 2751
    :cond_92
    return-object v4

    .line 2753
    :cond_93
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 2754
    return-object v4

    .line 2741
    .end local v5    # "ch":C
    :cond_9a
    :goto_9a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 2812
    .end local v3    # "i":I
    :cond_9e
    return-object v4

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_81
        :pswitch_4d
        :pswitch_3e
        :pswitch_4d
        :pswitch_32
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_25
        :pswitch_18
    .end packed-switch
.end method

.method private static greylist-max-o tryGetISODigit(C)I
    .registers 2
    .param p0, "ch"    # C

    .line 2709
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 2710
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 2712
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method private static greylist-max-o tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .line 2825
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2826
    .local v0, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_5
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1f

    .line 2827
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2828
    .local v3, "ch":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_15

    .line 2829
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 2830
    :cond_15
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2831
    return v2

    .line 2826
    .end local v3    # "ch":C
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2834
    .end local v1    # "i":I
    :cond_1f
    return v2
.end method

.method public static greylist ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2258
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .registers 3
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2275
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    .line 2276
    return-void
.end method
