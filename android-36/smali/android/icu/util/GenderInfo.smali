.class public Landroid/icu/util/GenderInfo;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/GenderInfo$Cache;,
        Landroid/icu/util/GenderInfo$Gender;,
        Landroid/icu/util/GenderInfo$ListGenderStyle;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static greylist-max-o genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

.field private static greylist-max-o neutral:Landroid/icu/util/GenderInfo;


# instance fields
.field private final greylist-max-o style:Landroid/icu/util/GenderInfo$ListGenderStyle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetneutral()Landroid/icu/util/GenderInfo;
    .registers 1

    sget-object v0, Landroid/icu/util/GenderInfo;->neutral:Landroid/icu/util/GenderInfo;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 225
    new-instance v0, Landroid/icu/util/GenderInfo;

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-direct {v0, v1}, Landroid/icu/util/GenderInfo;-><init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V

    sput-object v0, Landroid/icu/util/GenderInfo;->neutral:Landroid/icu/util/GenderInfo;

    .line 263
    new-instance v0, Landroid/icu/util/GenderInfo$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/GenderInfo$Cache;-><init>(Landroid/icu/util/GenderInfo-IA;)V

    sput-object v0, Landroid/icu/util/GenderInfo;->genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V
    .registers 2
    .param p1, "genderStyle"    # Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Landroid/icu/util/GenderInfo;->style:Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 223
    return-void
.end method

.method public static greylist-max-o getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .registers 2
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    sget-object v0, Landroid/icu/util/GenderInfo;->genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

    invoke-virtual {v0, p0}, Landroid/icu/util/GenderInfo$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;)Landroid/icu/util/GenderInfo;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/GenderInfo;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getListGender(Ljava/util/List;)Landroid/icu/util/GenderInfo$Gender;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/util/GenderInfo$Gender;",
            ">;)",
            "Landroid/icu/util/GenderInfo$Gender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    .local p1, "genders":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/GenderInfo$Gender;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 171
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v0

    .line 173
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 174
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$Gender;

    return-object v0

    .line 176
    :cond_18
    iget-object v0, p0, Landroid/icu/util/GenderInfo;->style:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v0}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_76

    .line 210
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v0

    .line 203
    :pswitch_24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/GenderInfo$Gender;

    .line 204
    .local v1, "gender":Landroid/icu/util/GenderInfo$Gender;
    sget-object v2, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    if-eq v1, v2, :cond_3b

    .line 205
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    return-object v0

    .line 207
    .end local v1    # "gender":Landroid/icu/util/GenderInfo$Gender;
    :cond_3b
    goto :goto_28

    .line 208
    :cond_3c
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    return-object v0

    .line 180
    :pswitch_3f
    const/4 v0, 0x0

    .line 181
    .local v0, "hasFemale":Z
    const/4 v1, 0x0

    .line 182
    .local v1, "hasMale":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/GenderInfo$Gender;

    .line 183
    .local v3, "gender":Landroid/icu/util/GenderInfo$Gender;
    invoke-virtual {v3}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_80

    goto :goto_6a

    .line 197
    :pswitch_59
    sget-object v2, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v2

    .line 185
    :pswitch_5c
    if-eqz v1, :cond_61

    .line 186
    sget-object v2, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v2

    .line 188
    :cond_61
    const/4 v0, 0x1

    .line 189
    goto :goto_6a

    .line 191
    :pswitch_63
    if-eqz v0, :cond_68

    .line 192
    sget-object v2, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v2

    .line 194
    :cond_68
    const/4 v1, 0x1

    .line 195
    nop

    .line 199
    .end local v3    # "gender":Landroid/icu/util/GenderInfo$Gender;
    :goto_6a
    goto :goto_45

    .line 200
    :cond_6b
    if-eqz v1, :cond_70

    sget-object v2, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    goto :goto_72

    :cond_70
    sget-object v2, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    :goto_72
    return-object v2

    .line 178
    .end local v0    # "hasFemale":Z
    .end local v1    # "hasMale":Z
    :pswitch_73
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object v0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_73
        :pswitch_3f
        :pswitch_24
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5c
        :pswitch_59
    .end packed-switch
.end method

.method public varargs blacklist getListGender([Landroid/icu/util/GenderInfo$Gender;)Landroid/icu/util/GenderInfo$Gender;
    .registers 3
    .param p1, "genders"    # [Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/GenderInfo;->getListGender(Ljava/util/List;)Landroid/icu/util/GenderInfo$Gender;

    move-result-object v0

    return-object v0
.end method
