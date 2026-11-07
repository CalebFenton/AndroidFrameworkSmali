.class public final Lsun/util/locale/BaseLocale;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/BaseLocale$Key;,
        Lsun/util/locale/BaseLocale$Cache;
    }
.end annotation


# static fields
.field public static final blacklist CANADA:B = 0x10t

.field public static final blacklist CANADA_FRENCH:B = 0x11t

.field public static final blacklist CHINESE:B = 0x6t

.field public static final blacklist ENGLISH:B = 0x0t

.field public static final blacklist FRANCE:B = 0x9t

.field public static final blacklist FRENCH:B = 0x1t

.field public static final blacklist GERMAN:B = 0x2t

.field public static final blacklist GERMANY:B = 0xat

.field public static final blacklist ITALIAN:B = 0x3t

.field public static final blacklist ITALY:B = 0xbt

.field public static final blacklist JAPAN:B = 0xct

.field public static final blacklist JAPANESE:B = 0x4t

.field public static final blacklist KOREA:B = 0xdt

.field public static final blacklist KOREAN:B = 0x5t

.field public static final blacklist NUM_CONSTANTS:B = 0x13t

.field public static final blacklist ROOT:B = 0x12t

.field public static final blacklist SEP:Ljava/lang/String; = "_"

.field public static final blacklist SIMPLIFIED_CHINESE:B = 0x7t

.field public static final blacklist TRADITIONAL_CHINESE:B = 0x8t

.field public static final blacklist UK:B = 0xet

.field public static final blacklist US:B = 0xft

.field public static final blacklist USE_NEW_ISO_LOCALE_CODES:J = 0x11659058L

