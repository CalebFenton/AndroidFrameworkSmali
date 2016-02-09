.class Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TZDBTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZDBNames"
.end annotation


# static fields
.field private static synthetic -android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

.field public static final EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

.field private static final KEYS:[Ljava/lang/String;


# instance fields
.field private _names:[Ljava/lang/String;

.field private _parseRegions:[Ljava/lang/String;


# direct methods
.method private static synthetic -getandroid_icu_text_TimeZoneNames$NameTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x3

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x4

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x5

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x6

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@34
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x1

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@3d
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x7

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@46
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x2

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->-android_icu_text_TimeZoneNames$NameTypeSwitchesValues:[I

    #@4f
    return-object v0

    #@50
    :catch_0
    move-exception v1

    #@51
    goto :goto_6

    #@52
    :catch_1
    move-exception v1

    #@53
    goto :goto_5

    #@54
    :catch_2
    move-exception v1

    #@55
    goto :goto_4

    #@56
    :catch_3
    move-exception v1

    #@57
    goto :goto_3

    #@58
    :catch_4
    move-exception v1

    #@59
    goto :goto_2

    #@5a
    :catch_5
    move-exception v1

    #@5b
    goto :goto_1

    #@5c
    :catch_6
    move-exception v1

    #@5d
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 138
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    #@6
    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@8
    .line 142
    const/4 v0, 0x2

    #@9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    const-string/jumbo v1, "ss"

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    const-string/jumbo v1, "sd"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    #@19
    .line 137
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "parseRegions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 145
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    #@5
    .line 146
    iput-object p2, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    #@7
    .line 144
    return-void
.end method

.method static getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .locals 9
    .param p0, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 150
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 151
    :cond_0
    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@7
    return-object v7

    #@8
    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_0

    #@e
    .line 154
    const/4 v6, 0x0

    #@f
    .line 156
    .local v6, "table":Landroid/icu/impl/ICUResourceBundle;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@12
    move-result-object v6

    #@13
    .end local v6    # "table":Landroid/icu/impl/ICUResourceBundle;
    check-cast v6, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 161
    .local v6, "table":Landroid/icu/impl/ICUResourceBundle;
    const/4 v2, 0x1

    #@16
    .line 162
    .local v2, "isEmpty":Z
    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    #@18
    array-length v7, v7

    #@19
    new-array v3, v7, [Ljava/lang/String;

    #@1b
    .line 163
    .local v3, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    :goto_0
    array-length v7, v3

    #@1d
    if-ge v1, v7, :cond_2

    #@1f
    .line 165
    :try_start_1
    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    #@21
    aget-object v7, v7, v1

    #@23
    invoke-virtual {v6, v7}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    aput-object v7, v3, v1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@29
    .line 166
    const/4 v2, 0x0

    #@2a
    .line 163
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 157
    .end local v1    # "i":I
    .end local v2    # "isEmpty":Z
    .end local v3    # "names":[Ljava/lang/String;
    .end local v6    # "table":Landroid/icu/impl/ICUResourceBundle;
    :catch_0
    move-exception v0

    #@2e
    .line 158
    .local v0, "e":Ljava/util/MissingResourceException;
    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@30
    return-object v7

    #@31
    .line 167
    .end local v0    # "e":Ljava/util/MissingResourceException;
    .restart local v1    # "i":I
    .restart local v2    # "isEmpty":Z
    .restart local v3    # "names":[Ljava/lang/String;
    .restart local v6    # "table":Landroid/icu/impl/ICUResourceBundle;
    :catch_1
    move-exception v0

    #@32
    .line 168
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    aput-object v8, v3, v1

    #@34
    goto :goto_1

    #@35
    .line 172
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_2
    if-eqz v2, :cond_3

    #@37
    .line 173
    sget-object v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@39
    return-object v7

    #@3a
    .line 176
    :cond_3
    const/4 v4, 0x0

    #@3b
    .line 178
    .local v4, "parseRegions":[Ljava/lang/String;
    :try_start_2
    const-string/jumbo v7, "parseRegions"

    #@3e
    invoke-virtual {v6, v7}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@41
    move-result-object v5

    #@42
    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    #@44
    .line 179
    .local v5, "regionsRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@47
    move-result v7

    #@48
    if-nez v7, :cond_5

    #@4a
    .line 180
    const/4 v7, 0x1

    #@4b
    new-array v4, v7, [Ljava/lang/String;

    #@4d
    .line 181
    .local v4, "parseRegions":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    const/4 v8, 0x0

    #@52
    aput-object v7, v4, v8
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    #@54
    .line 189
    .end local v4    # "parseRegions":[Ljava/lang/String;
    .end local v5    # "regionsRes":Landroid/icu/impl/ICUResourceBundle;
    :cond_4
    :goto_2
    new-instance v7, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    #@56
    invoke-direct {v7, v3, v4}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    #@59
    return-object v7

    #@5a
    .line 182
    .local v4, "parseRegions":[Ljava/lang/String;
    .restart local v5    # "regionsRes":Landroid/icu/impl/ICUResourceBundle;
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    #@5d
    move-result v7

    #@5e
    const/16 v8, 0x8

    #@60
    if-ne v7, v8, :cond_4

    #@62
    .line 183
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    #@65
    move-result-object v4

    #@66
    .local v4, "parseRegions":[Ljava/lang/String;
    goto :goto_2

    #@67
    .line 185
    .end local v4    # "parseRegions":[Ljava/lang/String;
    .end local v5    # "regionsRes":Landroid/icu/impl/ICUResourceBundle;
    :catch_2
    move-exception v0

    #@68
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    goto :goto_2
.end method


# virtual methods
.method getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 193
    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 194
    return-object v2

    #@6
    .line 196
    :cond_0
    const/4 v0, 0x0

    #@7
    .line 197
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->-getandroid_icu_text_TimeZoneNames$NameTypeSwitchesValues()[I

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    #@e
    move-result v2

    #@f
    aget v1, v1, v2

    #@11
    packed-switch v1, :pswitch_data_0

    #@14
    .line 206
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    #@15
    .line 199
    .restart local v0    # "name":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    #@17
    const/4 v2, 0x0

    #@18
    aget-object v0, v1, v2

    #@1a
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 202
    .local v0, "name":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    #@1d
    const/4 v2, 0x1

    #@1e
    aget-object v0, v1, v2

    #@20
    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    #@21
    .line 197
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getParseRegions()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    #@2
    return-object v0
.end method
