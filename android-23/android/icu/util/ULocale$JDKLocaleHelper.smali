.class final Landroid/icu/util/ULocale$JDKLocaleHelper;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JDKLocaleHelper"
.end annotation


# static fields
.field private static synthetic -android_icu_util_ULocale$CategorySwitchesValues:[I

.field private static final JAVA6_MAPDATA:[[Ljava/lang/String;

.field private static eDISPLAY:Ljava/lang/Object;

.field private static eFORMAT:Ljava/lang/Object;

.field private static hasLocaleCategories:Z

.field private static hasScriptsAndUnicodeExtensions:Z

.field private static mForLanguageTag:Ljava/lang/reflect/Method;

.field private static mGetDefault:Ljava/lang/reflect/Method;

.field private static mGetExtension:Ljava/lang/reflect/Method;

.field private static mGetExtensionKeys:Ljava/lang/reflect/Method;

.field private static mGetScript:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

.field private static mSetDefault:Ljava/lang/reflect/Method;


# direct methods
.method private static synthetic -getandroid_icu_util_ULocale$CategorySwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->-android_icu_util_ULocale$CategorySwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->-android_icu_util_ULocale$CategorySwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@10
    invoke-virtual {v1}, Landroid/icu/util/ULocale$Category;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@19
    invoke-virtual {v1}, Landroid/icu/util/ULocale$Category;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->-android_icu_util_ULocale$CategorySwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 17

    #@0
    .prologue
    .line 4021
    const/4 v12, 0x0

    #@1
    sput-boolean v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    #@3
    .line 4022
    const/4 v12, 0x0

    #@4
    sput-boolean v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    #@6
    .line 4048
    const/4 v12, 0x3

    #@7
    new-array v12, v12, [[Ljava/lang/String;

    #@9
    .line 4050
    const/4 v13, 0x5

    #@a
    new-array v13, v13, [Ljava/lang/String;

    #@c
    const-string/jumbo v14, "ja_JP_JP"

    #@f
    const/4 v15, 0x0

    #@10
    aput-object v14, v13, v15

    #@12
    const-string/jumbo v14, "ja_JP"

    #@15
    const/4 v15, 0x1

    #@16
    aput-object v14, v13, v15

    #@18
    const-string/jumbo v14, "calendar"

    #@1b
    const/4 v15, 0x2

    #@1c
    aput-object v14, v13, v15

    #@1e
    const-string/jumbo v14, "japanese"

    #@21
    const/4 v15, 0x3

    #@22
    aput-object v14, v13, v15

    #@24
    const-string/jumbo v14, "ja"

    #@27
    const/4 v15, 0x4

    #@28
    aput-object v14, v13, v15

    #@2a
    const/4 v14, 0x0

    #@2b
    aput-object v13, v12, v14

    #@2d
    .line 4051
    const/4 v13, 0x5

    #@2e
    new-array v13, v13, [Ljava/lang/String;

    #@30
    const-string/jumbo v14, "no_NO_NY"

    #@33
    const/4 v15, 0x0

    #@34
    aput-object v14, v13, v15

    #@36
    const-string/jumbo v14, "nn_NO"

    #@39
    const/4 v15, 0x1

    #@3a
    aput-object v14, v13, v15

    #@3c
    const/4 v14, 0x0

    #@3d
    const/4 v15, 0x2

    #@3e
    aput-object v14, v13, v15

    #@40
    const/4 v14, 0x0

    #@41
    const/4 v15, 0x3

    #@42
    aput-object v14, v13, v15

    #@44
    const-string/jumbo v14, "nn"

    #@47
    const/4 v15, 0x4

    #@48
    aput-object v14, v13, v15

    #@4a
    const/4 v14, 0x1

    #@4b
    aput-object v13, v12, v14

    #@4d
    .line 4052
    const/4 v13, 0x5

    #@4e
    new-array v13, v13, [Ljava/lang/String;

    #@50
    const-string/jumbo v14, "th_TH_TH"

    #@53
    const/4 v15, 0x0

    #@54
    aput-object v14, v13, v15

    #@56
    const-string/jumbo v14, "th_TH"

    #@59
    const/4 v15, 0x1

    #@5a
    aput-object v14, v13, v15

    #@5c
    const-string/jumbo v14, "numbers"

    #@5f
    const/4 v15, 0x2

    #@60
    aput-object v14, v13, v15

    #@62
    const-string/jumbo v14, "thai"

    #@65
    const/4 v15, 0x3

    #@66
    aput-object v14, v13, v15

    #@68
    const-string/jumbo v14, "th"

    #@6b
    const/4 v15, 0x4

    #@6c
    aput-object v14, v13, v15

    #@6e
    const/4 v14, 0x2

    #@6f
    aput-object v13, v12, v14

    #@71
    .line 4048
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@73
    .line 4058
    :try_start_0
    const-class v13, Ljava/util/Locale;

    #@75
    const-string/jumbo v14, "getScript"

    #@78
    const/4 v12, 0x0

    #@79
    nop

    #@7a
    nop

    #@7b
    invoke-virtual {v13, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@7e
    move-result-object v12

    #@7f
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    #@81
    .line 4059
    const-class v13, Ljava/util/Locale;

    #@83
    const-string/jumbo v14, "getExtensionKeys"

    #@86
    const/4 v12, 0x0

    #@87
    nop

    #@88
    nop

    #@89
    invoke-virtual {v13, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@8c
    move-result-object v12

    #@8d
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtensionKeys:Ljava/lang/reflect/Method;

    #@8f
    .line 4060
    const-class v12, Ljava/util/Locale;

    #@91
    const-string/jumbo v13, "getExtension"

    #@94
    const/4 v14, 0x1

    #@95
    new-array v14, v14, [Ljava/lang/Class;

    #@97
    sget-object v15, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@99
    const/16 v16, 0x0

    #@9b
    aput-object v15, v14, v16

    #@9d
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@a0
    move-result-object v12

    #@a1
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtension:Ljava/lang/reflect/Method;

    #@a3
    .line 4061
    const-class v13, Ljava/util/Locale;

    #@a5
    const-string/jumbo v14, "getUnicodeLocaleKeys"

    #@a8
    const/4 v12, 0x0

    #@a9
    nop

    #@aa
    nop

    #@ab
    invoke-virtual {v13, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@ae
    move-result-object v12

    #@af
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

    #@b1
    .line 4062
    const-class v13, Ljava/util/Locale;

    #@b3
    const-string/jumbo v14, "getUnicodeLocaleAttributes"

    #@b6
    const/4 v12, 0x0

    #@b7
    nop

    #@b8
    nop

    #@b9
    invoke-virtual {v13, v14, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@bc
    move-result-object v12

    #@bd
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

    #@bf
    .line 4063
    const-class v12, Ljava/util/Locale;

    #@c1
    const-string/jumbo v13, "getUnicodeLocaleType"

    #@c4
    const/4 v14, 0x1

    #@c5
    new-array v14, v14, [Ljava/lang/Class;

    #@c7
    const-class v15, Ljava/lang/String;

    #@c9
    const/16 v16, 0x0

    #@cb
    aput-object v15, v14, v16

    #@cd
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@d0
    move-result-object v12

    #@d1
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

    #@d3
    .line 4064
    const-class v12, Ljava/util/Locale;

    #@d5
    const-string/jumbo v13, "forLanguageTag"

    #@d8
    const/4 v14, 0x1

    #@d9
    new-array v14, v14, [Ljava/lang/Class;

    #@db
    const-class v15, Ljava/lang/String;

    #@dd
    const/16 v16, 0x0

    #@df
    aput-object v15, v14, v16

    #@e1
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e4
    move-result-object v12

    #@e5
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mForLanguageTag:Ljava/lang/reflect/Method;

    #@e7
    .line 4066
    const/4 v12, 0x1

    #@e8
    sput-boolean v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_7

    #@ea
    .line 4074
    .local v8, "e":Ljava/lang/SecurityException;
    :goto_0
    const/4 v1, 0x0

    #@eb
    .line 4075
    .end local v8    # "e":Ljava/lang/SecurityException;
    .local v1, "cCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-class v12, Ljava/util/Locale;

    #@ed
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    #@f0
    move-result-object v3

    #@f1
    .line 4076
    .local v3, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    #@f2
    array-length v13, v3

    #@f3
    :goto_1
    if-ge v12, v13, :cond_0

    #@f5
    aget-object v0, v3, v12

    #@f7
    .line 4077
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@fa
    move-result-object v14

    #@fb
    const-string/jumbo v15, "java.util.Locale$Category"

    #@fe
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@101
    move-result v14

    #@102
    if-eqz v14, :cond_2

    #@104
    .line 4078
    move-object v1, v0

    #@105
    .line 4082
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-nez v1, :cond_3

    #@107
    .line 4020
    :cond_1
    :goto_2
    return-void

    #@108
    .line 4076
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "cCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v12, v12, 0x1

    #@10a
    goto :goto_1

    #@10b
    .line 4085
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-class v12, Ljava/util/Locale;

    #@10d
    const-string/jumbo v13, "getDefault"

    #@110
    const/4 v14, 0x1

    #@111
    new-array v14, v14, [Ljava/lang/Class;

    #@113
    const/4 v15, 0x0

    #@114
    aput-object v1, v14, v15

    #@116
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@119
    move-result-object v12

    #@11a
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    #@11c
    .line 4086
    const-class v12, Ljava/util/Locale;

    #@11e
    const-string/jumbo v13, "setDefault"

    #@121
    const/4 v14, 0x2

    #@122
    new-array v14, v14, [Ljava/lang/Class;

    #@124
    const/4 v15, 0x0

    #@125
    aput-object v1, v14, v15

    #@127
    const-class v15, Ljava/util/Locale;

    #@129
    const/16 v16, 0x1

    #@12b
    aput-object v15, v14, v16

    #@12d
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@130
    move-result-object v12

    #@131
    sput-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    #@133
    .line 4088
    const-string/jumbo v13, "name"

    #@136
    const/4 v12, 0x0

    #@137
    nop

    #@138
    nop

    #@139
    invoke-virtual {v1, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@13c
    move-result-object v11

    #@13d
    .line 4089
    .local v11, "mName":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    #@140
    move-result-object v10

    #@141
    .line 4090
    .local v10, "enumConstants":[Ljava/lang/Object;
    const/4 v12, 0x0

    #@142
    array-length v14, v10

    #@143
    move v13, v12

    #@144
    :goto_3
    if-ge v13, v14, :cond_6

    #@146
    aget-object v7, v10, v13

    #@148
    .line 4091
    .local v7, "e":Ljava/lang/Object;
    const/4 v12, 0x0

    #@149
    nop

    #@14a
    nop

    #@14b
    invoke-virtual {v11, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@14e
    move-result-object v2

    #@14f
    check-cast v2, Ljava/lang/String;

    #@151
    .line 4092
    .local v2, "catVal":Ljava/lang/String;
    const-string/jumbo v12, "DISPLAY"

    #@154
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@157
    move-result v12

    #@158
    if-eqz v12, :cond_5

    #@15a
    .line 4093
    sput-object v7, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    #@15c
    .line 4090
    :cond_4
    :goto_4
    add-int/lit8 v12, v13, 0x1

    #@15e
    move v13, v12

    #@15f
    goto :goto_3

    #@160
    .line 4094
    :cond_5
    const-string/jumbo v12, "FORMAT"

    #@163
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@166
    move-result v12

    #@167
    if-eqz v12, :cond_4

    #@169
    .line 4095
    sput-object v7, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    #@16b
    goto :goto_4

    #@16c
    .line 4103
    .end local v2    # "catVal":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Object;
    .end local v10    # "enumConstants":[Ljava/lang/Object;
    .end local v11    # "mName":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    #@16d
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    #@16e
    .line 4098
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v10    # "enumConstants":[Ljava/lang/Object;
    .restart local v11    # "mName":Ljava/lang/reflect/Method;
    :cond_6
    sget-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    #@170
    if-eqz v12, :cond_1

    #@172
    sget-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    #@174
    if-eqz v12, :cond_1

    #@176
    .line 4102
    const/4 v12, 0x1

    #@177
    sput-boolean v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    #@179
    goto :goto_2

    #@17a
    .line 4104
    .end local v10    # "enumConstants":[Ljava/lang/Object;
    .end local v11    # "mName":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v5

    #@17b
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    #@17c
    .line 4105
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    #@17d
    .local v4, "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    #@17e
    .line 4106
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v9

    #@17f
    .local v9, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2

    #@180
    .line 4107
    .end local v9    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v8

    #@181
    .restart local v8    # "e":Ljava/lang/SecurityException;
    goto :goto_2

    #@182
    .line 4067
    .end local v3    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v6

    #@183
    .restart local v6    # "e":Ljava/lang/NoSuchMethodException;
    goto/16 :goto_0

    #@185
    .line 4068
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v5

    #@186
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0

    #@188
    .line 4069
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v8

    #@189
    .restart local v8    # "e":Ljava/lang/SecurityException;
    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;
    .locals 9
    .param p0, "category"    # Landroid/icu/util/ULocale$Category;

    #@0
    .prologue
    .line 4347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v5

    #@4
    .line 4348
    .local v5, "loc":Ljava/util/Locale;
    sget-boolean v6, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 4349
    const/4 v1, 0x0

    #@9
    .line 4350
    .local v1, "cat":Ljava/lang/Object;
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->-getandroid_icu_util_ULocale$CategorySwitchesValues()[I

    #@c
    move-result-object v6

    #@d
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    #@10
    move-result v7

    #@11
    aget v6, v6, v7

    #@13
    packed-switch v6, :pswitch_data_0

    #@16
    .line 4358
    .end local v1    # "cat":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    #@18
    .line 4360
    :try_start_0
    sget-object v6, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    #@1a
    const/4 v7, 0x1

    #@1b
    new-array v7, v7, [Ljava/lang/Object;

    #@1d
    const/4 v8, 0x0

    #@1e
    aput-object v1, v7, v8

    #@20
    const/4 v8, 0x0

    #@21
    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    move-object v0, v6

    #@26
    check-cast v0, Ljava/util/Locale;

    #@28
    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    #@29
    .line 4370
    :cond_0
    :goto_1
    return-object v5

    #@2a
    .line 4352
    .restart local v1    # "cat":Ljava/lang/Object;
    :pswitch_0
    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    #@2c
    goto :goto_0

    #@2d
    .line 4355
    :pswitch_1
    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    #@2f
    goto :goto_0

    #@30
    .line 4361
    .end local v1    # "cat":Ljava/lang/Object;
    :catch_0
    move-exception v4

    #@31
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    #@32
    .line 4363
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    #@33
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    #@34
    .line 4365
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    #@35
    .local v2, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@36
    .line 4350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4422
    const/4 v3, 0x0

    #@1
    .line 4423
    .local v3, "val":Ljava/lang/String;
    move-object v2, p0

    #@2
    .line 4424
    .local v2, "fkey":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@5
    move-result-object v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 4426
    :try_start_0
    new-instance v4, Landroid/icu/util/ULocale$JDKLocaleHelper$1;

    #@a
    invoke-direct {v4, v2}, Landroid/icu/util/ULocale$JDKLocaleHelper$1;-><init>(Ljava/lang/String;)V

    #@d
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    move-object v0, v4

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    move-object v3, v0
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 4437
    .end local v3    # "val":Ljava/lang/String;
    :goto_0
    return-object v3

    #@16
    .line 4435
    .restart local v3    # "val":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .local v3, "val":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 4431
    .local v3, "val":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@1c
    .local v1, "e":Ljava/security/AccessControlException;
    goto :goto_0
.end method

.method public static hasLocaleCategories()Z
    .locals 1

    #@0
    .prologue
    .line 4117
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    #@2
    return v0
.end method

.method public static isOriginalDefaultLocale(Ljava/util/Locale;)Z
    .locals 5
    .param p0, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4403
    sget-boolean v2, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 4404
    const-string/jumbo v1, ""

    #@8
    .line 4406
    .local v1, "script":Ljava/lang/String;
    :try_start_0
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    #@a
    const/4 v2, 0x0

    #@b
    check-cast v2, [Ljava/lang/Object;

    #@d
    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    .end local v1    # "script":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 4411
    .restart local v1    # "script":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v4, "user.language"

    #@1a
    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 4412
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v4, "user.country"

    #@2b
    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    .line 4411
    if-eqz v2, :cond_0

    #@35
    .line 4413
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    const-string/jumbo v4, "user.variant"

    #@3c
    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v2

    #@44
    .line 4411
    if-eqz v2, :cond_0

    #@46
    .line 4414
    const-string/jumbo v2, "user.script"

    #@49
    invoke-static {v2}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    .line 4411
    :goto_0
    return v2

    #@52
    .line 4407
    .end local v1    # "script":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@53
    .line 4408
    .local v0, "e":Ljava/lang/Exception;
    return v3

    #@54
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "script":Ljava/lang/String;
    :cond_0
    move v2, v3

    #@55
    .line 4411
    goto :goto_0

    #@56
    .line 4416
    .end local v1    # "script":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v4, "user.language"

    #@5d
    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_2

    #@67
    .line 4417
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    const-string/jumbo v4, "user.country"

    #@6e
    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v2

    #@76
    .line 4416
    if-eqz v2, :cond_2

    #@78
    .line 4418
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    const-string/jumbo v3, "user.variant"

    #@7f
    invoke-static {v3}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v3

    #@87
    .line 4416
    :cond_2
    return v3
.end method

.method public static setDefault(Landroid/icu/util/ULocale$Category;Ljava/util/Locale;)V
    .locals 7
    .param p0, "category"    # Landroid/icu/util/ULocale$Category;
    .param p1, "newLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 4374
    sget-boolean v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 4375
    const/4 v0, 0x0

    #@5
    .line 4376
    .local v0, "cat":Ljava/lang/Object;
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->-getandroid_icu_util_ULocale$CategorySwitchesValues()[I

    #@8
    move-result-object v4

    #@9
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    #@c
    move-result v5

    #@d
    aget v4, v4, v5

    #@f
    packed-switch v4, :pswitch_data_0

    #@12
    .line 4384
    .end local v0    # "cat":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    #@14
    .line 4386
    :try_start_0
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    #@16
    const/4 v5, 0x2

    #@17
    new-array v5, v5, [Ljava/lang/Object;

    #@19
    const/4 v6, 0x0

    #@1a
    aput-object v0, v5, v6

    #@1c
    const/4 v6, 0x1

    #@1d
    aput-object p1, v5, v6

    #@1f
    const/4 v6, 0x0

    #@20
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    #@23
    .line 4373
    :cond_0
    :goto_1
    return-void

    #@24
    .line 4378
    .restart local v0    # "cat":Ljava/lang/Object;
    :pswitch_0
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    #@26
    goto :goto_0

    #@27
    .line 4381
    :pswitch_1
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    #@29
    goto :goto_0

    #@2a
    .line 4387
    .end local v0    # "cat":Ljava/lang/Object;
    :catch_0
    move-exception v3

    #@2b
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    #@2c
    .line 4389
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    #@2d
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    #@2e
    .line 4391
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    #@2f
    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    #@30
    .line 4376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toLocale(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 1
    .param p0, "uloc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 4125
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale7(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale6(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method private static toLocale6(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 10
    .param p0, "uloc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x0

    #@3
    .line 4326
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 4327
    .local v1, "locstr":Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@a
    array-length v5, v5

    #@b
    if-ge v0, v5, :cond_1

    #@d
    .line 4328
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@f
    aget-object v5, v5, v0

    #@11
    const/4 v6, 0x1

    #@12
    aget-object v5, v5, v6

    #@14
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v5

    #@18
    if-nez v5, :cond_0

    #@1a
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@1c
    aget-object v5, v5, v0

    #@1e
    const/4 v6, 0x4

    #@1f
    aget-object v5, v5, v6

    #@21
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 4329
    :cond_0
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@29
    aget-object v5, v5, v0

    #@2b
    aget-object v5, v5, v8

    #@2d
    if-eqz v5, :cond_2

    #@2f
    .line 4330
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@31
    aget-object v5, v5, v0

    #@33
    aget-object v5, v5, v8

    #@35
    invoke-virtual {p0, v5}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 4331
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@3b
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@3d
    aget-object v5, v5, v0

    #@3f
    aget-object v5, v5, v9

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_3

    #@47
    .line 4332
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@49
    aget-object v5, v5, v0

    #@4b
    aget-object v1, v5, v7

    #@4d
    .line 4341
    .end local v4    # "val":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v3, Landroid/icu/impl/LocaleIDParser;

    #@4f
    invoke-direct {v3, v1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@52
    .line 4342
    .local v3, "p":Landroid/icu/impl/LocaleIDParser;
    invoke-virtual {v3}, Landroid/icu/impl/LocaleIDParser;->getLanguageScriptCountryVariant()[Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    .line 4343
    .local v2, "names":[Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    #@58
    aget-object v6, v2, v7

    #@5a
    aget-object v7, v2, v8

    #@5c
    aget-object v8, v2, v9

    #@5e
    invoke-direct {v5, v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@61
    return-object v5

    #@62
    .line 4336
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "p":Landroid/icu/impl/LocaleIDParser;
    :cond_2
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@64
    aget-object v5, v5, v0

    #@66
    aget-object v1, v5, v7

    #@68
    goto :goto_1

    #@69
    .line 4327
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@6b
    goto :goto_0
.end method

.method private static toLocale7(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 8
    .param p0, "uloc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 4285
    const/4 v2, 0x0

    #@1
    .line 4286
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    .line 4287
    .local v4, "ulocStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    if-gtz v5, :cond_0

    #@f
    const-string/jumbo v5, "@"

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 4294
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 4307
    .local v3, "tag":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 4310
    :try_start_0
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->mForLanguageTag:Ljava/lang/reflect/Method;

    #@22
    const/4 v6, 0x1

    #@23
    new-array v6, v6, [Ljava/lang/Object;

    #@25
    const/4 v7, 0x0

    #@26
    aput-object v3, v6, v7

    #@28
    const/4 v7, 0x0

    #@29
    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    .end local v2    # "loc":Ljava/util/Locale;
    check-cast v2, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 4317
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    #@31
    .line 4320
    new-instance v2, Ljava/util/Locale;

    #@33
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-direct {v2, v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 4322
    :cond_2
    return-object v2

    #@43
    .line 4313
    .restart local v3    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@44
    .line 4314
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@46
    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@49
    throw v5

    #@4a
    .line 4311
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@4b
    .line 4312
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@4d
    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@50
    throw v5
.end method

.method public static toULocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 1
    .param p0, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 4121
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale7(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale6(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method private static toULocale6(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 7
    .param p0, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4266
    const/4 v3, 0x0

    #@2
    .line 4267
    .local v3, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 4268
    .local v1, "locStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 4269
    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@e
    .line 4281
    .local v3, "uloc":Landroid/icu/util/ULocale;
    :goto_0
    return-object v3

    #@f
    .line 4271
    .local v3, "uloc":Landroid/icu/util/ULocale;
    :cond_0
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_1
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@12
    array-length v4, v4

    #@13
    if-ge v0, v4, :cond_1

    #@15
    .line 4272
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@17
    aget-object v4, v4, v0

    #@19
    aget-object v4, v4, v5

    #@1b
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 4273
    new-instance v2, Landroid/icu/impl/LocaleIDParser;

    #@23
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@25
    aget-object v4, v4, v0

    #@27
    const/4 v5, 0x1

    #@28
    aget-object v4, v4, v5

    #@2a
    invoke-direct {v2, v4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    #@2d
    .line 4274
    .local v2, "p":Landroid/icu/impl/LocaleIDParser;
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@2f
    aget-object v4, v4, v0

    #@31
    const/4 v5, 0x2

    #@32
    aget-object v4, v4, v5

    #@34
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    #@36
    aget-object v5, v5, v0

    #@38
    const/4 v6, 0x3

    #@39
    aget-object v5, v5, v6

    #@3b
    invoke-virtual {v2, v4, v5}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 4275
    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    .line 4279
    .end local v2    # "p":Landroid/icu/impl/LocaleIDParser;
    :cond_1
    new-instance v3, Landroid/icu/util/ULocale;

    #@44
    .end local v3    # "uloc":Landroid/icu/util/ULocale;
    invoke-static {v1}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    const/4 v5, 0x0

    #@49
    invoke-direct {v3, v4, p0, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale;)V

    #@4c
    .local v3, "uloc":Landroid/icu/util/ULocale;
    goto :goto_0

    #@4d
    .line 4271
    .local v3, "uloc":Landroid/icu/util/ULocale;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_1
.end method

.method private static toULocale7(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 33
    .param p0, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 4129
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v25

    #@4
    .line 4130
    .local v25, "language":Ljava/lang/String;
    const-string/jumbo v26, ""

    #@7
    .line 4131
    .local v26, "script":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@a
    move-result-object v11

    #@b
    .line 4132
    .local v11, "country":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@e
    move-result-object v29

    #@f
    .line 4134
    .local v29, "variant":Ljava/lang/String;
    const/4 v8, 0x0

    #@10
    .line 4135
    .local v8, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v18, 0x0

    #@12
    .line 4138
    .local v18, "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v31, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    #@14
    const/16 v30, 0x0

    #@16
    check-cast v30, [Ljava/lang/Object;

    #@18
    move-object/from16 v0, v31

    #@1a
    move-object/from16 v1, p0

    #@1c
    move-object/from16 v2, v30

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v30

    #@22
    move-object/from16 v0, v30

    #@24
    check-cast v0, Ljava/lang/String;

    #@26
    move-object/from16 v26, v0

    #@28
    .line 4140
    sget-object v31, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtensionKeys:Ljava/lang/reflect/Method;

    #@2a
    const/16 v30, 0x0

    #@2c
    check-cast v30, [Ljava/lang/Object;

    #@2e
    move-object/from16 v0, v31

    #@30
    move-object/from16 v1, p0

    #@32
    move-object/from16 v2, v30

    #@34
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v16

    #@38
    check-cast v16, Ljava/util/Set;

    #@3a
    .line 4141
    .local v16, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    #@3d
    move-result v30

    #@3e
    if-nez v30, :cond_6

    #@40
    .line 4142
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    #@43
    move-result-object v15

    #@44
    .local v15, "extKey$iterator":Ljava/util/Iterator;
    move-object/from16 v19, v18

    #@46
    .local v19, "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, v8

    #@47
    .end local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v9, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v30

    #@4b
    if-eqz v30, :cond_5

    #@4d
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v14

    #@51
    check-cast v14, Ljava/lang/Character;

    #@53
    .line 4143
    .local v14, "extKey":Ljava/lang/Character;
    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    #@56
    move-result v30

    #@57
    const/16 v31, 0x75

    #@59
    move/from16 v0, v30

    #@5b
    move/from16 v1, v31

    #@5d
    if-ne v0, v1, :cond_4

    #@5f
    .line 4148
    sget-object v31, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

    #@61
    const/16 v30, 0x0

    #@63
    check-cast v30, [Ljava/lang/Object;

    #@65
    move-object/from16 v0, v31

    #@67
    move-object/from16 v1, p0

    #@69
    move-object/from16 v2, v30

    #@6b
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    move-result-object v27

    #@6f
    check-cast v27, Ljava/util/Set;

    #@71
    .line 4149
    .local v27, "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->isEmpty()Z

    #@74
    move-result v30

    #@75
    if-nez v30, :cond_0

    #@77
    .line 4150
    new-instance v8, Ljava/util/TreeSet;

    #@79
    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    #@7c
    .line 4151
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v8, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_2
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7f
    move-result-object v6

    #@80
    .local v6, "attr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@83
    move-result v30

    #@84
    if-eqz v30, :cond_1

    #@86
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@89
    move-result-object v5

    #@8a
    check-cast v5, Ljava/lang/String;

    #@8c
    .line 4152
    .local v5, "attr":Ljava/lang/String;
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    #@8f
    goto :goto_1

    #@90
    .line 4184
    .end local v5    # "attr":Ljava/lang/String;
    .end local v6    # "attr$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v12

    #@91
    .local v12, "e":Ljava/lang/IllegalAccessException;
    move-object/from16 v18, v19

    #@93
    .line 4185
    .end local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "extKey":Ljava/lang/Character;
    .end local v15    # "extKey$iterator":Ljava/util/Iterator;
    .end local v16    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    new-instance v30, Ljava/lang/RuntimeException;

    #@95
    move-object/from16 v0, v30

    #@97
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@9a
    throw v30

    #@9b
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "extKey":Ljava/lang/Character;
    .restart local v15    # "extKey$iterator":Ljava/util/Iterator;
    .restart local v16    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27    # "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    move-object v8, v9

    #@9c
    .line 4158
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_3
    sget-object v31, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

    #@9e
    const/16 v30, 0x0

    #@a0
    check-cast v30, [Ljava/lang/Object;

    #@a2
    move-object/from16 v0, v31

    #@a4
    move-object/from16 v1, p0

    #@a6
    move-object/from16 v2, v30

    #@a8
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    move-result-object v28

    #@ac
    check-cast v28, Ljava/util/Set;

    #@ae
    .line 4159
    .local v28, "uKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b1
    move-result-object v23

    #@b2
    .local v23, "kwKey$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@b5
    move-result v30

    #@b6
    if-eqz v30, :cond_18

    #@b8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bb
    move-result-object v22

    #@bc
    check-cast v22, Ljava/lang/String;

    #@be
    .line 4160
    .local v22, "kwKey":Ljava/lang/String;
    sget-object v30, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

    #@c0
    const/16 v31, 0x1

    #@c2
    move/from16 v0, v31

    #@c4
    new-array v0, v0, [Ljava/lang/Object;

    #@c6
    move-object/from16 v31, v0

    #@c8
    const/16 v32, 0x0

    #@ca
    aput-object v22, v31, v32

    #@cc
    move-object/from16 v0, v30

    #@ce
    move-object/from16 v1, p0

    #@d0
    move-object/from16 v2, v31

    #@d2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    move-result-object v24

    #@d6
    check-cast v24, Ljava/lang/String;

    #@d8
    .line 4161
    .local v24, "kwVal":Ljava/lang/String;
    if-eqz v24, :cond_17

    #@da
    .line 4162
    const-string/jumbo v30, "va"

    #@dd
    move-object/from16 v0, v22

    #@df
    move-object/from16 v1, v30

    #@e1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v30

    #@e5
    if-eqz v30, :cond_3

    #@e7
    .line 4164
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@ea
    move-result v30

    #@eb
    if-nez v30, :cond_2

    #@ed
    move-object/from16 v29, v24

    #@ef
    move-object/from16 v18, v19

    #@f1
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v18, "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    move-object/from16 v19, v18

    #@f3
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    #@f4
    :cond_2
    new-instance v30, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    move-object/from16 v0, v30

    #@fb
    move-object/from16 v1, v24

    #@fd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v30

    #@101
    const-string/jumbo v31, "_"

    #@104
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v30

    #@108
    move-object/from16 v0, v30

    #@10a
    move-object/from16 v1, v29

    #@10c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v30

    #@110
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113
    move-result-object v29

    #@114
    move-object/from16 v18, v19

    #@116
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    #@117
    .line 4166
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-nez v19, :cond_16

    #@119
    .line 4167
    new-instance v18, Ljava/util/TreeMap;

    #@11b
    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6

    #@11e
    .line 4169
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_5
    :try_start_4
    move-object/from16 v0, v18

    #@120
    move-object/from16 v1, v22

    #@122
    move-object/from16 v2, v24

    #@124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2

    #@127
    goto :goto_4

    #@128
    .line 4184
    .end local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "extKey":Ljava/lang/Character;
    .end local v15    # "extKey$iterator":Ljava/util/Iterator;
    .end local v16    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "kwKey":Ljava/lang/String;
    .end local v23    # "kwKey$iterator":Ljava/util/Iterator;
    .end local v24    # "kwVal":Ljava/lang/String;
    .end local v27    # "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "uKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_1
    move-exception v12

    #@129
    .restart local v12    # "e":Ljava/lang/IllegalAccessException;
    goto/16 :goto_2

    #@12b
    .line 4174
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "extKey":Ljava/lang/Character;
    .restart local v15    # "extKey$iterator":Ljava/util/Iterator;
    .restart local v16    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_5
    sget-object v30, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtension:Ljava/lang/reflect/Method;

    #@12d
    const/16 v31, 0x1

    #@12f
    move/from16 v0, v31

    #@131
    new-array v0, v0, [Ljava/lang/Object;

    #@133
    move-object/from16 v31, v0

    #@135
    const/16 v32, 0x0

    #@137
    aput-object v14, v31, v32

    #@139
    move-object/from16 v0, v30

    #@13b
    move-object/from16 v1, p0

    #@13d
    move-object/from16 v2, v31

    #@13f
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@142
    move-result-object v17

    #@143
    check-cast v17, Ljava/lang/String;

    #@145
    .line 4175
    .local v17, "extVal":Ljava/lang/String;
    if-eqz v17, :cond_15

    #@147
    .line 4176
    if-nez v19, :cond_14

    #@149
    .line 4177
    new-instance v18, Ljava/util/TreeMap;

    #@14b
    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_5

    #@14e
    .line 4179
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    :try_start_6
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@151
    move-result-object v30

    #@152
    move-object/from16 v0, v18

    #@154
    move-object/from16 v1, v30

    #@156
    move-object/from16 v2, v17

    #@158
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_7

    #@15b
    move-object v8, v9

    #@15c
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "extVal":Ljava/lang/String;
    .restart local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_7
    move-object/from16 v19, v18

    #@15e
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, v8

    #@15f
    .end local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_0

    #@161
    .line 4186
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "extKey":Ljava/lang/Character;
    .end local v15    # "extKey$iterator":Ljava/util/Iterator;
    .end local v16    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v13

    #@162
    .line 4187
    .local v13, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_8
    new-instance v30, Ljava/lang/RuntimeException;

    #@164
    move-object/from16 v0, v30

    #@166
    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@169
    throw v30

    #@16a
    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "extKey$iterator":Ljava/util/Iterator;
    .restart local v16    # "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v18, v19

    #@16c
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, v9

    #@16d
    .line 4196
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "extKey$iterator":Ljava/util/Iterator;
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v30, "no"

    #@170
    move-object/from16 v0, v25

    #@172
    move-object/from16 v1, v30

    #@174
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@177
    move-result v30

    #@178
    if-eqz v30, :cond_7

    #@17a
    const-string/jumbo v30, "NO"

    #@17d
    move-object/from16 v0, v30

    #@17f
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@182
    move-result v30

    #@183
    if-eqz v30, :cond_7

    #@185
    const-string/jumbo v30, "NY"

    #@188
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18b
    move-result v30

    #@18c
    if-eqz v30, :cond_7

    #@18e
    .line 4197
    const-string/jumbo v25, "nn"

    #@191
    .line 4198
    const-string/jumbo v29, ""

    #@194
    .line 4202
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    #@196
    move-object/from16 v0, v25

    #@198
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@19b
    .line 4204
    .local v10, "buf":Ljava/lang/StringBuilder;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@19e
    move-result v30

    #@19f
    if-lez v30, :cond_8

    #@1a1
    .line 4205
    const/16 v30, 0x5f

    #@1a3
    move/from16 v0, v30

    #@1a5
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a8
    .line 4206
    move-object/from16 v0, v26

    #@1aa
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    .line 4209
    :cond_8
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@1b0
    move-result v30

    #@1b1
    if-lez v30, :cond_9

    #@1b3
    .line 4210
    const/16 v30, 0x5f

    #@1b5
    move/from16 v0, v30

    #@1b7
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1ba
    .line 4211
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    .line 4214
    :cond_9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@1c0
    move-result v30

    #@1c1
    if-lez v30, :cond_b

    #@1c3
    .line 4215
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@1c6
    move-result v30

    #@1c7
    if-nez v30, :cond_a

    #@1c9
    .line 4216
    const/16 v30, 0x5f

    #@1cb
    move/from16 v0, v30

    #@1cd
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d0
    .line 4218
    :cond_a
    const/16 v30, 0x5f

    #@1d2
    move/from16 v0, v30

    #@1d4
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d7
    .line 4219
    move-object/from16 v0, v29

    #@1d9
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    .line 4222
    :cond_b
    if-eqz v8, :cond_f

    #@1de
    .line 4224
    new-instance v7, Ljava/lang/StringBuilder;

    #@1e0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1e3
    .line 4225
    .local v7, "attrBuf":Ljava/lang/StringBuilder;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e6
    move-result-object v6

    #@1e7
    .restart local v6    # "attr$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1ea
    move-result v30

    #@1eb
    if-eqz v30, :cond_d

    #@1ed
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f0
    move-result-object v5

    #@1f1
    check-cast v5, Ljava/lang/String;

    #@1f3
    .line 4226
    .restart local v5    # "attr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@1f6
    move-result v30

    #@1f7
    if-eqz v30, :cond_c

    #@1f9
    .line 4227
    const/16 v30, 0x2d

    #@1fb
    move/from16 v0, v30

    #@1fd
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@200
    .line 4229
    :cond_c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    goto :goto_9

    #@204
    .line 4231
    .end local v5    # "attr":Ljava/lang/String;
    :cond_d
    if-nez v18, :cond_e

    #@206
    .line 4232
    new-instance v18, Ljava/util/TreeMap;

    #@208
    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    #@20b
    .line 4234
    :cond_e
    const-string/jumbo v30, "attribute"

    #@20e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@211
    move-result-object v31

    #@212
    move-object/from16 v0, v18

    #@214
    move-object/from16 v1, v30

    #@216
    move-object/from16 v2, v31

    #@218
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21b
    .line 4237
    .end local v6    # "attr$iterator":Ljava/util/Iterator;
    .end local v7    # "attrBuf":Ljava/lang/StringBuilder;
    :cond_f
    if-eqz v18, :cond_13

    #@21d
    .line 4238
    const/16 v30, 0x40

    #@21f
    move/from16 v0, v30

    #@221
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@224
    .line 4239
    const/4 v4, 0x0

    #@225
    .line 4240
    .local v4, "addSep":Z
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@228
    move-result-object v30

    #@229
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22c
    move-result-object v21

    #@22d
    .local v21, "kwEntry$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@230
    move-result v30

    #@231
    if-eqz v30, :cond_13

    #@233
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@236
    move-result-object v20

    #@237
    check-cast v20, Ljava/util/Map$Entry;

    #@239
    .line 4241
    .local v20, "kwEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@23c
    move-result-object v22

    #@23d
    check-cast v22, Ljava/lang/String;

    #@23f
    .line 4242
    .restart local v22    # "kwKey":Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@242
    move-result-object v24

    #@243
    check-cast v24, Ljava/lang/String;

    #@245
    .line 4244
    .restart local v24    # "kwVal":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    #@248
    move-result v30

    #@249
    const/16 v31, 0x1

    #@24b
    move/from16 v0, v30

    #@24d
    move/from16 v1, v31

    #@24f
    if-eq v0, v1, :cond_11

    #@251
    .line 4246
    invoke-static/range {v22 .. v22}, Landroid/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    #@254
    move-result-object v22

    #@255
    .line 4248
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    #@258
    move-result v30

    #@259
    if-nez v30, :cond_10

    #@25b
    const-string/jumbo v24, "yes"

    #@25e
    .end local v24    # "kwVal":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v22

    #@260
    move-object/from16 v1, v24

    #@262
    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@265
    move-result-object v24

    #@266
    .line 4251
    .restart local v24    # "kwVal":Ljava/lang/String;
    :cond_11
    if-eqz v4, :cond_12

    #@268
    .line 4252
    const/16 v30, 0x3b

    #@26a
    move/from16 v0, v30

    #@26c
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26f
    .line 4256
    :goto_b
    move-object/from16 v0, v22

    #@271
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@274
    .line 4257
    const/16 v30, 0x3d

    #@276
    move/from16 v0, v30

    #@278
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27b
    .line 4258
    move-object/from16 v0, v24

    #@27d
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@280
    goto :goto_a

    #@281
    .line 4254
    :cond_12
    const/4 v4, 0x1

    #@282
    goto :goto_b

    #@283
    .line 4262
    .end local v4    # "addSep":Z
    .end local v20    # "kwEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "kwEntry$iterator":Ljava/util/Iterator;
    .end local v22    # "kwKey":Ljava/lang/String;
    .end local v24    # "kwVal":Ljava/lang/String;
    :cond_13
    new-instance v30, Landroid/icu/util/ULocale;

    #@285
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@288
    move-result-object v31

    #@289
    invoke-static/range {v31 .. v31}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@28c
    move-result-object v31

    #@28d
    const/16 v32, 0x0

    #@28f
    move-object/from16 v0, v30

    #@291
    move-object/from16 v1, v31

    #@293
    move-object/from16 v2, p0

    #@295
    move-object/from16 v3, v32

    #@297
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale;)V

    #@29a
    return-object v30

    #@29b
    .line 4184
    .end local v10    # "buf":Ljava/lang/StringBuilder;
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "extKey$iterator":Ljava/util/Iterator;
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v12

    #@29c
    .restart local v12    # "e":Ljava/lang/IllegalAccessException;
    move-object/from16 v18, v19

    #@29e
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, v9

    #@29f
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_2

    #@2a1
    .end local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "extKey":Ljava/lang/Character;
    .restart local v17    # "extVal":Ljava/lang/String;
    :catch_4
    move-exception v12

    #@2a2
    .restart local v12    # "e":Ljava/lang/IllegalAccessException;
    move-object v8, v9

    #@2a3
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_2

    #@2a5
    .line 4186
    .end local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    .end local v14    # "extKey":Ljava/lang/Character;
    .end local v17    # "extVal":Ljava/lang/String;
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_5
    move-exception v13

    #@2a6
    .restart local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    move-object/from16 v18, v19

    #@2a8
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, v9

    #@2a9
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_8

    #@2ab
    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "extKey":Ljava/lang/Character;
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27    # "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_6
    move-exception v13

    #@2ac
    .restart local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    move-object/from16 v18, v19

    #@2ae
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_8

    #@2b0
    .end local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v27    # "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "extVal":Ljava/lang/String;
    :catch_7
    move-exception v13

    #@2b1
    .restart local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v8, v9

    #@2b2
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_8

    #@2b4
    .end local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    move-object/from16 v18, v19

    #@2b6
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_6

    #@2b8
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    move-object/from16 v18, v19

    #@2ba
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v8, v9

    #@2bb
    .end local v9    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_7

    #@2bd
    .end local v17    # "extVal":Ljava/lang/String;
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "kwKey":Ljava/lang/String;
    .restart local v23    # "kwKey$iterator":Ljava/util/Iterator;
    .restart local v24    # "kwVal":Ljava/lang/String;
    .restart local v27    # "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28    # "uKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    move-object/from16 v18, v19

    #@2bf
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_5

    #@2c1
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    move-object/from16 v18, v19

    #@2c3
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_4

    #@2c5
    .end local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "kwKey":Ljava/lang/String;
    .end local v24    # "kwVal":Ljava/lang/String;
    .restart local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v18, v19

    #@2c7
    .end local v19    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_7
.end method
