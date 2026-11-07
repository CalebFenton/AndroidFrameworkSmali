.class Ljava/util/ResourceBundle$Control$CandidateListCache;
.super Lsun/util/locale/LocaleObjectCache;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle$Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CandidateListCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache<",
        "Lsun/util/locale/BaseLocale;",
        "Ljava/util/List<",
        "Ljava/util/Locale;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2932
    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ResourceBundle-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/ResourceBundle$Control$CandidateListCache;-><init>()V

    return-void
.end method

.method private static greylist-max-o getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 2995
    const/4 v0, 0x0

    .line 2997
    .local v0, "variants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_25

    .line 2998
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 2999
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 3000
    .local v1, "idx":I
    :goto_13
    if-eq v1, v3, :cond_25

    .line 3001
    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3002
    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x5f

    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    goto :goto_13

    .line 3006
    .end local v1    # "idx":I
    :cond_25
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3008
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v4, 0x0

    if-eqz v0, :cond_45

    .line 3009
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3010
    .local v6, "v":Ljava/lang/String;
    invoke-static {p0, p1, p2, v6, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3011
    .end local v6    # "v":Ljava/lang/String;
    goto :goto_31

    .line 3013
    :cond_45
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v6, ""

    if-nez v5, :cond_54

    .line 3014
    invoke-static {p0, p1, p2, v6, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3016
    :cond_54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_bc

    .line 3017
    invoke-static {p0, p1, v6, v6, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3019
    const-string v5, "zh"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 3020
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 3023
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_d0

    :cond_76
    goto :goto_8a

    :pswitch_77
    const-string v2, "Hant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    const/4 v2, 0x1

    goto :goto_8b

    :pswitch_81
    const-string v5, "Hans"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    goto :goto_8b

    :goto_8a
    move v2, v3

    :goto_8b
    packed-switch v2, :pswitch_data_d8

    goto :goto_95

    .line 3028
    :pswitch_8f
    const-string p2, "TW"

    goto :goto_95

    .line 3025
    :pswitch_92
    const-string p2, "CN"

    .line 3026
    nop

    .line 3036
    :cond_95
    :goto_95
    if-eqz v0, :cond_af

    .line 3037
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3038
    .local v3, "v":Ljava/lang/String;
    invoke-static {p0, v6, p2, v3, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3039
    .end local v3    # "v":Ljava/lang/String;
    goto :goto_9b

    .line 3041
    :cond_af
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bc

    .line 3042
    invoke-static {p0, v6, p2, v6, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3045
    :cond_bc
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c9

    .line 3046
    invoke-static {p0, v6, v6, v6, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3049
    :cond_c9
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3051
    return-object v1

    nop

    :pswitch_data_d0
    .packed-switch 0x22349e
        :pswitch_81
        :pswitch_77
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_92
        :pswitch_8f
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic blacklist createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2932
    check-cast p1, Lsun/util/locale/BaseLocale;

    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle$Control$CandidateListCache;->createObject(Lsun/util/locale/BaseLocale;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o createObject(Lsun/util/locale/BaseLocale;)Ljava/util/List;
    .registers 17
    .param p1, "base"    # Lsun/util/locale/BaseLocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/util/locale/BaseLocale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 2934
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2935
    .local v0, "language":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 2936
    .local v1, "script":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 2937
    .local v2, "region":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 2940
    .local v3, "variant":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2941
    .local v4, "isNorwegianBokmal":Z
    const/4 v5, 0x0

    .line 2942
    .local v5, "isNorwegianNynorsk":Z
    const-string v6, "no"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "NY"

    const-string v9, "NO"

    if-eqz v7, :cond_2f

    .line 2943
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 2944
    const-string v3, ""

    .line 2945
    const/4 v5, 0x1

    goto :goto_2f

    .line 2947
    :cond_2e
    const/4 v4, 0x1

    .line 2950
    :cond_2f
    :goto_2f
    const-string v7, "nb"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_cb

    if-eqz v4, :cond_3b

    goto/16 :goto_cb

    .line 2963
    :cond_3b
    const-string v7, "nn"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_a4

    if-eqz v5, :cond_47

    goto :goto_a4

    .line 2973
    :cond_47
    const-string v6, "zh"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 2974
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9f

    .line 2977
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_108

    :cond_62
    goto :goto_94

    :sswitch_63
    const-string v6, "TW"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v11, 0x0

    goto :goto_95

    :sswitch_6d
    const-string v6, "SG"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v11, 0x4

    goto :goto_95

    :sswitch_77
    const-string v6, "MO"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v11, 0x2

    goto :goto_95

    :sswitch_81
    const-string v6, "HK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    goto :goto_95

    :sswitch_8a
    const-string v6, "CN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v11, 0x3

    goto :goto_95

    :goto_94
    const/4 v11, -0x1

    :goto_95
    packed-switch v11, :pswitch_data_11e

    goto :goto_9f

    .line 2985
    :pswitch_99
    const-string v1, "Hans"

    goto :goto_9f

    .line 2981
    :pswitch_9c
    const-string v1, "Hant"

    .line 2982
    nop

    .line 2991
    :cond_9f
    :goto_9f
    invoke-static {v0, v1, v2, v3}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 2965
    :cond_a4
    :goto_a4
    invoke-static {v7, v1, v2, v3}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2966
    .local v7, "nynorskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v11

    .line 2967
    .local v10, "idx":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .local v11, "idx":I
    invoke-static {v6, v9, v8}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    invoke-interface {v7, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2968
    add-int/lit8 v8, v11, 0x1

    .end local v11    # "idx":I
    .local v8, "idx":I
    const-string v10, ""

    invoke-static {v6, v9, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    invoke-interface {v7, v11, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2969
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idx":I
    .local v9, "idx":I
    invoke-static {v6, v10, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2970
    return-object v7

    .line 2951
    .end local v7    # "nynorskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v9    # "idx":I
    :cond_cb
    :goto_cb
    invoke-static {v7, v1, v2, v3}, Ljava/util/ResourceBundle$Control$CandidateListCache;->getDefaultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2953
    .local v7, "tmpList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 2954
    .local v8, "bokmalList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_107

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Locale;

    .line 2955
    .local v10, "l":Ljava/util/Locale;
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2956
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f2

    .line 2957
    goto :goto_107

    .line 2959
    :cond_f2
    invoke-virtual {v10}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    .line 2960
    invoke-virtual {v10}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v13

    .line 2959
    const/4 v14, 0x0

    invoke-static {v6, v11, v12, v13, v14}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2961
    .end local v10    # "l":Ljava/util/Locale;
    goto :goto_d8

    .line 2962
    :cond_107
    :goto_107
    return-object v8

    :sswitch_data_108
    .sparse-switch
        0x86b -> :sswitch_8a
        0x903 -> :sswitch_81
        0x9a2 -> :sswitch_77
        0xa54 -> :sswitch_6d
        0xa83 -> :sswitch_63
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_99
        :pswitch_99
    .end packed-switch
.end method
