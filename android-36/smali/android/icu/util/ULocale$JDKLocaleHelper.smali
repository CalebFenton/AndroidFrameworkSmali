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
.field private static greylist-max-o eDISPLAY:Ljava/lang/Object;

.field private static greylist-max-o eFORMAT:Ljava/lang/Object;

.field private static greylist-max-o hasLocaleCategories:Z

.field private static greylist-max-o mGetDefault:Ljava/lang/reflect/Method;

.field private static greylist-max-o mSetDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 3801
    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    .line 3811
    const/4 v1, 0x0

    .line 3812
    .local v1, "cCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4
    const-class v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 3813
    .local v2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    move v4, v0

    :goto_c
    if-ge v4, v3, :cond_21

    aget-object v5, v2, v4

    .line 3814
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.util.Locale$Category"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 3815
    move-object v1, v5

    .line 3816
    goto :goto_21

    .line 3813
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 3819
    :cond_21
    :goto_21
    if-nez v1, :cond_25

    .line 3820
    goto/16 :goto_92

    .line 3822
    :cond_25
    const-class v3, Ljava/util/Locale;

    const-string v4, "getDefault"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v1, v6, v0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    .line 3823
    const-class v3, Ljava/util/Locale;

    const-string v4, "setDefault"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v1, v6, v0

    const-class v7, Ljava/util/Locale;

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    .line 3825
    const-string v3, "name"

    const/4 v4, 0x0

    move-object v6, v4

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3826
    .local v3, "mName":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    .line 3827
    .local v6, "enumConstants":[Ljava/lang/Object;
    array-length v7, v6

    :goto_56
    if-ge v0, v7, :cond_7b

    aget-object v8, v6, v0

    .line 3828
    .local v8, "e":Ljava/lang/Object;
    move-object v9, v4

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3829
    .local v9, "catVal":Ljava/lang/String;
    const-string v10, "DISPLAY"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 3830
    sput-object v8, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    goto :goto_78

    .line 3831
    :cond_6e
    const-string v10, "FORMAT"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_78

    .line 3832
    sput-object v8, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    .line 3827
    .end local v8    # "e":Ljava/lang/Object;
    .end local v9    # "catVal":Ljava/lang/String;
    :cond_78
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 3835
    :cond_7b
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    if-eqz v0, :cond_87

    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    if-nez v0, :cond_84

    goto :goto_87

    .line 3839
    :cond_84
    sput-boolean v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z
    :try_end_86
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_86} :catch_90
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_86} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_86} :catch_8c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_86} :catch_8a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_86} :catch_88

    .end local v1    # "cCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "mName":Ljava/lang/reflect/Method;
    .end local v6    # "enumConstants":[Ljava/lang/Object;
    goto :goto_91

    .line 3836
    .restart local v1    # "cCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "mName":Ljava/lang/reflect/Method;
    .restart local v6    # "enumConstants":[Ljava/lang/Object;
    :cond_87
    :goto_87
    goto :goto_92

    .line 3844
    .end local v1    # "cCategory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "mName":Ljava/lang/reflect/Method;
    .end local v6    # "enumConstants":[Ljava/lang/Object;
    :catch_88
    move-exception v0

    goto :goto_92

    .line 3843
    :catch_8a
    move-exception v0

    goto :goto_91

    .line 3842
    :catch_8c
    move-exception v0

    goto :goto_91

    .line 3841
    :catch_8e
    move-exception v0

    goto :goto_91

    .line 3840
    :catch_90
    move-exception v0

    .line 3846
    :goto_91
    nop

    .line 3848
    :goto_92
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3851
    return-void
.end method

