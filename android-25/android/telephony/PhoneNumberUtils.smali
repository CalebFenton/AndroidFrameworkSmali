.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x34

    #@2
    const/16 v6, 0x33

    #@4
    const/16 v5, 0x32

    #@6
    const/16 v4, 0x39

    #@8
    const/16 v3, 0x37

    #@a
    .line 87
    const-string/jumbo v0, "[\\+]?[0-9.-]+"

    #@d
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@10
    move-result-object v0

    #@11
    .line 86
    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    #@13
    .line 1113
    const/16 v0, 0x18

    #@15
    new-array v0, v0, [Ljava/lang/String;

    #@17
    .line 1114
    const-string/jumbo v1, "US"

    #@1a
    const/4 v2, 0x0

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 1115
    const-string/jumbo v1, "CA"

    #@20
    const/4 v2, 0x1

    #@21
    aput-object v1, v0, v2

    #@23
    .line 1116
    const-string/jumbo v1, "AS"

    #@26
    const/4 v2, 0x2

    #@27
    aput-object v1, v0, v2

    #@29
    .line 1117
    const-string/jumbo v1, "AI"

    #@2c
    const/4 v2, 0x3

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 1118
    const-string/jumbo v1, "AG"

    #@32
    const/4 v2, 0x4

    #@33
    aput-object v1, v0, v2

    #@35
    .line 1119
    const-string/jumbo v1, "BS"

    #@38
    const/4 v2, 0x5

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 1120
    const-string/jumbo v1, "BB"

    #@3e
    const/4 v2, 0x6

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 1121
    const-string/jumbo v1, "BM"

    #@44
    const/4 v2, 0x7

    #@45
    aput-object v1, v0, v2

    #@47
    .line 1122
    const-string/jumbo v1, "VG"

    #@4a
    const/16 v2, 0x8

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 1123
    const-string/jumbo v1, "KY"

    #@51
    const/16 v2, 0x9

    #@53
    aput-object v1, v0, v2

    #@55
    .line 1124
    const-string/jumbo v1, "DM"

    #@58
    const/16 v2, 0xa

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 1125
    const-string/jumbo v1, "DO"

    #@5f
    const/16 v2, 0xb

    #@61
    aput-object v1, v0, v2

    #@63
    .line 1126
    const-string/jumbo v1, "GD"

    #@66
    const/16 v2, 0xc

    #@68
    aput-object v1, v0, v2

    #@6a
    .line 1127
    const-string/jumbo v1, "GU"

    #@6d
    const/16 v2, 0xd

    #@6f
    aput-object v1, v0, v2

    #@71
    .line 1128
    const-string/jumbo v1, "JM"

    #@74
    const/16 v2, 0xe

    #@76
    aput-object v1, v0, v2

    #@78
    .line 1129
    const-string/jumbo v1, "PR"

    #@7b
    const/16 v2, 0xf

    #@7d
    aput-object v1, v0, v2

    #@7f
    .line 1130
    const-string/jumbo v1, "MS"

    #@82
    const/16 v2, 0x10

    #@84
    aput-object v1, v0, v2

    #@86
    .line 1131
    const-string/jumbo v1, "MP"

    #@89
    const/16 v2, 0x11

    #@8b
    aput-object v1, v0, v2

    #@8d
    .line 1132
    const-string/jumbo v1, "KN"

    #@90
    const/16 v2, 0x12

    #@92
    aput-object v1, v0, v2

    #@94
    .line 1133
    const-string/jumbo v1, "LC"

    #@97
    const/16 v2, 0x13

    #@99
    aput-object v1, v0, v2

    #@9b
    .line 1134
    const-string/jumbo v1, "VC"

    #@9e
    const/16 v2, 0x14

    #@a0
    aput-object v1, v0, v2

    #@a2
    .line 1135
    const-string/jumbo v1, "TT"

    #@a5
    const/16 v2, 0x15

    #@a7
    aput-object v1, v0, v2

    #@a9
    .line 1136
    const-string/jumbo v1, "TC"

    #@ac
    const/16 v2, 0x16

    #@ae
    aput-object v1, v0, v2

    #@b0
    .line 1137
    const-string/jumbo v1, "VI"

    #@b3
    const/16 v2, 0x17

    #@b5
    aput-object v1, v0, v2

    #@b7
    .line 1113
    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    #@b9
    .line 2173
    new-instance v0, Landroid/util/SparseIntArray;

    #@bb
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@be
    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@c0
    .line 2175
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@c2
    const/16 v1, 0x61

    #@c4
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@c7
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@c9
    const/16 v1, 0x62

    #@cb
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@ce
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@d0
    const/16 v1, 0x63

    #@d2
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@d5
    .line 2176
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@d7
    const/16 v1, 0x41

    #@d9
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@dc
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@de
    const/16 v1, 0x42

    #@e0
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@e3
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@e5
    const/16 v1, 0x43

    #@e7
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@ea
    .line 2178
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@ec
    const/16 v1, 0x64

    #@ee
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@f1
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@f3
    const/16 v1, 0x65

    #@f5
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@f8
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@fa
    const/16 v1, 0x66

    #@fc
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@ff
    .line 2179
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@101
    const/16 v1, 0x44

    #@103
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@106
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@108
    const/16 v1, 0x45

    #@10a
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@10d
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@10f
    const/16 v1, 0x46

    #@111
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@114
    .line 2181
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@116
    const/16 v1, 0x67

    #@118
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@11b
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@11d
    const/16 v1, 0x68

    #@11f
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@122
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@124
    const/16 v1, 0x69

    #@126
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@129
    .line 2182
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@12b
    const/16 v1, 0x47

    #@12d
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@130
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@132
    const/16 v1, 0x48

    #@134
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@137
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@139
    const/16 v1, 0x49

    #@13b
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    #@13e
    .line 2184
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@140
    const/16 v1, 0x6a

    #@142
    const/16 v2, 0x35

    #@144
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@147
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@149
    const/16 v1, 0x6b

    #@14b
    const/16 v2, 0x35

    #@14d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@150
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@152
    const/16 v1, 0x6c

    #@154
    const/16 v2, 0x35

    #@156
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@159
    .line 2185
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@15b
    const/16 v1, 0x4a

    #@15d
    const/16 v2, 0x35

    #@15f
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@162
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@164
    const/16 v1, 0x4b

    #@166
    const/16 v2, 0x35

    #@168
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@16b
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@16d
    const/16 v1, 0x4c

    #@16f
    const/16 v2, 0x35

    #@171
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@174
    .line 2187
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@176
    const/16 v1, 0x6d

    #@178
    const/16 v2, 0x36

    #@17a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@17d
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@17f
    const/16 v1, 0x6e

    #@181
    const/16 v2, 0x36

    #@183
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@186
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@188
    const/16 v1, 0x6f

    #@18a
    const/16 v2, 0x36

    #@18c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@18f
    .line 2188
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@191
    const/16 v1, 0x4d

    #@193
    const/16 v2, 0x36

    #@195
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@198
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@19a
    const/16 v1, 0x4e

    #@19c
    const/16 v2, 0x36

    #@19e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1a1
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1a3
    const/16 v1, 0x4f

    #@1a5
    const/16 v2, 0x36

    #@1a7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1aa
    .line 2190
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1ac
    const/16 v1, 0x70

    #@1ae
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1b1
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1b3
    const/16 v1, 0x71

    #@1b5
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1b8
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1ba
    const/16 v1, 0x72

    #@1bc
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1bf
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1c1
    const/16 v1, 0x73

    #@1c3
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1c6
    .line 2191
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1c8
    const/16 v1, 0x50

    #@1ca
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1cd
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1cf
    const/16 v1, 0x51

    #@1d1
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1d4
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1d6
    const/16 v1, 0x52

    #@1d8
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1db
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1dd
    const/16 v1, 0x53

    #@1df
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    #@1e2
    .line 2193
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1e4
    const/16 v1, 0x74

    #@1e6
    const/16 v2, 0x38

    #@1e8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1eb
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1ed
    const/16 v1, 0x75

    #@1ef
    const/16 v2, 0x38

    #@1f1
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1f4
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1f6
    const/16 v1, 0x76

    #@1f8
    const/16 v2, 0x38

    #@1fa
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@1fd
    .line 2194
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@1ff
    const/16 v1, 0x54

    #@201
    const/16 v2, 0x38

    #@203
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@206
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@208
    const/16 v1, 0x55

    #@20a
    const/16 v2, 0x38

    #@20c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@20f
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@211
    const/16 v1, 0x56

    #@213
    const/16 v2, 0x38

    #@215
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@218
    .line 2196
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@21a
    const/16 v1, 0x77

    #@21c
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@21f
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@221
    const/16 v1, 0x78

    #@223
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@226
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@228
    const/16 v1, 0x79

    #@22a
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@22d
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@22f
    const/16 v1, 0x7a

    #@231
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@234
    .line 2197
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@236
    const/16 v1, 0x57

    #@238
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@23b
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@23d
    const/16 v1, 0x58

    #@23f
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@242
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@244
    const/16 v1, 0x59

    #@246
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@249
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@24b
    const/16 v1, 0x5a

    #@24d
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@250
    .line 2834
    const/16 v0, 0x64

    #@252
    new-array v0, v0, [Z

    #@254
    fill-array-data v0, :array_0

    #@257
    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    #@259
    .line 2846
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    #@25b
    array-length v0, v0

    #@25c
    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    #@25e
    .line 3030
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@261
    move-result-object v0

    #@262
    .line 3031
    const v1, 0x107004d

    #@265
    .line 3030
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@268
    move-result-object v0

    #@269
    sput-object v0, Landroid/telephony/PhoneNumberUtils;->CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

    #@26b
    .line 51
    return-void

    #@26c
    .line 2834
    :array_0
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

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addTtsSpan(Landroid/text/Spannable;II)V
    .locals 2
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "endExclusive"    # I

    #@0
    .prologue
    .line 2396
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    #@b
    move-result-object v0

    #@c
    .line 2399
    const/16 v1, 0x21

    #@e
    .line 2396
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@11
    .line 2395
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2694
    const/4 v3, 0x1

    #@2
    if-ne p0, v3, :cond_0

    #@4
    .line 2695
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 2696
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 2697
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 2704
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_0
    return-object v2

    #@16
    .line 2701
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 2702
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    .line 959
    const/16 v0, 0xa

    #@2
    if-ge p0, v0, :cond_0

    #@4
    .line 960
    add-int/lit8 v0, p0, 0x30

    #@6
    int-to-char v0, v0

    #@7
    return v0

    #@8
    .line 961
    :cond_0
    packed-switch p0, :pswitch_data_0

    #@b
    .line 967
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 962
    :pswitch_0
    const/16 v0, 0x2a

    #@f
    return v0

    #@10
    .line 963
    :pswitch_1
    const/16 v0, 0x23

    #@12
    return v0

    #@13
    .line 964
    :pswitch_2
    const/16 v0, 0x2c

    #@15
    return v0

    #@16
    .line 965
    :pswitch_3
    const/16 v0, 0x4e

    #@18
    return v0

    #@19
    .line 961
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    mul-int/lit8 v1, p2, 0x2

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 951
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    #@a
    .line 953
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v11, 0x5

    #@1
    const/4 v10, 0x4

    #@2
    const/4 v9, 0x3

    #@3
    const/4 v8, 0x2

    #@4
    const/4 v7, 0x1

    #@5
    .line 806
    const/4 v2, 0x0

    #@6
    .line 807
    .local v2, "prependPlus":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    mul-int/lit8 v5, p2, 0x2

    #@a
    add-int/lit8 v5, v5, 0x1

    #@c
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 809
    .local v3, "ret":Ljava/lang/StringBuilder;
    if-ge p2, v8, :cond_0

    #@11
    .line 810
    const-string/jumbo v5, ""

    #@14
    return-object v5

    #@15
    .line 814
    :cond_0
    aget-byte v5, p0, p1

    #@17
    and-int/lit16 v5, v5, 0xf0

    #@19
    const/16 v6, 0x90

    #@1b
    if-ne v5, v6, :cond_1

    #@1d
    .line 815
    const/4 v2, 0x1

    #@1e
    .line 819
    :cond_1
    add-int/lit8 v5, p1, 0x1

    #@20
    add-int/lit8 v6, p2, -0x1

    #@22
    .line 818
    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    #@25
    .line 821
    if-eqz v2, :cond_2

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_2

    #@2d
    .line 823
    const-string/jumbo v5, ""

    #@30
    return-object v5

    #@31
    .line 826
    :cond_2
    if-eqz v2, :cond_3

    #@33
    .line 852
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 853
    .local v4, "retString":Ljava/lang/String;
    const-string/jumbo v5, "(^[#*])(.*)([#*])(.*)(#)$"

    #@3a
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3d
    move-result-object v1

    #@3e
    .line 854
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@41
    move-result-object v0

    #@42
    .line 855
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_5

    #@48
    .line 856
    const-string/jumbo v5, ""

    #@4b
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v5

    #@53
    if-eqz v5, :cond_4

    #@55
    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    .line 861
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 862
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 863
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 864
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 865
    const-string/jumbo v5, "+"

    #@79
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    .line 901
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "retString":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v5

    #@80
    return-object v5

    #@81
    .line 870
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "retString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    #@83
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    .line 871
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 872
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    .line 873
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    .line 874
    const-string/jumbo v5, "+"

    #@9e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    .line 875
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 876
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ab
    move-result-object v5

    #@ac
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    goto :goto_0

    #@b0
    .line 879
    :cond_5
    const-string/jumbo v5, "(^[#*])(.*)([#*])(.*)"

    #@b3
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@b6
    move-result-object v1

    #@b7
    .line 880
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@ba
    move-result-object v0

    #@bb
    .line 881
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@be
    move-result v5

    #@bf
    if-eqz v5, :cond_6

    #@c1
    .line 886
    new-instance v3, Ljava/lang/StringBuilder;

    #@c3
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    .line 887
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@c9
    move-result-object v5

    #@ca
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    .line 888
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@d0
    move-result-object v5

    #@d1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    .line 889
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 890
    const-string/jumbo v5, "+"

    #@de
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    .line 891
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@e4
    move-result-object v5

    #@e5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    goto :goto_0

    #@e9
    .line 894
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    #@eb
    .end local v3    # "ret":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    .line 895
    .restart local v3    # "ret":Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    #@f0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f3
    .line 896
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 2236
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 2237
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    .line 2236
    if-eqz v2, :cond_0

    #@17
    .line 2238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 2239
    .local v0, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 2240
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    .line 2247
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    :cond_0
    return-object p0

    #@34
    .line 2242
    .restart local v0    # "currIso":Ljava/lang/String;
    .restart local v1    # "defaultIso":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    #@37
    move-result v2

    #@38
    .line 2243
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    #@3b
    move-result v3

    #@3c
    .line 2241
    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    return-object v2
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 2300
    move-object v3, p0

    #@2
    .line 2302
    .local v3, "retStr":Ljava/lang/String;
    if-ne p1, p2, :cond_3

    #@4
    if-ne p1, v8, :cond_3

    #@6
    const/4 v5, 0x1

    #@7
    .line 2305
    .local v5, "useNanp":Z
    :goto_0
    if-eqz p0, :cond_2

    #@9
    .line 2306
    const-string/jumbo v6, "+"

    #@c
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@f
    move-result v6

    #@10
    const/4 v7, -0x1

    #@11
    if-eq v6, v7, :cond_2

    #@13
    .line 2309
    const/4 v2, 0x0

    #@14
    .line 2310
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    #@15
    .line 2313
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    #@16
    .line 2322
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v3    # "retStr":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_4

    #@18
    .line 2323
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 2329
    .local v1, "networkDialStr":Ljava/lang/String;
    :goto_1
    invoke-static {v1, v5}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 2332
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@23
    move-result v6

    #@24
    if-nez v6, :cond_6

    #@26
    .line 2333
    if-nez v3, :cond_5

    #@28
    .line 2334
    move-object v3, v1

    #@29
    .line 2345
    .restart local v3    # "retStr":Ljava/lang/String;
    :goto_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 2346
    .local v2, "postDialStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@30
    move-result v6

    #@31
    if-nez v6, :cond_1

    #@33
    .line 2347
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    #@36
    move-result v0

    #@37
    .line 2350
    .local v0, "dialableIndex":I
    if-lt v0, v8, :cond_7

    #@39
    .line 2351
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 2354
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 2366
    .end local v0    # "dialableIndex":I
    :cond_1
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@44
    move-result v6

    #@45
    if-nez v6, :cond_2

    #@47
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_0

    #@4d
    .line 2368
    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_2
    return-object v3

    #@4e
    .line 2302
    .end local v5    # "useNanp":Z
    :cond_3
    const/4 v5, 0x0

    #@4f
    .restart local v5    # "useNanp":Z
    goto :goto_0

    #@50
    .line 2325
    .end local v3    # "retStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .restart local v1    # "networkDialStr":Ljava/lang/String;
    goto :goto_1

    #@55
    .line 2336
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    .restart local v3    # "retStr":Ljava/lang/String;
    goto :goto_2

    #@5a
    .line 2342
    .end local v3    # "retStr":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "checkAndProcessPlusCode: null newDialStr"

    #@5d
    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 2343
    return-object p0

    #@61
    .line 2359
    .restart local v0    # "dialableIndex":I
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v3    # "retStr":Ljava/lang/String;
    :cond_7
    if-gez v0, :cond_8

    #@63
    .line 2360
    const-string/jumbo v2, ""

    #@66
    .line 2362
    :cond_8
    const-string/jumbo v6, "wrong postDialStr="

    #@69
    invoke-static {v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    goto :goto_3
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2259
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 2260
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 2261
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 2262
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_0

    #@25
    .line 2263
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    #@28
    move-result v1

    #@29
    .line 2264
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    return-object v2

    #@2e
    .line 2268
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    :cond_0
    return-object p0
.end method

.method private static charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    .line 973
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 974
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 975
    :cond_0
    const/16 v0, 0x2a

    #@d
    if-ne p0, v0, :cond_1

    #@f
    .line 976
    const/16 v0, 0xa

    #@11
    return v0

    #@12
    .line 977
    :cond_1
    const/16 v0, 0x23

    #@14
    if-ne p0, v0, :cond_2

    #@16
    .line 978
    const/16 v0, 0xb

    #@18
    return v0

    #@19
    .line 979
    :cond_2
    const/16 v0, 0x2c

    #@1b
    if-ne p0, v0, :cond_3

    #@1d
    .line 980
    const/16 v0, 0xc

    #@1f
    return v0

    #@20
    .line 981
    :cond_3
    const/16 v0, 0x4e

    #@22
    if-ne p0, v0, :cond_4

    #@24
    .line 982
    const/16 v0, 0xd

    #@26
    return v0

    #@27
    .line 983
    :cond_4
    const/16 v0, 0x3b

    #@29
    if-ne p0, v0, :cond_5

    #@2b
    .line 984
    const/16 v0, 0xe

    #@2d
    return v0

    #@2e
    .line 986
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "invalid char for BCD "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2997
    const/4 v0, 0x0

    #@2
    .line 2998
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-lt p2, p1, :cond_3

    #@4
    .line 2999
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    #@b
    move-result v1

    #@c
    if-ltz v1, :cond_2

    #@e
    .line 3000
    if-eqz v0, :cond_0

    #@10
    .line 3003
    return v2

    #@11
    .line 3006
    :cond_0
    const/4 v0, 0x1

    #@12
    .line 3012
    :cond_1
    add-int/lit8 p2, p2, -0x1

    #@14
    goto :goto_0

    #@15
    .line 3008
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v1

    #@19
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 3010
    return v2

    #@20
    .line 3015
    :cond_3
    const/4 v1, 0x1

    #@21
    return v1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 430
    const v2, 0x1120041

    #@7
    .line 429
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a
    move-result v0

    #@b
    .line 431
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@e
    move-result v1

    #@f
    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 420
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    #@0
    .prologue
    .line 438
    if-eqz p2, :cond_0

    #@2
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 459
    const/4 v7, 0x0

    #@1
    .line 460
    .local v7, "numNonDialableCharsInA":I
    const/4 v8, 0x0

    #@2
    .line 462
    .local v8, "numNonDialableCharsInB":I
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_2

    #@6
    :cond_0
    if-ne p0, p1, :cond_1

    #@8
    const/4 v10, 0x1

    #@9
    :goto_0
    return v10

    #@a
    :cond_1
    const/4 v10, 0x0

    #@b
    goto :goto_0

    #@c
    .line 464
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v10

    #@10
    if-eqz v10, :cond_3

    #@12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@15
    move-result v10

    #@16
    if-nez v10, :cond_4

    #@18
    .line 465
    :cond_3
    const/4 v10, 0x0

    #@19
    return v10

    #@1a
    .line 468
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    #@1d
    move-result v4

    #@1e
    .line 469
    .local v4, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    #@21
    move-result v5

    #@22
    .line 470
    .local v5, "ib":I
    const/4 v6, 0x0

    #@23
    .line 472
    .local v6, "matched":I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    #@25
    if-ltz v5, :cond_8

    #@27
    .line 474
    const/4 v9, 0x0

    #@28
    .line 476
    .local v9, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v0

    #@2c
    .line 478
    .local v0, "ca":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@2f
    move-result v10

    #@30
    if-nez v10, :cond_6

    #@32
    .line 479
    add-int/lit8 v4, v4, -0x1

    #@34
    .line 480
    const/4 v9, 0x1

    #@35
    .line 481
    add-int/lit8 v7, v7, 0x1

    #@37
    .line 484
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v1

    #@3b
    .line 486
    .local v1, "cb":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@3e
    move-result v10

    #@3f
    if-nez v10, :cond_7

    #@41
    .line 487
    add-int/lit8 v5, v5, -0x1

    #@43
    .line 488
    const/4 v9, 0x1

    #@44
    .line 489
    add-int/lit8 v8, v8, 0x1

    #@46
    .line 492
    :cond_7
    if-nez v9, :cond_5

    #@48
    .line 493
    if-eq v1, v0, :cond_9

    #@4a
    const/16 v10, 0x4e

    #@4c
    if-eq v0, v10, :cond_9

    #@4e
    const/16 v10, 0x4e

    #@50
    if-eq v1, v10, :cond_9

    #@52
    .line 500
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    :cond_8
    const/4 v10, 0x7

    #@53
    if-ge v6, v10, :cond_b

    #@55
    .line 501
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@58
    move-result v10

    #@59
    sub-int v2, v10, v7

    #@5b
    .line 502
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5e
    move-result v10

    #@5f
    sub-int v3, v10, v8

    #@61
    .line 507
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_a

    #@63
    if-ne v2, v6, :cond_a

    #@65
    .line 508
    const/4 v10, 0x1

    #@66
    return v10

    #@67
    .line 496
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    .restart local v0    # "ca":C
    .restart local v1    # "cb":C
    .restart local v9    # "skipCmp":Z
    :cond_9
    add-int/lit8 v4, v4, -0x1

    #@69
    add-int/lit8 v5, v5, -0x1

    #@6b
    add-int/lit8 v6, v6, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 511
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    :cond_a
    const/4 v10, 0x0

    #@6f
    return v10

    #@70
    .line 515
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_b
    const/4 v10, 0x7

    #@71
    if-lt v6, v10, :cond_d

    #@73
    if-ltz v4, :cond_c

    #@75
    if-gez v5, :cond_d

    #@77
    .line 516
    :cond_c
    const/4 v10, 0x1

    #@78
    return v10

    #@79
    .line 528
    :cond_d
    add-int/lit8 v10, v4, 0x1

    #@7b
    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    #@7e
    move-result v10

    #@7f
    if-eqz v10, :cond_e

    #@81
    .line 529
    add-int/lit8 v10, v5, 0x1

    #@83
    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    #@86
    move-result v10

    #@87
    .line 528
    if-eqz v10, :cond_e

    #@89
    .line 531
    const/4 v10, 0x1

    #@8a
    return v10

    #@8b
    .line 534
    :cond_e
    add-int/lit8 v10, v4, 0x1

    #@8d
    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    #@90
    move-result v10

    #@91
    if-eqz v10, :cond_f

    #@93
    .line 535
    add-int/lit8 v10, v5, 0x1

    #@95
    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    #@98
    move-result v10

    #@99
    .line 534
    if-eqz v10, :cond_f

    #@9b
    .line 537
    const/4 v10, 0x1

    #@9c
    return v10

    #@9d
    .line 540
    :cond_f
    add-int/lit8 v10, v5, 0x1

    #@9f
    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    #@a2
    move-result v10

    #@a3
    if-eqz v10, :cond_10

    #@a5
    .line 541
    add-int/lit8 v10, v4, 0x1

    #@a7
    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    #@aa
    move-result v10

    #@ab
    .line 540
    if-eqz v10, :cond_10

    #@ad
    .line 543
    const/4 v10, 0x1

    #@ae
    return v10

    #@af
    .line 546
    :cond_10
    const/4 v10, 0x0

    #@b0
    return v10
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 554
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    #@0
    .prologue
    .line 562
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_2

    #@4
    .line 563
    :cond_0
    move-object/from16 v0, p0

    #@6
    move-object/from16 v1, p1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    const/16 v18, 0x1

    #@c
    :goto_0
    return v18

    #@d
    :cond_1
    const/16 v18, 0x0

    #@f
    goto :goto_0

    #@10
    .line 564
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@13
    move-result v18

    #@14
    if-nez v18, :cond_3

    #@16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@19
    move-result v18

    #@1a
    if-nez v18, :cond_3

    #@1c
    .line 565
    const/16 v18, 0x0

    #@1e
    return v18

    #@1f
    .line 568
    :cond_3
    const/4 v10, 0x0

    #@20
    .line 569
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    #@21
    .line 572
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    #@23
    move/from16 v1, p2

    #@25
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    #@28
    move-result-object v6

    #@29
    .line 574
    .local v6, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    #@2c
    move-result-object v7

    #@2d
    .line 575
    .local v7, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    #@2e
    .line 576
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    #@2f
    .line 577
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    #@31
    .line 578
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    #@33
    .line 579
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_9

    #@35
    if-eqz v7, :cond_9

    #@37
    .line 580
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    #@39
    move/from16 v18, v0

    #@3b
    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    #@3d
    move/from16 v19, v0

    #@3f
    move/from16 v0, v18

    #@41
    move/from16 v1, v19

    #@43
    if-eq v0, v1, :cond_4

    #@45
    .line 582
    const/16 v18, 0x0

    #@47
    return v18

    #@48
    .line 586
    :cond_4
    const/4 v13, 0x0

    #@49
    .line 587
    const/4 v5, 0x1

    #@4a
    .line 588
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    #@4c
    .line 589
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    #@4e
    .line 615
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@51
    move-result v18

    #@52
    add-int/lit8 v3, v18, -0x1

    #@54
    .line 616
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@57
    move-result v18

    #@58
    add-int/lit8 v4, v18, -0x1

    #@5a
    .line 617
    .local v4, "backwardIndexB":I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    #@5c
    if-lt v4, v11, :cond_f

    #@5e
    .line 618
    const/4 v14, 0x0

    #@5f
    .line 619
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    #@61
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@64
    move-result v8

    #@65
    .line 620
    .local v8, "chA":C
    move-object/from16 v0, p1

    #@67
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@6a
    move-result v9

    #@6b
    .line 621
    .local v9, "chB":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    #@6e
    move-result v18

    #@6f
    if-eqz v18, :cond_7

    #@71
    .line 622
    add-int/lit8 v3, v3, -0x1

    #@73
    .line 623
    const/4 v14, 0x1

    #@74
    .line 625
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    #@77
    move-result v18

    #@78
    if-eqz v18, :cond_8

    #@7a
    .line 626
    add-int/lit8 v4, v4, -0x1

    #@7c
    .line 627
    const/4 v14, 0x1

    #@7d
    .line 630
    :cond_8
    if-nez v14, :cond_6

    #@7f
    .line 631
    if-eq v8, v9, :cond_e

    #@81
    .line 632
    const/16 v18, 0x0

    #@83
    return v18

    #@84
    .line 590
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_9
    if-nez v6, :cond_a

    #@86
    if-nez v7, :cond_a

    #@88
    .line 593
    const/4 v13, 0x0

    #@89
    .line 590
    goto :goto_1

    #@8a
    .line 595
    :cond_a
    if-eqz v6, :cond_c

    #@8c
    .line 596
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    #@8e
    .line 604
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    #@90
    .line 605
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    #@92
    goto :goto_1

    #@93
    .line 598
    :cond_c
    const/16 v18, 0x0

    #@95
    move-object/from16 v0, p1

    #@97
    move/from16 v1, v18

    #@99
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    #@9c
    move-result v15

    #@9d
    .line 599
    .local v15, "tmp":I
    if-ltz v15, :cond_b

    #@9f
    .line 600
    move v10, v15

    #@a0
    .line 601
    const/16 v16, 0x1

    #@a2
    goto :goto_3

    #@a3
    .line 607
    .end local v15    # "tmp":I
    :cond_d
    const/16 v18, 0x0

    #@a5
    move-object/from16 v0, p1

    #@a7
    move/from16 v1, v18

    #@a9
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    #@ac
    move-result v15

    #@ad
    .line 608
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_5

    #@af
    .line 609
    move v11, v15

    #@b0
    .line 610
    const/16 v17, 0x1

    #@b2
    goto :goto_1

    #@b3
    .line 634
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    #@b5
    .line 635
    add-int/lit8 v4, v4, -0x1

    #@b7
    goto :goto_2

    #@b8
    .line 639
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_f
    if-eqz v13, :cond_17

    #@ba
    .line 640
    if-eqz v16, :cond_11

    #@bc
    if-gt v10, v3, :cond_11

    #@be
    .line 642
    :cond_10
    if-eqz p2, :cond_13

    #@c0
    .line 652
    const/16 v18, 0x0

    #@c2
    move-object/from16 v0, p0

    #@c4
    move-object/from16 v1, p1

    #@c6
    move/from16 v2, v18

    #@c8
    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@cb
    move-result v18

    #@cc
    return v18

    #@cd
    .line 641
    :cond_11
    move-object/from16 v0, p0

    #@cf
    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    #@d2
    move-result v18

    #@d3
    if-eqz v18, :cond_10

    #@d5
    .line 657
    if-eqz v17, :cond_14

    #@d7
    if-gt v11, v4, :cond_14

    #@d9
    .line 659
    :cond_12
    if-eqz p2, :cond_16

    #@db
    .line 660
    const/16 v18, 0x0

    #@dd
    move-object/from16 v0, p0

    #@df
    move-object/from16 v1, p1

    #@e1
    move/from16 v2, v18

    #@e3
    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@e6
    move-result v18

    #@e7
    return v18

    #@e8
    .line 654
    :cond_13
    const/16 v18, 0x0

    #@ea
    return v18

    #@eb
    .line 658
    :cond_14
    move-object/from16 v0, p1

    #@ed
    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    #@f0
    move-result v18

    #@f1
    if-eqz v18, :cond_12

    #@f3
    .line 700
    :cond_15
    const/16 v18, 0x1

    #@f5
    return v18

    #@f6
    .line 662
    :cond_16
    const/16 v18, 0x0

    #@f8
    return v18

    #@f9
    .line 675
    :cond_17
    if-eqz v5, :cond_19

    #@fb
    const/4 v12, 0x0

    #@fc
    .line 676
    .local v12, "maybeNamp":Z
    :goto_4
    if-lt v3, v10, :cond_1b

    #@fe
    .line 677
    move-object/from16 v0, p0

    #@100
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@103
    move-result v8

    #@104
    .line 678
    .restart local v8    # "chA":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@107
    move-result v18

    #@108
    if-eqz v18, :cond_18

    #@10a
    .line 679
    if-eqz v12, :cond_1a

    #@10c
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    #@10f
    move-result v18

    #@110
    const/16 v19, 0x1

    #@112
    move/from16 v0, v18

    #@114
    move/from16 v1, v19

    #@116
    if-ne v0, v1, :cond_1a

    #@118
    .line 680
    const/4 v12, 0x0

    #@119
    .line 685
    :cond_18
    add-int/lit8 v3, v3, -0x1

    #@11b
    goto :goto_4

    #@11c
    .line 675
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_19
    const/4 v12, 0x1

    #@11d
    .restart local v12    # "maybeNamp":Z
    goto :goto_4

    #@11e
    .line 682
    .restart local v8    # "chA":C
    :cond_1a
    const/16 v18, 0x0

    #@120
    return v18

    #@121
    .line 687
    .end local v8    # "chA":C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_15

    #@123
    .line 688
    move-object/from16 v0, p1

    #@125
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@128
    move-result v9

    #@129
    .line 689
    .restart local v9    # "chB":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@12c
    move-result v18

    #@12d
    if-eqz v18, :cond_1c

    #@12f
    .line 690
    if-eqz v12, :cond_1d

    #@131
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    #@134
    move-result v18

    #@135
    const/16 v19, 0x1

    #@137
    move/from16 v0, v18

    #@139
    move/from16 v1, v19

    #@13b
    if-ne v0, v1, :cond_1d

    #@13d
    .line 691
    const/4 v12, 0x0

    #@13e
    .line 696
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    #@140
    goto :goto_5

    #@141
    .line 693
    :cond_1d
    const/16 v18, 0x0

    #@143
    return v18
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2150
    if-nez p0, :cond_0

    #@2
    .line 2151
    return-object p0

    #@3
    .line 2153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    .line 2154
    .local v2, "len":I
    if-nez v2, :cond_1

    #@9
    .line 2155
    return-object p0

    #@a
    .line 2158
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@d
    move-result-object v3

    #@e
    .line 2160
    .local v3, "out":[C
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@11
    .line 2161
    aget-char v0, v3, v1

    #@13
    .line 2163
    .local v0, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    #@15
    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    #@18
    move-result v4

    #@19
    int-to-char v4, v4

    #@1a
    aput-char v4, v3, v1

    #@1c
    .line 2160
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2166
    .end local v0    # "c":C
    :cond_2
    new-instance v4, Ljava/lang/String;

    #@21
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    #@24
    return-object v4
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 326
    if-nez p0, :cond_0

    #@3
    .line 327
    return-object v4

    #@4
    .line 329
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 330
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 332
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@10
    .line 333
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 335
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_2

    #@1a
    .line 336
    const/16 v0, 0x2c

    #@1c
    .line 340
    .end local v0    # "c":C
    :cond_1
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 332
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 337
    .restart local v0    # "c":C
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 338
    const/16 v0, 0x3b

    #@2a
    .local v0, "c":C
    goto :goto_1

    #@2b
    .line 342
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    return-object v4
.end method

.method public static convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "source"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2626
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 2628
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v3, "sip"

    #@8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 2630
    return-object p0

    #@f
    .line 2633
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 2634
    .local v0, "number":Ljava/lang/String;
    const-string/jumbo v3, "[@;:]"

    #@16
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 2636
    .local v1, "numberParts":[Ljava/lang/String;
    array-length v3, v1

    #@1b
    if-nez v3, :cond_1

    #@1d
    .line 2638
    return-object p0

    #@1e
    .line 2640
    :cond_1
    aget-object v0, v1, v4

    #@20
    .line 2642
    const-string/jumbo v3, "tel"

    #@23
    const/4 v4, 0x0

    #@24
    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@27
    move-result-object v3

    #@28
    return-object v3
.end method

.method public static convertToEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3057
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 3058
    return-object p0

    #@8
    .line 3061
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 3064
    .local v5, "normalizedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_1

    #@12
    .line 3065
    return-object p0

    #@13
    .line 3068
    :cond_1
    sget-object v9, Landroid/telephony/PhoneNumberUtils;->CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

    #@15
    array-length v10, v9

    #@16
    move v8, v7

    #@17
    :goto_0
    if-ge v8, v10, :cond_7

    #@19
    aget-object v0, v9, v8

    #@1b
    .line 3070
    .local v0, "convertMap":Ljava/lang/String;
    const/4 v2, 0x0

    #@1c
    .line 3071
    .local v2, "entry":[Ljava/lang/String;
    const/4 v4, 0x0

    #@1d
    .line 3072
    .local v4, "filterNumbers":[Ljava/lang/String;
    const/4 v1, 0x0

    #@1e
    .line 3073
    .local v1, "convertedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v6

    #@22
    if-nez v6, :cond_2

    #@24
    .line 3074
    const-string/jumbo v6, ":"

    #@27
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    .line 3076
    .end local v2    # "entry":[Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    #@2d
    array-length v6, v2

    #@2e
    const/4 v11, 0x2

    #@2f
    if-ne v6, v11, :cond_3

    #@31
    .line 3077
    const/4 v6, 0x1

    #@32
    aget-object v1, v2, v6

    #@34
    .line 3078
    .local v1, "convertedNumber":Ljava/lang/String;
    aget-object v6, v2, v7

    #@36
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v6

    #@3a
    if-nez v6, :cond_3

    #@3c
    .line 3079
    aget-object v6, v2, v7

    #@3e
    const-string/jumbo v11, ","

    #@41
    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 3083
    .end local v1    # "convertedNumber":Ljava/lang/String;
    .end local v4    # "filterNumbers":[Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@48
    move-result v6

    #@49
    if-nez v6, :cond_4

    #@4b
    if-nez v4, :cond_5

    #@4d
    .line 3068
    :cond_4
    add-int/lit8 v6, v8, 0x1

    #@4f
    move v8, v6

    #@50
    goto :goto_0

    #@51
    .line 3084
    :cond_5
    array-length v6, v4

    #@52
    if-eqz v6, :cond_4

    #@54
    .line 3088
    array-length v11, v4

    #@55
    move v6, v7

    #@56
    :goto_1
    if-ge v6, v11, :cond_4

    #@58
    aget-object v3, v4, v6

    #@5a
    .line 3091
    .local v3, "filterNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5d
    move-result v12

    #@5e
    if-nez v12, :cond_6

    #@60
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v12

    #@64
    if-eqz v12, :cond_6

    #@66
    .line 3094
    return-object v1

    #@67
    .line 3088
    :cond_6
    add-int/lit8 v6, v6, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 3098
    .end local v0    # "convertMap":Ljava/lang/String;
    .end local v3    # "filterNumber":Ljava/lang/String;
    :cond_7
    return-object p0
.end method

.method public static createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .locals 6
    .param p0, "phoneNumberString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2441
    if-nez p0, :cond_0

    #@3
    .line 2442
    return-object v4

    #@4
    .line 2446
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@7
    move-result-object v3

    #@8
    .line 2447
    .local v3, "phoneNumberUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    #@9
    .line 2452
    .local v2, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v4, 0x0

    #@a
    :try_start_0
    invoke-virtual {v3, p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v2

    #@e
    .line 2457
    .end local v2    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    #@10
    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    #@13
    .line 2458
    .local v0, "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    if-nez v2, :cond_1

    #@15
    .line 2461
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v0, v4}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    #@1c
    .line 2468
    :goto_1
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    #@1f
    move-result-object v4

    #@20
    return-object v4

    #@21
    .line 2453
    .end local v0    # "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    .restart local v2    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v1

    #@22
    .local v1, "ignored":Lcom/android/i18n/phonenumbers/NumberParseException;
    goto :goto_0

    #@23
    .line 2463
    .end local v1    # "ignored":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v2    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v0    # "builder":Landroid/text/style/TtsSpan$TelephoneBuilder;
    :cond_1
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 2464
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@2c
    move-result v4

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v0, v4}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    #@34
    .line 2466
    :cond_2
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    #@37
    move-result-wide v4

    #@38
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v0, v4}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    #@3f
    goto :goto_1
.end method

.method public static createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2379
    if-nez p0, :cond_0

    #@3
    .line 2380
    return-object v1

    #@4
    .line 2382
    :cond_0
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    #@b
    move-result-object v0

    #@c
    .line 2383
    .local v0, "spannable":Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    #@f
    move-result v1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-static {v0, v2, v1}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    #@14
    .line 2384
    return-object v0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 214
    if-nez p0, :cond_0

    #@3
    .line 215
    return-object v6

    #@4
    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    .line 219
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 221
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    #@10
    .line 222
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 224
    .local v0, "c":C
    const/16 v6, 0xa

    #@16
    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    #@19
    move-result v1

    #@1a
    .line 225
    .local v1, "digit":I
    const/4 v6, -0x1

    #@1b
    if-eq v1, v6, :cond_2

    #@1d
    .line 226
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 221
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 227
    :cond_2
    const/16 v6, 0x2b

    #@25
    if-ne v0, v6, :cond_4

    #@27
    .line 229
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 230
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_3

    #@31
    const-string/jumbo v6, "*31#"

    #@34
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v6

    #@38
    if-nez v6, :cond_3

    #@3a
    const-string/jumbo v6, "#31#"

    #@3d
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_1

    #@43
    .line 231
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    goto :goto_1

    #@47
    .line 233
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_5

    #@4d
    .line 234
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@50
    goto :goto_1

    #@51
    .line 235
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_1

    #@57
    .line 240
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    return-object v6
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 253
    if-nez p0, :cond_0

    #@3
    .line 254
    return-object v5

    #@4
    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    .line 258
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 259
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@e
    .line 261
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    #@11
    .line 262
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 263
    .local v0, "c":C
    const/16 v5, 0x2b

    #@17
    if-ne v0, v5, :cond_3

    #@19
    .line 264
    if-eqz v1, :cond_2

    #@1b
    .line 261
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 267
    :cond_2
    const/4 v1, 0x1

    #@1f
    .line 269
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_4

    #@25
    .line 270
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    goto :goto_1

    #@29
    .line 271
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_1

    #@2f
    .line 276
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    return-object v5
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 395
    if-nez p0, :cond_0

    #@3
    return-object v5

    #@4
    .line 398
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 400
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    #@c
    move-result v4

    #@d
    .line 402
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    #@f
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@12
    move-result v3

    #@13
    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@15
    .line 405
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 406
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 403
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 411
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    return-object v5
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2678
    const/4 v1, 0x0

    #@1
    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 2679
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 2680
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 2681
    return v1

    #@12
    .line 2678
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 2684
    .end local v0    # "c":C
    :cond_1
    const/4 v2, -0x1

    #@16
    return v2
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1371
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    #@3
    .line 1370
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .param p0, "text"    # Landroid/text/Editable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v14, 0x2

    #@1
    const/4 v13, 0x3

    #@2
    const/4 v12, 0x0

    #@3
    .line 1255
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@6
    move-result v4

    #@7
    .line 1256
    .local v4, "length":I
    const-string/jumbo v11, "+1-nnn-nnn-nnnn"

    #@a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@d
    move-result v11

    #@e
    if-le v4, v11, :cond_0

    #@10
    .line 1258
    return-void

    #@11
    .line 1259
    :cond_0
    const/4 v11, 0x5

    #@12
    if-gt v4, v11, :cond_1

    #@14
    .line 1261
    return-void

    #@15
    .line 1264
    :cond_1
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    #@18
    move-result-object v9

    #@19
    .line 1267
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    #@1c
    .line 1268
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@1f
    move-result v4

    #@20
    .line 1273
    new-array v1, v13, [I

    #@22
    .line 1274
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    #@23
    .line 1276
    .local v5, "numDashes":I
    const/4 v10, 0x1

    #@24
    .line 1277
    .local v10, "state":I
    const/4 v7, 0x0

    #@25
    .line 1278
    .local v7, "numDigits":I
    const/4 v2, 0x0

    #@26
    .local v2, "i":I
    move v6, v5

    #@27
    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_0
    if-ge v2, v4, :cond_9

    #@29
    .line 1279
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    #@2c
    move-result v0

    #@2d
    .line 1280
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    #@30
    .line 1324
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@33
    .line 1325
    return-void

    #@34
    .line 1282
    :pswitch_1
    if-eqz v7, :cond_3

    #@36
    if-ne v10, v14, :cond_4

    #@38
    .line 1283
    :cond_3
    const/4 v10, 0x3

    #@39
    move v5, v6

    #@3a
    .line 1278
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3c
    move v6, v5

    #@3d
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_0

    #@3e
    .line 1296
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    #@40
    .line 1298
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@43
    .line 1299
    return-void

    #@44
    .line 1300
    :cond_5
    if-ne v10, v13, :cond_6

    #@46
    .line 1302
    add-int/lit8 v5, v6, 0x1

    #@48
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    #@4a
    .line 1307
    :goto_2
    const/4 v10, 0x1

    #@4b
    .line 1308
    add-int/lit8 v7, v7, 0x1

    #@4d
    .line 1309
    goto :goto_1

    #@4e
    .line 1303
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_6
    const/4 v11, 0x4

    #@4f
    if-eq v10, v11, :cond_8

    #@51
    if-eq v7, v13, :cond_7

    #@53
    const/4 v11, 0x6

    #@54
    if-ne v7, v11, :cond_8

    #@56
    .line 1305
    :cond_7
    add-int/lit8 v5, v6, 0x1

    #@58
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    #@5a
    goto :goto_2

    #@5b
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8
    move v5, v6

    #@5c
    .line 1303
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    #@5d
    .line 1312
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_3
    const/4 v10, 0x4

    #@5e
    move v5, v6

    #@5f
    .line 1313
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1

    #@60
    .line 1316
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_4
    if-nez v2, :cond_2

    #@62
    .line 1318
    const/4 v10, 0x2

    #@63
    move v5, v6

    #@64
    .line 1319
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_1

    #@65
    .line 1329
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_9
    const/4 v11, 0x7

    #@66
    if-ne v7, v11, :cond_c

    #@68
    .line 1331
    add-int/lit8 v5, v6, -0x1

    #@6a
    .line 1335
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_3
    const/4 v2, 0x0

    #@6b
    :goto_4
    if-ge v2, v5, :cond_a

    #@6d
    .line 1336
    aget v8, v1, v2

    #@6f
    .line 1337
    .local v8, "pos":I
    add-int v11, v8, v2

    #@71
    add-int v12, v8, v2

    #@73
    const-string/jumbo v13, "-"

    #@76
    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@79
    .line 1335
    add-int/lit8 v2, v2, 0x1

    #@7b
    goto :goto_4

    #@7c
    .line 1341
    .end local v8    # "pos":I
    :cond_a
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@7f
    move-result v3

    #@80
    .line 1342
    .local v3, "len":I
    :goto_5
    if-lez v3, :cond_b

    #@82
    .line 1343
    add-int/lit8 v11, v3, -0x1

    #@84
    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    #@87
    move-result v11

    #@88
    const/16 v12, 0x2d

    #@8a
    if-ne v11, v12, :cond_b

    #@8c
    .line 1344
    add-int/lit8 v11, v3, -0x1

    #@8e
    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@91
    .line 1345
    add-int/lit8 v3, v3, -0x1

    #@93
    goto :goto_5

    #@94
    .line 1254
    :cond_b
    return-void

    #@95
    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_c
    move v5, v6

    #@96
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_3

    #@97
    .line 1280
    nop

    #@98
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1154
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@5
    .line 1155
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    #@c
    move-result v1

    #@d
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    #@10
    .line 1156
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1173
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@5
    .line 1174
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    #@8
    .line 1175
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1454
    const-string/jumbo v4, "#"

    #@3
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    const-string/jumbo v4, "*"

    #@c
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 1455
    :cond_0
    return-object p0

    #@13
    .line 1458
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@16
    move-result-object v3

    #@17
    .line 1459
    .local v3, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    #@18
    .line 1461
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@1b
    move-result-object v1

    #@1c
    .line 1467
    .local v1, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const-string/jumbo v4, "KR"

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    .line 1468
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@28
    move-result v4

    #@29
    const-string/jumbo v5, "KR"

    #@2c
    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    #@2f
    move-result v5

    #@30
    if-ne v4, v5, :cond_2

    #@32
    .line 1469
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@35
    move-result-object v4

    #@36
    .line 1470
    sget-object v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    #@38
    .line 1469
    if-ne v4, v5, :cond_2

    #@3a
    .line 1471
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@3c
    invoke-virtual {v3, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 1477
    .end local v1    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    return-object v2

    #@41
    .line 1473
    .restart local v1    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    move-result-object v2

    #@45
    .local v2, "result":Ljava/lang/String;
    goto :goto_0

    #@46
    .line 1475
    .end local v1    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v2, "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@47
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1500
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 1501
    .local v2, "len":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@8
    .line 1502
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v7

    #@c
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@f
    move-result v7

    #@10
    if-nez v7, :cond_0

    #@12
    .line 1503
    return-object p0

    #@13
    .line 1501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1506
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@19
    move-result-object v6

    #@1a
    .line 1508
    .local v6, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    #@1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1f
    move-result v7

    #@20
    const/4 v8, 0x2

    #@21
    if-lt v7, v8, :cond_2

    #@23
    .line 1509
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v7

    #@27
    const/16 v8, 0x2b

    #@29
    if-ne v7, v8, :cond_2

    #@2b
    .line 1513
    :try_start_0
    const-string/jumbo v7, "ZZ"

    #@2e
    invoke-virtual {v6, p1, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@31
    move-result-object v3

    #@32
    .line 1514
    .local v3, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v6, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 1515
    .local v4, "regionCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v7

    #@3a
    if-nez v7, :cond_2

    #@3c
    .line 1517
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    const/4 v8, 0x1

    #@41
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    move-result v7

    #@49
    if-gtz v7, :cond_2

    #@4b
    .line 1518
    move-object p2, v4

    #@4c
    .line 1523
    .end local v3    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v4    # "regionCode":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    .line 1524
    .local v5, "result":Ljava/lang/String;
    if-eqz v5, :cond_3

    #@52
    .end local v5    # "result":Ljava/lang/String;
    :goto_2
    return-object v5

    #@53
    .restart local v5    # "result":Ljava/lang/String;
    :cond_3
    move-object v5, p0

    #@54
    goto :goto_2

    #@55
    .line 1520
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@56
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    goto :goto_1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x31

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    .line 1206
    move v0, p1

    #@5
    .line 1208
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@8
    move-result v1

    #@9
    if-le v1, v4, :cond_0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    #@f
    move-result v1

    #@10
    const/16 v2, 0x2b

    #@12
    if-ne v1, v2, :cond_0

    #@14
    .line 1209
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    #@17
    move-result v1

    #@18
    if-ne v1, v5, :cond_1

    #@1a
    .line 1210
    const/4 v0, 0x1

    #@1b
    .line 1219
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    #@1e
    .line 1205
    return-void

    #@1f
    .line 1211
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@22
    move-result v1

    #@23
    const/4 v2, 0x3

    #@24
    if-lt v1, v2, :cond_2

    #@26
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    #@29
    move-result v1

    #@2a
    const/16 v2, 0x38

    #@2c
    if-ne v1, v2, :cond_2

    #@2e
    .line 1212
    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    #@31
    move-result v1

    #@32
    if-ne v1, v5, :cond_2

    #@34
    .line 1213
    const/4 v0, 0x2

    #@35
    .line 1212
    goto :goto_0

    #@36
    .line 1215
    :cond_2
    const/4 v0, 0x0

    #@37
    goto :goto_0

    #@38
    .line 1221
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    #@3b
    .line 1222
    return-void

    #@3c
    .line 1224
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    #@3f
    .line 1225
    return-void

    #@40
    .line 1227
    :pswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    #@43
    .line 1228
    return-void

    #@44
    .line 1219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 4
    .param p0, "rawPhoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "formatIdentifier"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@0
    .prologue
    .line 1428
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@3
    move-result-object v2

    #@4
    .line 1430
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@7
    move-result-object v1

    #@8
    .line 1431
    .local v1, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 1432
    invoke-virtual {v2, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 1434
    .end local v1    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v0

    #@14
    .line 1436
    :cond_0
    const/4 v3, 0x0

    #@15
    return-object v3
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1398
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@2
    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1409
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    #@2
    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static getCurrentIdp(Z)Ljava/lang/String;
    .locals 3
    .param p0, "useNanp"    # Z

    #@0
    .prologue
    .line 2487
    const/4 v0, 0x0

    #@1
    .line 2488
    .local v0, "ps":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@3
    .line 2489
    const-string/jumbo v0, "011"

    #@6
    .line 2494
    .local v0, "ps":Ljava/lang/String;
    :goto_0
    return-object v0

    #@7
    .line 2492
    .local v0, "ps":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "gsm.operator.idpstring"

    #@a
    const-string/jumbo v2, "+"

    #@d
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .local v0, "ps":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getDefaultVoiceSubId()I
    .locals 1

    #@0
    .prologue
    .line 3022
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1189
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1191
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 4
    .param p0, "country"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2507
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    #@3
    array-length v1, v2

    #@4
    .line 2508
    .local v1, "length":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 2509
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 2510
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 2508
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2513
    :cond_1
    const-string/jumbo v2, "jp"

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@1c
    move-result v2

    #@1d
    if-nez v2, :cond_2

    #@1f
    .line 2514
    const/4 v2, 0x2

    #@20
    return v2

    #@21
    .line 2516
    :cond_2
    return v3
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 153
    const/4 v9, 0x0

    #@2
    .line 155
    .local v9, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@5
    move-result-object v1

    #@6
    .line 157
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    #@8
    .line 158
    return-object v2

    #@9
    .line 161
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@c
    move-result-object v11

    #@d
    .line 163
    .local v11, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "tel"

    #@10
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    const-string/jumbo v0, "sip"

    #@19
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 164
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 167
    :cond_2
    if-nez p1, :cond_3

    #@26
    .line 168
    return-object v2

    #@27
    .line 171
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    #@2a
    move-result-object v12

    #@2b
    .line 172
    .local v12, "type":Ljava/lang/String;
    const/4 v10, 0x0

    #@2c
    .line 175
    .local v10, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 176
    .local v6, "authority":Ljava/lang/String;
    const-string/jumbo v0, "contacts"

    #@33
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_7

    #@39
    .line 177
    const-string/jumbo v10, "number"

    #@3c
    .line 182
    .end local v10    # "phoneColumn":Ljava/lang/String;
    :cond_4
    :goto_0
    const/4 v7, 0x0

    #@3d
    .line 184
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@40
    move-result-object v0

    #@41
    const/4 v2, 0x1

    #@42
    new-array v2, v2, [Ljava/lang/String;

    #@44
    const/4 v3, 0x0

    #@45
    aput-object v10, v2, v3

    #@47
    .line 185
    const/4 v3, 0x0

    #@48
    const/4 v4, 0x0

    #@49
    const/4 v5, 0x0

    #@4a
    .line 184
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@4d
    move-result-object v7

    #@4e
    .line 186
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    #@50
    .line 187
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_5

    #@56
    .line 188
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@59
    move-result v0

    #@5a
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    move-result-object v9

    #@5e
    .line 194
    .end local v9    # "number":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    #@60
    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@63
    .line 199
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_6
    :goto_1
    return-object v9

    #@64
    .line 178
    .restart local v9    # "number":Ljava/lang/String;
    .restart local v10    # "phoneColumn":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "com.android.contacts"

    #@67
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v0

    #@6b
    if-eqz v0, :cond_4

    #@6d
    .line 179
    const-string/jumbo v10, "data1"

    #@70
    .local v10, "phoneColumn":Ljava/lang/String;
    goto :goto_0

    #@71
    .line 191
    .end local v10    # "phoneColumn":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@72
    .line 192
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v0, "PhoneNumberUtils"

    #@75
    const-string/jumbo v2, "Error getting phone number."

    #@78
    invoke-static {v0, v2, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7b
    .line 194
    if-eqz v7, :cond_6

    #@7d
    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@80
    goto :goto_1

    #@81
    .line 193
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    #@82
    .line 194
    if-eqz v7, :cond_8

    #@84
    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@87
    .line 193
    :cond_8
    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 727
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 729
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    return-object v1

    #@8
    .line 731
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2591
    const/16 v1, 0x40

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 2592
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    #@9
    .line 2593
    const-string/jumbo v1, "%40"

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    .line 2595
    :cond_0
    if-gez v0, :cond_1

    #@12
    .line 2596
    const-string/jumbo v1, "PhoneNumberUtils"

    #@15
    .line 2597
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, "\'"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 2596
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 2598
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@36
    move-result v0

    #@37
    .line 2600
    :cond_1
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    #@0
    .prologue
    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 373
    .local v0, "origLength":I
    const/16 v4, 0x2c

    #@6
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v1

    #@a
    .line 374
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    #@c
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v3

    #@10
    .line 376
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    #@13
    move-result v2

    #@14
    .line 378
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    #@16
    .line 379
    add-int/lit8 v4, v0, -0x1

    #@18
    return v4

    #@19
    .line 381
    :cond_0
    add-int/lit8 v4, v2, -0x1

    #@1b
    return v4
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 907
    move v2, p2

    #@1
    .local v2, "i":I
    :goto_0
    add-int v3, p3, p2

    #@3
    if-ge v2, v3, :cond_1

    #@5
    .line 911
    aget-byte v3, p1, v2

    #@7
    and-int/lit8 v3, v3, 0xf

    #@9
    int-to-byte v3, v3

    #@a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    #@d
    move-result v1

    #@e
    .line 913
    .local v1, "c":C
    if-nez v1, :cond_0

    #@10
    .line 914
    return-void

    #@11
    .line 916
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 925
    aget-byte v3, p1, v2

    #@16
    shr-int/lit8 v3, v3, 0x4

    #@18
    and-int/lit8 v3, v3, 0xf

    #@1a
    int-to-byte v0, v3

    #@1b
    .line 927
    .local v0, "b":B
    const/16 v3, 0xf

    #@1d
    if-ne v0, v3, :cond_2

    #@1f
    add-int/lit8 v3, v2, 0x1

    #@21
    add-int v4, p3, p2

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 906
    .end local v0    # "b":B
    .end local v1    # "c":C
    :cond_1
    return-void

    #@26
    .line 932
    .restart local v0    # "b":B
    .restart local v1    # "c":C
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    #@29
    move-result v1

    #@2a
    .line 933
    if-nez v1, :cond_3

    #@2c
    .line 934
    return-void

    #@2d
    .line 937
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 907
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 740
    if-nez p0, :cond_0

    #@3
    return-object v5

    #@4
    .line 742
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 743
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    .line 745
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    #@f
    .local v1, "i":I
    move v4, v2

    #@10
    .line 746
    .local v4, "s":I
    :goto_0
    if-ltz v1, :cond_1

    #@12
    sub-int v5, v2, v1

    #@14
    if-gt v5, p1, :cond_1

    #@16
    .line 748
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v0

    #@1a
    .line 750
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 746
    add-int/lit8 v1, v1, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 753
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    return-object v5
.end method

.method public static final is12Key(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 98
    const/16 v1, 0x30

    #@3
    if-lt p0, v1, :cond_1

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x2a

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/16 v1, 0x23

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public static isConvertToEmergencyNumberEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3041
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

    #@7
    array-length v1, v1

    #@8
    if-lez v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 2
    .param p0, "countryCallingCodeCandidate"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2852
    if-lez p0, :cond_0

    #@3
    sget v1, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    #@5
    if-ge p0, v1, :cond_0

    #@7
    .line 2853
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    #@9
    aget-boolean v0, v0, p0

    #@b
    .line 2852
    :cond_0
    return v0
.end method

.method public static final isDialable(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 104
    const/16 v1, 0x30

    #@3
    if-lt p0, v1, :cond_1

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x2a

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/16 v1, 0x23

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/16 v1, 0x2b

    #@14
    if-eq p0, v1, :cond_0

    #@16
    const/16 v1, 0x4e

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1014
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 1015
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 1016
    const/4 v2, 0x0

    #@12
    return v2

    #@13
    .line 1014
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1019
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1620
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1748
    const/4 v0, 0x1

    #@1
    .line 1746
    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1604
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1732
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .param p3, "useExactMatch"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1845
    if-nez p1, :cond_0

    #@4
    return v6

    #@5
    .line 1854
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    #@8
    move-result v5

    #@9
    if-eqz v5, :cond_1

    #@b
    .line 1855
    return v6

    #@c
    .line 1860
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object p1

    #@10
    .line 1862
    const-string/jumbo v2, ""

    #@13
    .line 1863
    .local v2, "emergencyNumbers":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    #@16
    move-result v3

    #@17
    .line 1867
    .local v3, "slotId":I
    if-gtz v3, :cond_4

    #@19
    const-string/jumbo v0, "ril.ecclist"

    #@1c
    .line 1869
    .local v0, "ecclist":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, ""

    #@1f
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 1871
    const-string/jumbo v5, "PhoneNumberUtils"

    #@26
    new-instance v7, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v8, "slotId:"

    #@2e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    const-string/jumbo v8, " subId:"

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    const-string/jumbo v8, " country:"

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    .line 1872
    const-string/jumbo v8, " emergencyNumbers: "

    #@4f
    .line 1871
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 1874
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_2

    #@64
    .line 1876
    const-string/jumbo v5, "ro.ril.ecclist"

    #@67
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .line 1879
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6e
    move-result v5

    #@6f
    if-nez v5, :cond_8

    #@71
    .line 1882
    const-string/jumbo v5, ","

    #@74
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    array-length v8, v7

    #@79
    move v5, v6

    #@7a
    :goto_1
    if-ge v5, v8, :cond_7

    #@7c
    aget-object v1, v7, v5

    #@7e
    .line 1885
    .local v1, "emergencyNum":Ljava/lang/String;
    if-nez p3, :cond_3

    #@80
    const-string/jumbo v9, "BR"

    #@83
    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@86
    move-result v9

    #@87
    if-eqz v9, :cond_5

    #@89
    .line 1886
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v9

    #@8d
    if-eqz v9, :cond_6

    #@8f
    .line 1887
    return v10

    #@90
    .line 1867
    .end local v0    # "ecclist":Ljava/lang/String;
    .end local v1    # "emergencyNum":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v7, "ril.ecclist"

    #@98
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    .restart local v0    # "ecclist":Ljava/lang/String;
    goto/16 :goto_0

    #@a6
    .line 1890
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a9
    move-result v9

    #@aa
    if-eqz v9, :cond_6

    #@ac
    .line 1891
    return v10

    #@ad
    .line 1882
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@af
    goto :goto_1

    #@b0
    .line 1896
    .end local v1    # "emergencyNum":Ljava/lang/String;
    :cond_7
    return v6

    #@b1
    .line 1899
    :cond_8
    const-string/jumbo v5, "PhoneNumberUtils"

    #@b4
    const-string/jumbo v7, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    #@b7
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ba
    .line 1905
    if-gez v3, :cond_9

    #@bc
    const-string/jumbo v2, "112,911,000,08,110,118,119,999"

    #@bf
    .line 1907
    :goto_2
    const-string/jumbo v5, ","

    #@c2
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c5
    move-result-object v7

    #@c6
    array-length v8, v7

    #@c7
    move v5, v6

    #@c8
    :goto_3
    if-ge v5, v8, :cond_c

    #@ca
    aget-object v1, v7, v5

    #@cc
    .line 1908
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    if-eqz p3, :cond_a

    #@ce
    .line 1909
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v9

    #@d2
    if-eqz v9, :cond_b

    #@d4
    .line 1910
    return v10

    #@d5
    .line 1905
    .end local v1    # "emergencyNum":Ljava/lang/String;
    :cond_9
    const-string/jumbo v2, "112,911"

    #@d8
    goto :goto_2

    #@d9
    .line 1913
    .restart local v1    # "emergencyNum":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@dc
    move-result v9

    #@dd
    if-eqz v9, :cond_b

    #@df
    .line 1914
    return v10

    #@e0
    .line 1907
    :cond_b
    add-int/lit8 v5, v5, 0x1

    #@e2
    goto :goto_3

    #@e3
    .line 1920
    .end local v1    # "emergencyNum":Ljava/lang/String;
    :cond_c
    if-eqz p2, :cond_e

    #@e5
    .line 1921
    new-instance v4, Lcom/android/i18n/phonenumbers/ShortNumberUtil;

    #@e7
    invoke-direct {v4}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;-><init>()V

    #@ea
    .line 1922
    .local v4, "util":Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    if-eqz p3, :cond_d

    #@ec
    .line 1923
    invoke-virtual {v4, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    #@ef
    move-result v5

    #@f0
    return v5

    #@f1
    .line 1925
    :cond_d
    invoke-virtual {v4, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    #@f4
    move-result v5

    #@f5
    return v5

    #@f6
    .line 1929
    .end local v4    # "util":Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    :cond_e
    return v6
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    #@0
    .prologue
    .line 1718
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    #@0
    .prologue
    .line 1821
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    #@0
    .prologue
    .line 1693
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1005
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1006
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 1009
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    #@a
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v0

    #@e
    .line 1010
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public static isISODigit(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    const/16 v1, 0x30

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1957
    const/4 v0, 0x1

    #@1
    .line 1955
    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1941
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useExactMatch"    # Z

    #@0
    .prologue
    .line 2062
    const-string/jumbo v3, "country_detector"

    #@3
    .line 2061
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/location/CountryDetector;

    #@9
    .line 2063
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    #@b
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    #@e
    move-result-object v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 2064
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 2071
    .local v0, "countryIso":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v0, p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    #@1c
    move-result v3

    #@1d
    return v3

    #@1e
    .line 2066
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@25
    move-result-object v3

    #@26
    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@28
    .line 2067
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 2068
    .restart local v0    # "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "PhoneNumberUtils"

    #@2f
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v5, "No CountryDetector; falling back to countryIso based on locale: "

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    goto :goto_0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    #@0
    .prologue
    .line 2036
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    .line 2525
    const/4 v2, 0x0

    #@3
    .line 2526
    .local v2, "retVal":Z
    if-eqz p0, :cond_2

    #@5
    .line 2527
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    if-ne v3, v4, :cond_0

    #@b
    .line 2528
    const/4 v3, 0x0

    #@c
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v3

    #@10
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 2529
    const/4 v3, 0x3

    #@17
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    #@1e
    move-result v3

    #@1f
    .line 2528
    if-eqz v3, :cond_0

    #@21
    .line 2530
    const/4 v2, 0x1

    #@22
    .line 2531
    const/4 v1, 0x1

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    #@25
    .line 2532
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v0

    #@29
    .line 2533
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_1

    #@2f
    .line 2534
    const/4 v2, 0x0

    #@30
    .line 2543
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    #@31
    .line 2531
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 2541
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v3, "isNanp: null dialStr passed in"

    #@37
    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 116
    const/16 v1, 0x30

    #@3
    if-lt p0, v1, :cond_1

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x2a

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/16 v1, 0x23

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/16 v1, 0x2b

    #@14
    if-eq p0, v1, :cond_0

    #@16
    .line 117
    const/16 v1, 0x4e

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    const/16 v1, 0x3b

    #@1c
    if-eq p0, v1, :cond_0

    #@1e
    const/16 v1, 0x2c

    #@20
    if-eq p0, v1, :cond_0

    #@22
    const/4 v0, 0x0

    #@23
    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1023
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 1024
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 1025
    const/4 v2, 0x0

    #@12
    return v2

    #@13
    .line 1023
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1028
    :cond_1
    const/4 v2, 0x1

    #@17
    return v2
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2550
    const/4 v1, 0x0

    #@1
    .line 2551
    .local v1, "retVal":Z
    if-eqz p0, :cond_1

    #@3
    .line 2552
    const/4 v2, 0x1

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 2553
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    const/16 v3, 0x31

    #@f
    if-ne v2, v3, :cond_0

    #@11
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 2554
    const/4 v1, 0x1

    #@18
    .line 2559
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    #@19
    .line 2557
    :cond_1
    const-string/jumbo v2, "isOneNanp: null dialStr passed in"

    #@1c
    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 130
    const/16 v1, 0x70

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x50

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1670
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1801
    const/4 v0, 0x0

    #@1
    .line 1799
    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1644
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1773
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2012
    const/4 v0, 0x0

    #@1
    .line 2010
    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1983
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 110
    const/16 v1, 0x30

    #@3
    if-lt p0, v1, :cond_1

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x2a

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/16 v1, 0x23

    #@10
    if-eq p0, v1, :cond_0

    #@12
    const/16 v1, 0x2b

    #@14
    if-eq p0, v1, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 3
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 141
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_2

    #@8
    const/16 v2, 0x61

    #@a
    if-gt v2, p0, :cond_0

    #@c
    const/16 v2, 0x7a

    #@e
    if-le p0, v2, :cond_2

    #@10
    :cond_0
    const/16 v2, 0x41

    #@12
    if-gt v2, p0, :cond_1

    #@14
    const/16 v2, 0x5a

    #@16
    if-le p0, v2, :cond_3

    #@18
    :cond_1
    :goto_0
    move v1, v0

    #@19
    :cond_2
    return v1

    #@1a
    :cond_3
    move v0, v1

    #@1b
    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 125
    const/16 v1, 0x2c

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x3b

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 135
    const/16 v1, 0x77

    #@3
    if-eq p0, v1, :cond_0

    #@5
    const/16 v1, 0x57

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    #@0
    .prologue
    .line 2498
    const/16 v0, 0x32

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 2499
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 2501
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2575
    if-eqz p0, :cond_1

    #@2
    const-string/jumbo v0, "@"

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    const-string/jumbo v0, "%40"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2101
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2121
    if-nez p0, :cond_1

    #@3
    .line 2122
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v1

    #@7
    .line 2126
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    .line 2132
    .local v2, "vmNumber":Ljava/lang/String;
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object p2

    #@f
    .line 2136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_0

    #@15
    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    :cond_0
    return v3

    #@1a
    .line 2124
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "vmNumber":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    #@1d
    move-result-object v1

    #@1e
    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    goto :goto_0

    #@1f
    .line 2127
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    #@20
    .line 2128
    .local v0, "ex":Ljava/lang/SecurityException;
    return v3
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2085
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    #@3
    move-result v0

    #@4
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 997
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 999
    .local v0, "networkPortion":Ljava/lang/String;
    const-string/jumbo v1, "+"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    .line 999
    :goto_0
    if-nez v1, :cond_1

    #@13
    .line 1001
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    .line 999
    :goto_1
    return v1

    #@18
    :cond_0
    const/4 v1, 0x1

    #@19
    goto :goto_0

    #@1a
    :cond_1
    const/4 v1, 0x0

    #@1b
    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    const-string/jumbo v0, "PhoneNumberUtils"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 359
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    #@0
    .prologue
    const/16 v7, 0x31

    #@2
    const/16 v6, 0x30

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v4, 0x0

    #@6
    .line 2725
    const/4 v2, 0x0

    #@7
    .line 2726
    .local v2, "state":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_6

    #@a
    .line 2727
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 2729
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    #@11
    .line 2748
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    return v4

    #@18
    .line 2731
    :pswitch_1
    const/16 v5, 0x2b

    #@1a
    if-ne v0, v5, :cond_1

    #@1c
    const/4 v2, 0x1

    #@1d
    .line 2726
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 2732
    :cond_1
    if-ne v0, v6, :cond_2

    #@22
    const/4 v2, 0x2

    #@23
    goto :goto_1

    #@24
    .line 2733
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_0

    #@2a
    return v4

    #@2b
    .line 2737
    :pswitch_2
    if-ne v0, v6, :cond_3

    #@2d
    const/4 v2, 0x3

    #@2e
    goto :goto_1

    #@2f
    .line 2738
    :cond_3
    if-ne v0, v7, :cond_4

    #@31
    const/4 v2, 0x4

    #@32
    goto :goto_1

    #@33
    .line 2739
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_0

    #@39
    return v4

    #@3a
    .line 2743
    :pswitch_3
    if-ne v0, v7, :cond_5

    #@3c
    const/4 v2, 0x5

    #@3d
    goto :goto_1

    #@3e
    .line 2744
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_0

    #@44
    return v4

    #@45
    .line 2754
    .end local v0    # "c":C
    :cond_6
    if-eq v2, v3, :cond_7

    #@47
    const/4 v5, 0x3

    #@48
    if-ne v2, v5, :cond_8

    #@4a
    :cond_7
    :goto_2
    return v3

    #@4b
    :cond_8
    const/4 v5, 0x5

    #@4c
    if-eq v2, v5, :cond_7

    #@4e
    move v3, v4

    #@4f
    goto :goto_2

    #@50
    .line 2729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    #@0
    .prologue
    const/16 v7, 0x31

    #@2
    const/16 v6, 0x30

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v4, 0x0

    #@6
    .line 2764
    const/4 v2, 0x0

    #@7
    .line 2765
    .local v2, "state":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_8

    #@a
    .line 2766
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 2768
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    #@11
    .line 2800
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    return v4

    #@18
    .line 2770
    :pswitch_0
    const/16 v5, 0x2b

    #@1a
    if-ne v0, v5, :cond_1

    #@1c
    const/4 v2, 0x1

    #@1d
    .line 2765
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 2771
    :cond_1
    if-ne v0, v6, :cond_2

    #@22
    const/4 v2, 0x2

    #@23
    goto :goto_1

    #@24
    .line 2772
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_0

    #@2a
    return v4

    #@2b
    .line 2776
    :pswitch_1
    if-ne v0, v6, :cond_3

    #@2d
    const/4 v2, 0x3

    #@2e
    goto :goto_1

    #@2f
    .line 2777
    :cond_3
    if-ne v0, v7, :cond_4

    #@31
    const/4 v2, 0x4

    #@32
    goto :goto_1

    #@33
    .line 2778
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_0

    #@39
    return v4

    #@3a
    .line 2782
    :pswitch_2
    if-ne v0, v7, :cond_5

    #@3c
    const/4 v2, 0x5

    #@3d
    goto :goto_1

    #@3e
    .line 2783
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@41
    move-result v5

    #@42
    if-eqz v5, :cond_0

    #@44
    return v4

    #@45
    .line 2789
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_6

    #@4b
    const/4 v2, 0x6

    #@4c
    goto :goto_1

    #@4d
    .line 2790
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_0

    #@53
    return v4

    #@54
    .line 2795
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    #@57
    move-result v5

    #@58
    if-eqz v5, :cond_7

    #@5a
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 2796
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@60
    move-result v5

    #@61
    if-eqz v5, :cond_0

    #@63
    return v4

    #@64
    .line 2804
    .end local v0    # "c":C
    :cond_8
    const/4 v5, 0x6

    #@65
    if-eq v2, v5, :cond_9

    #@67
    const/4 v5, 0x7

    #@68
    if-ne v2, v5, :cond_a

    #@6a
    :cond_9
    :goto_2
    return v3

    #@6b
    :cond_a
    const/16 v5, 0x8

    #@6d
    if-eq v2, v5, :cond_9

    #@6f
    move v3, v4

    #@70
    goto :goto_2

    #@71
    .line 2768
    nop

    #@72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    #@0
    .prologue
    .line 2812
    const/4 v1, 0x0

    #@1
    .line 2814
    .local v1, "found":Z
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_3

    #@4
    .line 2815
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v0

    #@8
    .line 2817
    .local v0, "c":C
    const/16 v3, 0x30

    #@a
    if-ne v0, v3, :cond_0

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 2819
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 2820
    const/4 v3, 0x0

    #@15
    return v3

    #@16
    .line 2818
    :cond_1
    const/4 v1, 0x1

    #@17
    .line 2814
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2824
    .end local v0    # "c":C
    :cond_3
    return v1
.end method

.method private static minPositive(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 348
    if-ltz p0, :cond_1

    #@2
    if-ltz p1, :cond_1

    #@4
    .line 349
    if-ge p0, p1, :cond_0

    #@6
    .end local p0    # "a":I
    :goto_0
    return p0

    #@7
    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    #@8
    goto :goto_0

    #@9
    .line 350
    :cond_1
    if-ltz p0, :cond_2

    #@b
    .line 351
    return p0

    #@c
    .line 352
    :cond_2
    if-ltz p1, :cond_3

    #@e
    .line 353
    return p1

    #@f
    .line 355
    :cond_3
    const/4 v0, -0x1

    #@10
    return v0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1038
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1039
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1048
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1049
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    #@5
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1536
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 1537
    const-string/jumbo v5, ""

    #@9
    return-object v5

    #@a
    .line 1540
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 1541
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@12
    move-result v3

    #@13
    .line 1542
    .local v3, "len":I
    const/4 v2, 0x0

    #@14
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    #@16
    .line 1543
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v0

    #@1a
    .line 1545
    .local v0, "c":C
    const/16 v5, 0xa

    #@1c
    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    #@1f
    move-result v1

    #@20
    .line 1546
    .local v1, "digit":I
    const/4 v5, -0x1

    #@21
    if-eq v1, v5, :cond_2

    #@23
    .line 1547
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 1542
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1548
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@2c
    move-result v5

    #@2d
    if-nez v5, :cond_3

    #@2f
    const/16 v5, 0x2b

    #@31
    if-ne v0, v5, :cond_3

    #@33
    .line 1549
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    goto :goto_1

    #@37
    .line 1550
    :cond_3
    const/16 v5, 0x61

    #@39
    if-lt v0, v5, :cond_4

    #@3b
    const/16 v5, 0x7a

    #@3d
    if-gt v0, v5, :cond_4

    #@3f
    .line 1551
    :goto_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    return-object v5

    #@48
    .line 1550
    :cond_4
    const/16 v5, 0x41

    #@4a
    if-lt v0, v5, :cond_1

    #@4c
    const/16 v5, 0x5a

    #@4e
    if-gt v0, v5, :cond_1

    #@50
    goto :goto_2

    #@51
    .line 1554
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    return-object v5
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1061
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 14
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    #@0
    .prologue
    .line 1070
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v6

    #@4
    .line 1071
    .local v6, "numberLenReal":I
    move v5, v6

    #@5
    .line 1072
    .local v5, "numberLenEffective":I
    const/16 v11, 0x2b

    #@7
    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v11

    #@b
    const/4 v12, -0x1

    #@c
    if-eq v11, v12, :cond_1

    #@e
    const/4 v3, 0x1

    #@f
    .line 1073
    .local v3, "hasPlus":Z
    :goto_0
    if-eqz v3, :cond_0

    #@11
    add-int/lit8 v5, v6, -0x1

    #@13
    .line 1075
    :cond_0
    if-nez v5, :cond_2

    #@15
    const/4 v11, 0x0

    #@16
    return-object v11

    #@17
    .line 1072
    .end local v3    # "hasPlus":Z
    :cond_1
    const/4 v3, 0x0

    #@18
    goto :goto_0

    #@19
    .line 1077
    .restart local v3    # "hasPlus":Z
    :cond_2
    add-int/lit8 v11, v5, 0x1

    #@1b
    div-int/lit8 v9, v11, 0x2

    #@1d
    .line 1078
    .local v9, "resultLen":I
    const/4 v2, 0x1

    #@1e
    .line 1079
    .local v2, "extraBytes":I
    if-eqz p1, :cond_3

    #@20
    const/4 v2, 0x2

    #@21
    .line 1080
    :cond_3
    add-int/2addr v9, v2

    #@22
    .line 1082
    new-array v8, v9, [B

    #@24
    .line 1084
    .local v8, "result":[B
    const/4 v1, 0x0

    #@25
    .line 1085
    .local v1, "digitCount":I
    const/4 v4, 0x0

    #@26
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_6

    #@28
    .line 1086
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v0

    #@2c
    .line 1087
    .local v0, "c":C
    const/16 v11, 0x2b

    #@2e
    if-ne v0, v11, :cond_4

    #@30
    .line 1085
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_1

    #@33
    .line 1088
    :cond_4
    and-int/lit8 v11, v1, 0x1

    #@35
    const/4 v12, 0x1

    #@36
    if-ne v11, v12, :cond_5

    #@38
    const/4 v10, 0x4

    #@39
    .line 1089
    .local v10, "shift":I
    :goto_3
    shr-int/lit8 v11, v1, 0x1

    #@3b
    add-int/2addr v11, v2

    #@3c
    aget-byte v12, v8, v11

    #@3e
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    #@41
    move-result v13

    #@42
    and-int/lit8 v13, v13, 0xf

    #@44
    shl-int/2addr v13, v10

    #@45
    int-to-byte v13, v13

    #@46
    or-int/2addr v12, v13

    #@47
    int-to-byte v12, v12

    #@48
    aput-byte v12, v8, v11

    #@4a
    .line 1090
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_2

    #@4d
    .line 1088
    .end local v10    # "shift":I
    :cond_5
    const/4 v10, 0x0

    #@4e
    .restart local v10    # "shift":I
    goto :goto_3

    #@4f
    .line 1094
    .end local v0    # "c":C
    .end local v10    # "shift":I
    :cond_6
    and-int/lit8 v11, v1, 0x1

    #@51
    const/4 v12, 0x1

    #@52
    if-ne v11, v12, :cond_7

    #@54
    shr-int/lit8 v11, v1, 0x1

    #@56
    add-int/2addr v11, v2

    #@57
    aget-byte v12, v8, v11

    #@59
    or-int/lit16 v12, v12, 0xf0

    #@5b
    int-to-byte v12, v12

    #@5c
    aput-byte v12, v8, v11

    #@5e
    .line 1096
    :cond_7
    const/4 v7, 0x0

    #@5f
    .line 1097
    .local v7, "offset":I
    if-eqz p1, :cond_8

    #@61
    .line 1096
    const/4 v11, 0x0

    #@62
    .line 1097
    const/4 v7, 0x1

    #@63
    add-int/lit8 v12, v9, -0x1

    #@65
    int-to-byte v12, v12

    #@66
    aput-byte v12, v8, v11

    #@68
    .line 1098
    :cond_8
    if-eqz v3, :cond_9

    #@6a
    const/16 v11, 0x91

    #@6c
    :goto_4
    int-to-byte v11, v11

    #@6d
    aput-byte v11, v8, v7

    #@6f
    .line 1100
    return-object v8

    #@70
    .line 1098
    :cond_9
    const/16 v11, 0x81

    #@72
    goto :goto_4
.end method

.method private static processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 2652
    move-object v1, p0

    #@2
    .line 2658
    .local v1, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@4
    .line 2659
    const/4 v2, 0x0

    #@5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v2

    #@9
    const/16 v3, 0x2b

    #@b
    if-ne v2, v3, :cond_0

    #@d
    .line 2660
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    if-le v2, v4, :cond_0

    #@13
    .line 2661
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 2663
    .local v0, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@19
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 2665
    move-object v1, v0

    #@20
    .line 2672
    .end local v0    # "newStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    #@21
    .line 2668
    .restart local v0    # "newStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "[+]"

    #@24
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    goto :goto_0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 1380
    const/4 v0, 0x0

    #@1
    .line 1381
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 1382
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    #@a
    move-result v1

    #@b
    const/16 v2, 0x2d

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 1383
    add-int/lit8 v1, v0, 0x1

    #@11
    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    #@14
    goto :goto_0

    #@15
    .line 1385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1379
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1564
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 1565
    .local v2, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object v4

    #@d
    const/4 v3, 0x0

    #@e
    array-length v5, v4

    #@f
    :goto_0
    if-ge v3, v5, :cond_1

    #@11
    aget-char v0, v4, v3

    #@13
    .line 1566
    .local v0, "c":C
    const/16 v6, 0xa

    #@15
    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    #@18
    move-result v1

    #@19
    .line 1567
    .local v1, "digit":I
    const/4 v6, -0x1

    #@1a
    if-eq v1, v6, :cond_0

    #@1c
    .line 1568
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 1565
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1570
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    goto :goto_1

    #@26
    .line 1573
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    return-object v3
.end method

.method private static splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2474
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v2

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 2475
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v2

    #@e
    if-ge v0, v2, :cond_1

    #@10
    .line 2476
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result v2

    #@14
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 2477
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@1d
    move-result v2

    #@1e
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@21
    move-result-object v2

    #@22
    .line 2476
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    .line 2475
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 2478
    :cond_0
    const-string/jumbo v2, " "

    #@2b
    goto :goto_1

    #@2c
    .line 2483
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, " +"

    #@33
    const-string/jumbo v4, " "

    #@36
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    return-object v2
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 764
    if-nez p0, :cond_0

    #@4
    return-object v0

    #@5
    .line 766
    :cond_0
    const/16 v0, 0x91

    #@7
    if-ne p1, v0, :cond_1

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    if-lez v0, :cond_1

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    const/16 v1, 0x2b

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v1, "+"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 770
    :cond_1
    return-object p0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 285
    if-nez p0, :cond_0

    #@3
    .line 286
    return-object v5

    #@4
    .line 288
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    .line 289
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 291
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@10
    .line 292
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 294
    .local v0, "c":C
    const/16 v5, 0xa

    #@16
    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    #@19
    move-result v1

    #@1a
    .line 295
    .local v1, "digit":I
    const/4 v5, -0x1

    #@1b
    if-eq v1, v5, :cond_2

    #@1d
    .line 296
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 291
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 297
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_1

    #@29
    .line 298
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_1

    #@2d
    .line 302
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    return-object v5
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 714
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 715
    .local v0, "np":Ljava/lang/String;
    const/4 v1, 0x7

    #@5
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 780
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    const/16 v1, 0x2b

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 781
    const/16 v0, 0x91

    #@13
    return v0

    #@14
    .line 784
    :cond_0
    const/16 v0, 0x81

    #@16
    return v0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    #@0
    .prologue
    const/16 v10, 0x36

    #@2
    const/16 v9, 0x30

    #@4
    const/16 v8, 0x31

    #@6
    const/4 v7, 0x0

    #@7
    .line 2891
    const/4 v5, 0x0

    #@8
    .line 2892
    .local v5, "state":I
    const/4 v0, 0x0

    #@9
    .line 2893
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v3

    #@d
    .line 2894
    .local v3, "length":I
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_f

    #@10
    .line 2895
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    .line 2896
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_0

    #@17
    .line 2961
    return-object v7

    #@18
    .line 2898
    :pswitch_0
    const/16 v6, 0x2b

    #@1a
    if-ne v1, v6, :cond_1

    #@1c
    const/4 v5, 0x1

    #@1d
    .line 2894
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 2899
    :cond_1
    if-ne v1, v9, :cond_2

    #@22
    const/4 v5, 0x2

    #@23
    goto :goto_1

    #@24
    .line 2900
    :cond_2
    if-ne v1, v8, :cond_4

    #@26
    .line 2901
    if-eqz p1, :cond_3

    #@28
    .line 2902
    const/16 v5, 0x8

    #@2a
    goto :goto_1

    #@2b
    .line 2904
    :cond_3
    return-object v7

    #@2c
    .line 2906
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_0

    #@32
    .line 2907
    return-object v7

    #@33
    .line 2912
    :pswitch_1
    if-ne v1, v9, :cond_5

    #@35
    const/4 v5, 0x3

    #@36
    goto :goto_1

    #@37
    .line 2913
    :cond_5
    if-ne v1, v8, :cond_6

    #@39
    const/4 v5, 0x4

    #@3a
    goto :goto_1

    #@3b
    .line 2914
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_0

    #@41
    .line 2915
    return-object v7

    #@42
    .line 2920
    :pswitch_2
    if-ne v1, v8, :cond_7

    #@44
    const/4 v5, 0x5

    #@45
    goto :goto_1

    #@46
    .line 2921
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_0

    #@4c
    .line 2922
    return-object v7

    #@4d
    .line 2932
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    #@50
    move-result v4

    #@51
    .line 2933
    .local v4, "ret":I
    if-lez v4, :cond_c

    #@53
    .line 2934
    mul-int/lit8 v6, v0, 0xa

    #@55
    add-int v0, v6, v4

    #@57
    .line 2935
    const/16 v6, 0x64

    #@59
    if-ge v0, v6, :cond_8

    #@5b
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    #@5e
    move-result v6

    #@5f
    if-eqz v6, :cond_9

    #@61
    .line 2936
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    #@63
    add-int/lit8 v7, v2, 0x1

    #@65
    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    #@68
    return-object v6

    #@69
    .line 2938
    :cond_9
    const/4 v6, 0x1

    #@6a
    if-eq v5, v6, :cond_a

    #@6c
    const/4 v6, 0x3

    #@6d
    if-ne v5, v6, :cond_b

    #@6f
    .line 2939
    :cond_a
    const/4 v5, 0x6

    #@70
    .line 2938
    goto :goto_1

    #@71
    :cond_b
    const/4 v6, 0x5

    #@72
    if-eq v5, v6, :cond_a

    #@74
    .line 2941
    add-int/lit8 v5, v5, 0x1

    #@76
    goto :goto_1

    #@77
    .line 2943
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@7a
    move-result v6

    #@7b
    if-eqz v6, :cond_0

    #@7d
    .line 2944
    return-object v7

    #@7e
    .line 2949
    .end local v4    # "ret":I
    :pswitch_4
    if-ne v1, v10, :cond_d

    #@80
    const/16 v5, 0x9

    #@82
    goto :goto_1

    #@83
    .line 2950
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@86
    move-result v6

    #@87
    if-eqz v6, :cond_0

    #@89
    .line 2951
    return-object v7

    #@8a
    .line 2955
    :pswitch_5
    if-ne v1, v10, :cond_e

    #@8c
    .line 2956
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    #@8e
    add-int/lit8 v7, v2, 0x1

    #@90
    const/16 v8, 0x42

    #@92
    invoke-direct {v6, v8, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    #@95
    return-object v6

    #@96
    .line 2958
    :cond_e
    return-object v7

    #@97
    .line 2965
    .end local v1    # "ch":C
    :cond_f
    return-object v7

    #@98
    .line 2896
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 2862
    const/16 v0, 0x30

    #@2
    if-gt v0, p0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 2863
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 2865
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2978
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 2979
    .local v2, "length":I
    move v1, p1

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@8
    .line 2980
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    .line 2981
    .local v0, "ch":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    #@f
    move-result v3

    #@10
    if-ltz v3, :cond_0

    #@12
    .line 2982
    add-int/lit8 v3, v1, 0x1

    #@14
    return v3

    #@15
    .line 2983
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 2984
    return v4

    #@1c
    .line 2979
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2987
    .end local v0    # "ch":C
    :cond_2
    return v4
.end method

.method public static ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2414
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .locals 0
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2431
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    #@3
    .line 2430
    return-void
.end method
