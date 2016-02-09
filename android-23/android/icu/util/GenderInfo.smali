.class public Landroid/icu/util/GenderInfo;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/GenderInfo$Gender;,
        Landroid/icu/util/GenderInfo$ListGenderStyle;,
        Landroid/icu/util/GenderInfo$Cache;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static synthetic -android_icu_util_GenderInfo$GenderSwitchesValues:[I

.field private static synthetic -android_icu_util_GenderInfo$ListGenderStyleSwitchesValues:[I

.field private static genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

.field private static neutral:Landroid/icu/util/GenderInfo;


# instance fields
.field private final style:Landroid/icu/util/GenderInfo$ListGenderStyle;


# direct methods
.method static synthetic -get0()Landroid/icu/util/GenderInfo;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/util/GenderInfo;->neutral:Landroid/icu/util/GenderInfo;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid_icu_util_GenderInfo$GenderSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/util/GenderInfo;->-android_icu_util_GenderInfo$GenderSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/util/GenderInfo;->-android_icu_util_GenderInfo$GenderSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/util/GenderInfo$Gender;->values()[Landroid/icu/util/GenderInfo$Gender;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    #@10
    invoke-virtual {v1}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    #@19
    invoke-virtual {v1}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@22
    invoke-virtual {v1}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/icu/util/GenderInfo;->-android_icu_util_GenderInfo$GenderSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private static synthetic -getandroid_icu_util_GenderInfo$ListGenderStyleSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/util/GenderInfo;->-android_icu_util_GenderInfo$ListGenderStyleSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/util/GenderInfo;->-android_icu_util_GenderInfo$ListGenderStyleSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/util/GenderInfo$ListGenderStyle;->values()[Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@10
    invoke-virtual {v1}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@19
    invoke-virtual {v1}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@22
    invoke-virtual {v1}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/icu/util/GenderInfo;->-android_icu_util_GenderInfo$ListGenderStyleSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 218
    new-instance v0, Landroid/icu/util/GenderInfo;

    #@2
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/util/GenderInfo;-><init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V

    #@7
    sput-object v0, Landroid/icu/util/GenderInfo;->neutral:Landroid/icu/util/GenderInfo;

    #@9
    .line 256
    new-instance v0, Landroid/icu/util/GenderInfo$Cache;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-direct {v0, v1}, Landroid/icu/util/GenderInfo$Cache;-><init>(Landroid/icu/util/GenderInfo$Cache;)V

    #@f
    sput-object v0, Landroid/icu/util/GenderInfo;->genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

    #@11
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V
    .locals 0
    .param p1, "genderStyle"    # Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 215
    iput-object p1, p0, Landroid/icu/util/GenderInfo;->style:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@5
    .line 214
    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 1
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 66
    sget-object v0, Landroid/icu/util/GenderInfo;->genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

    #@2
    invoke-virtual {v0, p0}, Landroid/icu/util/GenderInfo$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/GenderInfo;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 77
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/util/GenderInfo;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public getListGender(Ljava/util/List;)Landroid/icu/util/GenderInfo$Gender;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/GenderInfo$Gender;",
            ">;)",
            "Landroid/icu/util/GenderInfo$Gender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p1, "genders":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/GenderInfo$Gender;>;"
    const/4 v6, 0x0

    #@1
    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 164
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@9
    return-object v4

    #@a
    .line 166
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@d
    move-result v4

    #@e
    const/4 v5, 0x1

    #@f
    if-ne v4, v5, :cond_1

    #@11
    .line 167
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Landroid/icu/util/GenderInfo$Gender;

    #@17
    return-object v4

    #@18
    .line 169
    :cond_1
    invoke-static {}, Landroid/icu/util/GenderInfo;->-getandroid_icu_util_GenderInfo$ListGenderStyleSwitchesValues()[I

    #@1b
    move-result-object v4

    #@1c
    iget-object v5, p0, Landroid/icu/util/GenderInfo;->style:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@1e
    invoke-virtual {v5}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    #@21
    move-result v5

    #@22
    aget v4, v4, v5

    #@24
    packed-switch v4, :pswitch_data_0

    #@27
    .line 203
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@29
    return-object v4

    #@2a
    .line 171
    :pswitch_0
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@2c
    return-object v4

    #@2d
    .line 173
    :pswitch_1
    const/4 v2, 0x0

    #@2e
    .line 174
    .local v2, "hasFemale":Z
    const/4 v3, 0x0

    #@2f
    .line 175
    .local v3, "hasMale":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v1

    #@33
    .local v1, "gender$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_4

    #@39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/icu/util/GenderInfo$Gender;

    #@3f
    .line 176
    .local v0, "gender":Landroid/icu/util/GenderInfo$Gender;
    invoke-static {}, Landroid/icu/util/GenderInfo;->-getandroid_icu_util_GenderInfo$GenderSwitchesValues()[I

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v0}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    #@46
    move-result v5

    #@47
    aget v4, v4, v5

    #@49
    packed-switch v4, :pswitch_data_1

    #@4c
    goto :goto_0

    #@4d
    .line 178
    :pswitch_2
    if-eqz v3, :cond_2

    #@4f
    .line 179
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@51
    return-object v4

    #@52
    .line 181
    :cond_2
    const/4 v2, 0x1

    #@53
    .line 182
    goto :goto_0

    #@54
    .line 184
    :pswitch_3
    if-eqz v2, :cond_3

    #@56
    .line 185
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@58
    return-object v4

    #@59
    .line 187
    :cond_3
    const/4 v3, 0x1

    #@5a
    .line 188
    goto :goto_0

    #@5b
    .line 190
    :pswitch_4
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    #@5d
    return-object v4

    #@5e
    .line 193
    .end local v0    # "gender":Landroid/icu/util/GenderInfo$Gender;
    :cond_4
    if-eqz v3, :cond_5

    #@60
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    #@62
    :goto_1
    return-object v4

    #@63
    :cond_5
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    #@65
    goto :goto_1

    #@66
    .line 196
    .end local v1    # "gender$iterator":Ljava/util/Iterator;
    .end local v2    # "hasFemale":Z
    .end local v3    # "hasMale":Z
    :pswitch_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v1

    #@6a
    .restart local v1    # "gender$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_7

    #@70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v0

    #@74
    check-cast v0, Landroid/icu/util/GenderInfo$Gender;

    #@76
    .line 197
    .restart local v0    # "gender":Landroid/icu/util/GenderInfo$Gender;
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    #@78
    if-eq v0, v4, :cond_6

    #@7a
    .line 198
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    #@7c
    return-object v4

    #@7d
    .line 201
    .end local v0    # "gender":Landroid/icu/util/GenderInfo$Gender;
    :cond_7
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    #@7f
    return-object v4

    #@80
    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@8a
    .line 176
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public varargs getListGender([Landroid/icu/util/GenderInfo$Gender;)Landroid/icu/util/GenderInfo$Gender;
    .locals 1
    .param p1, "genders"    # [Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/util/GenderInfo;->getListGender(Ljava/util/List;)Landroid/icu/util/GenderInfo$Gender;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
