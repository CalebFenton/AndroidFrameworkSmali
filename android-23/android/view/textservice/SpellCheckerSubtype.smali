.class public final Landroid/view/textservice/SpellCheckerSubtype;
.super Ljava/lang/Object;
.source "SpellCheckerSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSubtype$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypeExtraValue:Ljava/lang/String;

.field private final mSubtypeHashCode:I

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 38
    const-class v0, Landroid/view/textservice/SpellCheckerSubtype;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    #@8
    .line 207
    new-instance v0, Landroid/view/textservice/SpellCheckerSubtype$1;

    #@a
    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerSubtype$1;-><init>()V

    #@d
    .line 206
    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nameId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "extraValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput p1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@5
    .line 56
    if-eqz p2, :cond_0

    #@7
    .end local p2    # "locale":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@9
    .line 57
    if-eqz p3, :cond_1

    #@b
    .end local p3    # "extraValue":Ljava/lang/String;
    :goto_1
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@d
    .line 58
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@f
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@11
    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    #@17
    .line 54
    return-void

    #@18
    .line 56
    .restart local p2    # "locale":Ljava/lang/String;
    .restart local p3    # "extraValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, ""

    #@1b
    goto :goto_0

    #@1c
    .line 57
    .end local p2    # "locale":Ljava/lang/String;
    :cond_1
    const-string/jumbo p3, ""

    #@1f
    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@9
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 65
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@11
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 67
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@17
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@19
    .line 68
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@1b
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@1d
    invoke-static {v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    move-result v1

    #@21
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    #@23
    .line 61
    return-void

    #@24
    .line 65
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@27
    goto :goto_0

    #@28
    .line 67
    :cond_1
    const-string/jumbo v0, ""

    #@2b
    goto :goto_1
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "localeStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 154
    return-object v6

    #@c
    .line 155
    :cond_0
    const-string/jumbo v1, "_"

    #@f
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 158
    .local v0, "localeParams":[Ljava/lang/String;
    array-length v1, v0

    #@14
    if-ne v1, v3, :cond_1

    #@16
    .line 159
    new-instance v1, Ljava/util/Locale;

    #@18
    aget-object v2, v0, v2

    #@1a
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@1d
    return-object v1

    #@1e
    .line 160
    :cond_1
    array-length v1, v0

    #@1f
    if-ne v1, v4, :cond_2

    #@21
    .line 161
    new-instance v1, Ljava/util/Locale;

    #@23
    aget-object v2, v0, v2

    #@25
    aget-object v3, v0, v3

    #@27
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    return-object v1

    #@2b
    .line 162
    :cond_2
    array-length v1, v0

    #@2c
    if-ne v1, v5, :cond_3

    #@2e
    .line 163
    new-instance v1, Ljava/util/Locale;

    #@30
    aget-object v2, v0, v2

    #@32
    aget-object v3, v0, v3

    #@34
    aget-object v4, v0, v4

    #@36
    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@39
    return-object v1

    #@3a
    .line 165
    :cond_3
    return-object v6
.end method

.method private getExtraValueHashMap()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    .line 93
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@5
    if-nez v4, :cond_3

    #@7
    .line 94
    new-instance v4, Ljava/util/HashMap;

    #@9
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@e
    .line 95
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@10
    const-string/jumbo v5, ","

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 96
    .local v3, "pairs":[Ljava/lang/String;
    array-length v0, v3

    #@18
    .line 97
    .local v0, "N":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@1b
    .line 98
    aget-object v4, v3, v1

    #@1d
    const-string/jumbo v5, "="

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 99
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    #@25
    if-ne v4, v7, :cond_1

    #@27
    .line 100
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@29
    aget-object v5, v2, v8

    #@2b
    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 101
    :cond_1
    array-length v4, v2

    #@32
    if-le v4, v7, :cond_0

    #@34
    .line 102
    array-length v4, v2

    #@35
    const/4 v5, 0x2

    #@36
    if-le v4, v5, :cond_2

    #@38
    .line 103
    sget-object v4, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    #@3a
    const-string/jumbo v5, "ExtraValue has two or more \'=\'s"

    #@3d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 105
    :cond_2
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@42
    aget-object v5, v2, v8

    #@44
    aget-object v6, v2, v7

    #@46
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    goto :goto_1

    #@4a
    .line 109
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "pairs":[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@4c
    return-object v4
.end method

.method private static hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "extraValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 220
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p1, v0, v1

    #@9
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public static sort(Landroid/content/Context;ILandroid/view/textservice/SpellCheckerInfo;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/textservice/SpellCheckerInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 234
    .local p3, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/textservice/SpellCheckerSubtype;>;"
    if-nez p2, :cond_0

    #@2
    return-object p3

    #@3
    .line 235
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    #@5
    invoke-direct {v5, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@8
    .line 237
    .local v5, "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/textservice/SpellCheckerSubtype;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 238
    .local v2, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerSubtype;>;"
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@10
    move-result v0

    #@11
    .line 239
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@14
    .line 240
    invoke-virtual {p2, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@17
    move-result-object v3

    #@18
    .line 241
    .local v3, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_1

    #@1e
    .line 242
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 243
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@24
    .line 239
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 248
    .end local v3    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v4

    #@2b
    .local v4, "subtype$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_3

    #@31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Landroid/view/textservice/SpellCheckerSubtype;

    #@37
    .line 249
    .restart local v3    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_1

    #@3b
    .line 251
    .end local v3    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 196
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 139
    instance-of v2, p1, Landroid/view/textservice/SpellCheckerSubtype;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 140
    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    #@8
    .line 141
    .local v0, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    #@f
    move-result v3

    #@10
    if-ne v2, v3, :cond_0

    #@12
    .line 142
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    #@19
    move-result v3

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 143
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    .line 141
    if-eqz v2, :cond_0

    #@2a
    .line 144
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    .line 141
    :cond_0
    return v1

    #@37
    .line 146
    .end local v0    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    return v1
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 180
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@3
    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    .line 181
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 182
    .local v1, "localeStr":Ljava/lang/String;
    :goto_0
    iget v3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@f
    if-nez v3, :cond_1

    #@11
    .line 183
    return-object v1

    #@12
    .line 181
    .end local v1    # "localeStr":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@14
    .restart local v1    # "localeStr":Ljava/lang/String;
    goto :goto_0

    #@15
    .line 185
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@18
    move-result-object v3

    #@19
    .line 186
    iget v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@1b
    .line 185
    invoke-virtual {v3, p2, v4, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@1e
    move-result-object v2

    #@1f
    .line 187
    .local v2, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_2

    #@25
    .line 188
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    const/4 v4, 0x1

    #@2a
    new-array v4, v4, [Ljava/lang/Object;

    #@2c
    aput-object v1, v4, v5

    #@2e
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    return-object v3

    #@33
    .line 190
    :cond_2
    return-object v1
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 201
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 202
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 203
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 200
    return-void
.end method
