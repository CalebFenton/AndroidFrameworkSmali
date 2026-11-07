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
.field public static final blacklist EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

.field private static final blacklist KEYS:[Ljava/lang/String;


# instance fields
.field private blacklist _names:[Ljava/lang/String;

.field private blacklist _parseRegions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 142
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    .line 146
    const-string v0, "ss"

    const-string v1, "sd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "parseRegions"    # [Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    .line 150
    iput-object p2, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    .line 151
    return-void
.end method

.method static blacklist getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .registers 9
    .param p0, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 154
    if-eqz p0, :cond_69

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_69

    .line 158
    :cond_b
    const/4 v0, 0x0

    .line 160
    .local v0, "table":Landroid/icu/impl/ICUResourceBundle;
    :try_start_c
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_c .. :try_end_12} :catch_65

    .line 163
    .end local v0    # "table":Landroid/icu/impl/ICUResourceBundle;
    .local v1, "table":Landroid/icu/impl/ICUResourceBundle;
    nop

    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, "isEmpty":Z
    sget-object v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    .line 167
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    array-length v4, v2

    if-ge v3, v4, :cond_30

    .line 169
    :try_start_1d
    sget-object v4, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->KEYS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_27
    .catch Ljava/util/MissingResourceException; {:try_start_1d .. :try_end_27} :catch_29

    .line 170
    const/4 v0, 0x0

    .line 173
    goto :goto_2d

    .line 171
    :catch_29
    move-exception v4

    .line 172
    .local v4, "e":Ljava/util/MissingResourceException;
    const/4 v5, 0x0

    aput-object v5, v2, v3

    .line 167
    .end local v4    # "e":Ljava/util/MissingResourceException;
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 176
    .end local v3    # "i":I
    :cond_30
    if-eqz v0, :cond_35

    .line 177
    sget-object v3, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object v3

    .line 180
    :cond_35
    const/4 v3, 0x0

    .line 182
    .local v3, "parseRegions":[Ljava/lang/String;
    :try_start_36
    const-string v4, "parseRegions"

    invoke-virtual {v1, v4}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 183
    .local v4, "regionsRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v5

    if-nez v5, :cond_50

    .line 184
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v3, v5

    .line 185
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    goto :goto_5d

    .line 186
    :cond_50
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5d

    .line 187
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5
    :try_end_5c
    .catch Ljava/util/MissingResourceException; {:try_start_36 .. :try_end_5c} :catch_5e

    move-object v3, v5

    .line 191
    .end local v4    # "regionsRes":Landroid/icu/impl/ICUResourceBundle;
    :cond_5d
    :goto_5d
    goto :goto_5f

    .line 189
    :catch_5e
    move-exception v4

    .line 193
    :goto_5f
    new-instance v4, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    invoke-direct {v4, v2, v3}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 161
    .end local v1    # "table":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "parseRegions":[Ljava/lang/String;
    .local v0, "table":Landroid/icu/impl/ICUResourceBundle;
    :catch_65
    move-exception v1

    .line 162
    .local v1, "e":Ljava/util/MissingResourceException;
    sget-object v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object v2

    .line 155
    .end local v0    # "table":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_69
    :goto_69
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->EMPTY_TZDBNAMES:Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    return-object v0
.end method


# virtual methods
.method blacklist getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .registers 5
    .param p1, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    .line 197
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    if-nez v0, :cond_6

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_6
    const/4 v0, 0x0

    .line 201
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    goto :goto_1f

    .line 206
    :pswitch_13
    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 207
    goto :goto_1f

    .line 203
    :pswitch_19
    iget-object v1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_names:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 204
    nop

    .line 214
    :goto_1f
    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method blacklist getParseRegions()[Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->_parseRegions:[Ljava/lang/String;

    return-object v0
.end method
