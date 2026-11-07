.class public final Landroid/view/textservice/SpellCheckerSubtype;
.super Ljava/lang/Object;
.source "SpellCheckerSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final greylist-max-o EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field public static final greylist-max-o SUBTYPE_ID_NONE:I = 0x0

.field private static final greylist-max-o SUBTYPE_LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSubtypeExtraValue:Ljava/lang/String;

.field private final greylist-max-o mSubtypeHashCode:I

.field private final greylist-max-o mSubtypeId:I

.field private final greylist-max-o mSubtypeLanguageTag:Ljava/lang/String;

.field private final greylist-max-o mSubtypeLocale:Ljava/lang/String;

.field private final greylist-max-o mSubtypeNameResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/view/textservice/SpellCheckerSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    .line 276
    new-instance v0, Landroid/view/textservice/SpellCheckerSubtype$1;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerSubtype$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "nameId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "extraValue"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    .end local p1    # "nameId":I
    .end local p2    # "locale":Ljava/lang/String;
    .end local p3    # "extraValue":Ljava/lang/String;
    .local v1, "nameId":I
    .local v2, "locale":Ljava/lang/String;
    .local v4, "extraValue":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "nameId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "languageTag"    # Ljava/lang/String;
    .param p4, "extraValue"    # Ljava/lang/String;
    .param p5, "subtypeId"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    .line 87
    const-string v0, ""

    if-eqz p2, :cond_b

    move-object v1, p2

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 88
    if-eqz p3, :cond_12

    move-object v1, p3

    goto :goto_13

    :cond_12
    move-object v1, v0

    :goto_13
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 89
    if-eqz p4, :cond_18

    move-object v0, p4

    :cond_18
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 90
    iput p5, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    .line 91
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v0, :cond_23

    .line 92
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    goto :goto_2b

    :cond_23
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2b
    iput v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    .line 93
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    if-eqz v0, :cond_13

    move-object v2, v0

    goto :goto_14

    :cond_13
    move-object v2, v1

    :goto_14
    iput-object v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1e

    move-object v2, v0

    goto :goto_1f

    :cond_1e
    move-object v2, v1

    :goto_1f
    iput-object v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_28

    move-object v1, v0

    :cond_28
    iput-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    .line 120
    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v1, :cond_37

    .line 121
    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    goto :goto_3f

    :cond_37
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_3f
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    .line 122
    return-void
.end method

.method private greylist-max-o getExtraValueHashMap()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-nez v0, :cond_47

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 163
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "pairs":[Ljava/lang/String;
    array-length v1, v0

    .line 165
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_47

    .line 166
    aget-object v3, v0, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "pair":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2d

    .line 168
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    aget-object v5, v3, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 169
    :cond_2d
    array-length v4, v3

    if-le v4, v6, :cond_44

    .line 170
    array-length v4, v3

    const/4 v7, 0x2

    if-le v4, v7, :cond_3b

    .line 171
    sget-object v4, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    const-string v7, "ExtraValue has two or more \'=\'s"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3b
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    aget-object v5, v3, v5

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v3    # "pair":[Ljava/lang/String;
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 177
    .end local v0    # "pairs":[Ljava/lang/String;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_47
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private static greylist-max-o hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "extraValue"    # Ljava/lang/String;

    .line 290
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o sort(Landroid/content/Context;ILandroid/view/textservice/SpellCheckerInfo;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/textservice/SpellCheckerInfo;",
            "Ljava/util/List<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation

    .line 304
    .local p3, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/textservice/SpellCheckerSubtype;>;"
    if-nez p2, :cond_3

    return-object p3

    .line 305
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 307
    .local v0, "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/textservice/SpellCheckerSubtype;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v1, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerSubtype;>;"
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v2

    .line 309
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_27

    .line 310
    invoke-virtual {p2, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v4

    .line 311
    .local v4, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 312
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 309
    .end local v4    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 318
    .end local v3    # "i":I
    :cond_27
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerSubtype;

    .line 319
    .restart local v4    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v4    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    goto :goto_2b

    .line 321
    :cond_3b
    return-object v1
.end method


# virtual methods
.method public whitelist containsExtraValueKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 207
    instance-of v0, p1, Landroid/view/textservice/SpellCheckerSubtype;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 208
    move-object v0, p1

    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    .line 209
    .local v0, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    iget v2, v0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    const/4 v3, 0x1

    if-nez v2, :cond_54

    iget v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v2, :cond_12

    goto :goto_54

    .line 212
    :cond_12
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_52

    .line 213
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    move-result v4

    if-ne v2, v4, :cond_52

    .line 214
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 215
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 216
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    move v1, v3

    goto :goto_53

    :cond_52
    nop

    .line 212
    :goto_53
    return v1

    .line 210
    :cond_54
    :goto_54
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_5f

    move v1, v3

    :cond_5f
    return v1

    .line 218
    .end local v0    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_60
    return v1
.end method

.method public whitelist getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 248
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    .line 249
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_b
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 250
    .local v1, "localeStr":Ljava/lang/String;
    :goto_d
    iget v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    if-nez v2, :cond_12

    .line 251
    return-object v1

    .line 253
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {v2, p2, v3, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 255
    .local v2, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 256
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 258
    :cond_2f
    return-object v1
.end method

.method public whitelist getExtraValue()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLanguageTag()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getLocaleObject()Ljava/util/Locale;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 231
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 233
    :cond_f
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNameResId()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 269
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return-void
.end method