.field public static blacklist constantBaseLocales:[Lsun/util/locale/BaseLocale;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# instance fields
.field private volatile greylist-max-o hash:I

.field private final greylist-max-o language:Ljava/lang/String;

.field private final greylist-max-o region:Ljava/lang/String;

.field private final greylist-max-o script:Ljava/lang/String;

.field private final greylist-max-o variant:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 73
    sget-object v0, Lsun/util/locale/BaseLocale;->constantBaseLocales:[Lsun/util/locale/BaseLocale;

    .line 74
    .local v0, "baseLocales":[Lsun/util/locale/BaseLocale;
    if-nez v0, :cond_be

    .line 75
    const/16 v1, 0x13

    new-array v0, v1, [Lsun/util/locale/BaseLocale;

    .line 76
    const/4 v1, 0x0

    const-string v2, "en"

    const-string v3, ""

    invoke-static {v2, v3}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v4

    aput-object v4, v0, v1

    .line 77
    const/4 v1, 0x1

    const-string v4, "fr"

    invoke-static {v4, v3}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v5

    aput-object v5, v0, v1

    .line 78
    const/4 v1, 0x2

    const-string v5, "de"

    invoke-static {v5, v3}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v6

    aput-object v6, v0, v1

    .line 79
    const/4 v1, 0x3

    const-string v6, "it"

    invoke-static {v6, v3}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v7

    aput-object v7, v0, v1

    .line 80
    const/4 v1, 0x4

    const-string v7, "ja"

    invoke-static {v7, v3}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v8

    aput-object v8, v0, v1

    .line 81
    const/4 v1, 0x5

    const-string v8, "ko"

    invoke-static {v8, v3}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v9

    aput-object v9, v0, v1

    .line 82
    const/4 v1, 0x6

    const-string v9, "zh"

    invoke-static {v9, v3}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v10

    aput-object v10, v0, v1

    .line 83
    const-string v1, "CN"

    invoke-static {v9, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/4 v10, 0x7

    aput-object v1, v0, v10

    .line 84
    const-string v1, "TW"

    invoke-static {v9, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/16 v9, 0x8

    aput-object v1, v0, v9

    .line 85
    const-string v1, "FR"

    invoke-static {v4, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/16 v9, 0x9

    aput-object v1, v0, v9

    .line 86
    const-string v1, "DE"

    invoke-static {v5, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/16 v5, 0xa

    aput-object v1, v0, v5

    .line 87
    const-string v1, "IT"

    invoke-static {v6, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/16 v5, 0xb

    aput-object v1, v0, v5

    .line 88
    const-string v1, "JP"

    invoke-static {v7, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/16 v5, 0xc

    aput-object v1, v0, v5

    .line 89
    const-string v1, "KR"

    invoke-static {v8, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/16 v5, 0xd

    aput-object v1, v0, v5

    .line 90
    const-string v1, "GB"

    invoke-static {v2, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/16 v5, 0xe

    aput-object v1, v0, v5

    .line 91
    const-string v1, "US"

    invoke-static {v2, v1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    const/16 v5, 0xf

    aput-object v1, v0, v5

    .line 92
    const/16 v1, 0x10

    const-string v5, "CA"

    invoke-static {v2, v5}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v2

    aput-object v2, v0, v1

    .line 93
    const/16 v1, 0x11

    invoke-static {v4, v5}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v2

    aput-object v2, v0, v1

    .line 94
    const/16 v1, 0x12

    invoke-static {v3, v3}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v2

    aput-object v2, v0, v1

    .line 95
    sput-object v0, Lsun/util/locale/BaseLocale;->constantBaseLocales:[Lsun/util/locale/BaseLocale;

    .line 97
    .end local v0    # "baseLocales":[Lsun/util/locale/BaseLocale;
    :cond_be
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "normalize"    # Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    if-eqz p5, :cond_2a

    .line 142
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    .line 143
    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    .line 144
    invoke-static {p3}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    .line 145
    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    goto :goto_32

    .line 147
    :cond_2a
    iput-object p1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    .line 152
    :goto_32
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLsun/util/locale/BaseLocale-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static blacklist cleanCache()V
    .registers 1

    .line 289
    invoke-static {}, Lsun/util/locale/BaseLocale$Cache;->-$$Nest$sfgetCACHE()Lsun/util/locale/BaseLocale$Cache;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale$Cache;->cleanStaleEntries()V

    .line 290
    return-void
.end method

.method public static blacklist convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "language"    # Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "yi"

    const-string v2, "ji"

    const-string v3, "iw"

    const-string v4, "in"

    const-string v5, "id"

    const-string v6, "he"

    sparse-switch v0, :sswitch_data_66

    :cond_13
    goto :goto_44

    :sswitch_14
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    goto :goto_45

    :sswitch_1c
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x5

    goto :goto_45

    :sswitch_24
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_45

    :sswitch_2c
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    goto :goto_45

    :sswitch_34
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    goto :goto_45

    :sswitch_3c
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    goto :goto_45

    :goto_44
    const/4 v0, -0x1

    :goto_45
    packed-switch v0, :pswitch_data_80

    .line 211
    move-object v1, p0

    goto :goto_65

    .line 210
    :pswitch_4a
    invoke-static {}, Lsun/util/locale/BaseLocale;->useOldIsoCodes()Z

    move-result v0

    if-eqz v0, :cond_65

    move-object v1, v2

    goto :goto_65

    .line 209
    :pswitch_52
    invoke-static {}, Lsun/util/locale/BaseLocale;->useOldIsoCodes()Z

    move-result v0

    if-eqz v0, :cond_5a

    move-object v1, v4

    goto :goto_65

    :cond_5a
    move-object v1, v5

    goto :goto_65

    .line 208
    :pswitch_5c
    invoke-static {}, Lsun/util/locale/BaseLocale;->useOldIsoCodes()Z

    move-result v0

    if-eqz v0, :cond_64

    move-object v1, v3

    goto :goto_65

    :cond_64
    move-object v1, v6

    .line 200
    :cond_65
    :goto_65
    return-object v1

    :sswitch_data_66
    .sparse-switch
        0xcfd -> :sswitch_3c
        0xd1b -> :sswitch_34
        0xd25 -> :sswitch_2c
        0xd2e -> :sswitch_24
        0xd3f -> :sswitch_1c
        0xf10 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5c
        :pswitch_52
        :pswitch_52
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method private static blacklist createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .registers 8
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    .line 157
    new-instance v0, Lsun/util/locale/BaseLocale;

    const-string v4, ""

    const/4 v5, 0x0

    const-string v2, ""

    move-object v1, p0

    move-object v3, p1

    .end local p0    # "language":Ljava/lang/String;
    .end local p1    # "region":Ljava/lang/String;
    .local v1, "language":Ljava/lang/String;
    .local v3, "region":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .registers 10
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 163
    if-nez p1, :cond_6

    .line 164
    const-string p1, ""

    move-object v2, p1

    goto :goto_7

    .line 163
    :cond_6
    move-object v2, p1

    .line 166
    .end local p1    # "script":Ljava/lang/String;
    .local v2, "script":Ljava/lang/String;
    :goto_7
    if-nez p2, :cond_b

    .line 167
    const-string p2, ""

    .line 169
    :cond_b
    if-nez p0, :cond_e

    .line 170
    const/4 p0, 0x0

    .line 172
    :cond_e
    if-nez p3, :cond_14

    .line 173
    const-string p3, ""

    move-object v4, p3

    goto :goto_15

    .line 172
    :cond_14
    move-object v4, p3

    .line 177
    .end local p3    # "variant":Ljava/lang/String;
    .local v4, "variant":Ljava/lang/String;
    :goto_15
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 178
    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .end local p2    # "region":Ljava/lang/String;
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 182
    sget-object p1, Lsun/util/locale/BaseLocale;->constantBaseLocales:[Lsun/util/locale/BaseLocale;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_2d
    if-ge p3, p2, :cond_49

    aget-object v0, p1, p3

    .line 183
    .local v0, "baseLocale":Lsun/util/locale/BaseLocale;
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 184
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 185
    return-object v0

    .line 182
    .end local v0    # "baseLocale":Lsun/util/locale/BaseLocale;
    :cond_46
    add-int/lit8 p3, p3, 0x1

    goto :goto_2d

    .line 191
    :cond_49
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_55

    .line 192
    invoke-static {p0}, Lsun/util/locale/BaseLocale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_56

    .line 191
    :cond_55
    move-object v1, p0

    .line 195
    .end local p0    # "language":Ljava/lang/String;
    .local v1, "language":Ljava/lang/String;
    :goto_56
    new-instance v0, Lsun/util/locale/BaseLocale$Key;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .local v0, "key":Lsun/util/locale/BaseLocale$Key;
    invoke-static {}, Lsun/util/locale/BaseLocale$Cache;->-$$Nest$sfgetCACHE()Lsun/util/locale/BaseLocale$Cache;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsun/util/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/util/locale/BaseLocale;

    return-object p0
.end method

.method private static blacklist useOldIsoCodes()Z
    .registers 2

    .line 120
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x23

    if-lt v0, v1, :cond_15

    .line 121
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    if-ge v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 120
    :goto_16
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 233
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 234
    return v0

    .line 236
    :cond_4
    instance-of v1, p1, Lsun/util/locale/BaseLocale;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 237
    return v2

    .line 239
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/util/locale/BaseLocale;

    .line 240
    .local v1, "other":Lsun/util/locale/BaseLocale;
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    iget-object v4, v1, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    iget-object v4, v1, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    iget-object v4, v1, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    iget-object v4, v1, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRegion()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVariant()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 266
    iget v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 267
    .local v0, "h":I
    if-nez v0, :cond_2a

    .line 269
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 270
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 271
    .end local v0    # "h":I
    .local v1, "h":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 272
    .end local v1    # "h":I
    .restart local v0    # "h":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 273
    if-eqz v0, :cond_2a

    .line 274
    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 277
    :cond_2a
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 248
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    .local v0, "sj":Ljava/util/StringJoiner;
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 252
    :cond_27
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "script="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 255
    :cond_47
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 258
    :cond_67
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_87

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "variant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 261
    :cond_87
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