.method public static greylist-max-o getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;
    .registers 5
    .param p0, "category"    # Landroid/icu/util/ULocale$Category;

    .line 4021
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v0, :cond_29

    .line 4022
    const/4 v0, 0x0

    .line 4023
    .local v0, "cat":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    goto :goto_13

    .line 4028
    :pswitch_d
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_13

    .line 4025
    :pswitch_10
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    .line 4026
    nop

    .line 4031
    :goto_13
    if-eqz v0, :cond_29

    .line 4033
    :try_start_15
    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;
    :try_end_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_22} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_22} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_22} :catch_23

    return-object v1

    .line 4038
    :catch_23
    move-exception v1

    goto :goto_29

    .line 4036
    :catch_25
    move-exception v1

    goto :goto_28

    .line 4034
    :catch_27
    move-exception v1

    .line 4040
    :goto_28
    nop

    .line 4043
    .end local v0    # "cat":Ljava/lang/Object;
    :cond_29
    :goto_29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static greylist-max-o hasLocaleCategories()Z
    .registers 1

    .line 3854
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    return v0
.end method

.method public static greylist-max-o setDefault(Landroid/icu/util/ULocale$Category;Ljava/util/Locale;)V
    .registers 6
    .param p0, "category"    # Landroid/icu/util/ULocale$Category;
    .param p1, "newLocale"    # Ljava/util/Locale;

    .line 4047
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v0, :cond_26

    .line 4048
    const/4 v0, 0x0

    .line 4049
    .local v0, "cat":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    goto :goto_13

    .line 4054
    :pswitch_d
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_13

    .line 4051
    :pswitch_10
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    .line 4052
    nop

    .line 4057
    :goto_13
    if-eqz v0, :cond_26

    .line 4059
    :try_start_15
    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_1f} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1f} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_25

    .line 4064
    :catch_20
    move-exception v1

    goto :goto_26

    .line 4062
    :catch_22
    move-exception v1

    goto :goto_25

    .line 4060
    :catch_24
    move-exception v1

    .line 4066
    :goto_25
    nop

    .line 4069
    .end local v0    # "cat":Ljava/lang/Object;
    :cond_26
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static greylist-max-o toLocale(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .registers 7
    .param p0, "uloc"    # Landroid/icu/util/ULocale;

    .line 3987
    const/4 v0, 0x0

    .line 3988
    .local v0, "loc":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3989
    .local v1, "ulocStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_17

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3996
    :cond_17
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 4009
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4010
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 4012
    .end local v2    # "tag":Ljava/lang/String;
    :cond_23
    if-nez v0, :cond_37

    .line 4015
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 4017
    :cond_37
    return-object v0
.end method

.method public static greylist-max-o toULocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .registers 18
    .param p0, "loc"    # Ljava/util/Locale;

    .line 3858
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 3859
    .local v1, "language":Ljava/lang/String;
    const-string v2, ""

    .line 3860
    .local v2, "script":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 3861
    .local v3, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 3863
    .local v4, "variant":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3864
    .local v5, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 3866
    .local v6, "keywords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 3867
    invoke-virtual {v0}, Ljava/util/Locale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v7

    .line 3868
    .local v7, "extKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d4

    .line 3869
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    .line 3870
    .local v9, "extKey":Ljava/lang/Character;
    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v10

    const/16 v11, 0x75

    if-ne v10, v11, :cond_b9

    .line 3875
    invoke-virtual {v0}, Ljava/util/Locale;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v10

    .line 3876
    .local v10, "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5c

    .line 3877
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    move-object v5, v11

    .line 3878
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3879
    .local v12, "attr":Ljava/lang/String;
    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3880
    .end local v12    # "attr":Ljava/lang/String;
    goto :goto_4c

    .line 3884
    :cond_5c
    invoke-virtual {v0}, Ljava/util/Locale;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v11

    .line 3885
    .local v11, "uKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_64
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3886
    .local v13, "kwKey":Ljava/lang/String;
    invoke-virtual {v0, v13}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3887
    .local v14, "kwVal":Ljava/lang/String;
    if-eqz v14, :cond_b1

    .line 3888
    const-string v15, "va"

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a3

    .line 3890
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_88

    move-object/from16 v16, v5

    move-object v5, v14

    goto :goto_a1

    :cond_88
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v5

    .end local v5    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "_"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a1
    move-object v4, v5

    goto :goto_b3

    .line 3892
    .end local v16    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a3
    move-object/from16 v16, v5

    .end local v5    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v6, :cond_ad

    .line 3893
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    move-object v6, v5

    .line 3895
    :cond_ad
    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3

    .line 3887
    .end local v16    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b1
    move-object/from16 v16, v5

    .line 3898
    .end local v5    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "kwKey":Ljava/lang/String;
    .end local v14    # "kwVal":Ljava/lang/String;
    .restart local v16    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_b3
    move-object/from16 v5, v16

    goto :goto_64

    .line 3885
    .end local v16    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b6
    move-object/from16 v16, v5

    .line 3899
    .end local v5    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "uAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "uKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_d2

    .line 3900
    .end local v16    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b9
    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-virtual {v0, v10}, Ljava/util/Locale;->getExtension(C)Ljava/lang/String;

    move-result-object v10

    .line 3901
    .local v10, "extVal":Ljava/lang/String;
    if-eqz v10, :cond_d2

    .line 3902
    if-nez v6, :cond_cb

    .line 3903
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    move-object v6, v11

    .line 3905
    :cond_cb
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3908
    .end local v9    # "extKey":Ljava/lang/Character;
    .end local v10    # "extVal":Ljava/lang/String;
    :cond_d2
    :goto_d2
    goto/16 :goto_24

    .line 3917
    :cond_d4
    const-string v8, "no"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f0

    const-string v8, "NO"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f0

    const-string v8, "NY"

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f0

    .line 3918
    const-string v1, "nn"

    .line 3919
    const-string v4, ""

    .line 3923
    :cond_f0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3925
    .local v8, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x5f

    if-lez v9, :cond_103

    .line 3926
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3927
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3930
    :cond_103
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_10f

    .line 3931
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3932
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3935
    :cond_10f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_124

    .line 3936
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_11e

    .line 3937
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3939
    :cond_11e
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3940
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    :cond_124
    if-eqz v5, :cond_15b

    .line 3945
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3946
    .local v9, "attrBuf":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3947
    .local v11, "attr":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_146

    .line 3948
    const/16 v12, 0x2d

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3950
    :cond_146
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3951
    .end local v11    # "attr":Ljava/lang/String;
    goto :goto_12f

    .line 3952
    :cond_14a
    if-nez v6, :cond_152

    .line 3953
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    move-object v6, v10

    .line 3955
    :cond_152
    const-string v10, "attribute"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3958
    .end local v9    # "attrBuf":Ljava/lang/StringBuilder;
    :cond_15b
    if-eqz v6, :cond_1b1

    .line 3959
    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3960
    const/4 v9, 0x0

    .line 3961
    .local v9, "addSep":Z
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_16b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3962
    .local v11, "kwEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3963
    .local v12, "kwKey":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3965
    .local v13, "kwVal":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_19c

    .line 3967
    invoke-static {v12}, Landroid/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3969
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_197

    const-string v14, "yes"

    goto :goto_198

    :cond_197
    move-object v14, v13

    :goto_198
    invoke-static {v12, v14}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3972
    :cond_19c
    if-eqz v9, :cond_1a4

    .line 3973
    const/16 v14, 0x3b

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a5

    .line 3975
    :cond_1a4
    const/4 v9, 0x1

    .line 3977
    :goto_1a5
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3978
    const/16 v14, 0x3d

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3979
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3980
    .end local v11    # "kwEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "kwKey":Ljava/lang/String;
    .end local v13    # "kwVal":Ljava/lang/String;
    goto :goto_16b

    .line 3983
    .end local v9    # "addSep":Z
    :cond_1b1
    new-instance v9, Landroid/icu/util/ULocale;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v0, v11}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale-IA;)V

    return-object v9
.end method
