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

.field public static final SUBTYPE_ID_NONE:I = 0x0

.field private static final SUBTYPE_LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

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

.field private final mSubtypeId:I

.field private final mSubtypeLanguageTag:Ljava/lang/String;

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const-class v0, Landroid/view/textservice/SpellCheckerSubtype;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    #@8
    .line 274
    new-instance v0, Landroid/view/textservice/SpellCheckerSubtype$1;

    #@a
    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerSubtype$1;-><init>()V

    #@d
    .line 273
    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "nameId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "extraValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 104
    const-string/jumbo v3, ""

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v4, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@b
    .line 103
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "nameId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "languageTag"    # Ljava/lang/String;
    .param p4, "extraValue"    # Ljava/lang/String;
    .param p5, "subtypeId"    # I

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput p1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@5
    .line 85
    if-eqz p2, :cond_0

    #@7
    .end local p2    # "locale":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@9
    .line 86
    if-eqz p3, :cond_1

    #@b
    .end local p3    # "languageTag":Ljava/lang/String;
    :goto_1
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@d
    .line 87
    if-eqz p4, :cond_2

    #@f
    .end local p4    # "extraValue":Ljava/lang/String;
    :goto_2
    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@11
    .line 88
    iput p5, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@13
    .line 89
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 90
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@19
    .line 89
    :goto_3
    iput v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    #@1b
    .line 83
    return-void

    #@1c
    .line 85
    .restart local p2    # "locale":Ljava/lang/String;
    .restart local p3    # "languageTag":Ljava/lang/String;
    .restart local p4    # "extraValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, ""

    #@1f
    goto :goto_0

    #@20
    .line 86
    .end local p2    # "locale":Ljava/lang/String;
    :cond_1
    const-string/jumbo p3, ""

    #@23
    goto :goto_1

    #@24
    .line 87
    .end local p3    # "languageTag":Ljava/lang/String;
    :cond_2
    const-string/jumbo p4, ""

    #@27
    goto :goto_2

    #@28
    .line 90
    .end local p4    # "extraValue":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@2a
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@2c
    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    move-result v0

    #@30
    goto :goto_3
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@9
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 111
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@11
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 113
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@17
    .end local v0    # "s":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@19
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 115
    .restart local v0    # "s":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1f
    .end local v0    # "s":Ljava/lang/String;
    :goto_2
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@21
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@27
    .line 117
    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 118
    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@2d
    .line 117
    :goto_3
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    #@2f
    .line 107
    return-void

    #@30
    .line 111
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    #@33
    goto :goto_0

    #@34
    .line 113
    :cond_1
    const-string/jumbo v0, ""

    #@37
    goto :goto_1

    #@38
    .line 115
    :cond_2
    const-string/jumbo v0, ""

    #@3b
    goto :goto_2

    #@3c
    .line 118
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@3e
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@40
    invoke-static {v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    move-result v1

    #@44
    goto :goto_3
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
    .line 158
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@5
    if-nez v4, :cond_3

    #@7
    .line 159
    new-instance v4, Ljava/util/HashMap;

    #@9
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@e
    .line 160
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@10
    const-string/jumbo v5, ","

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 161
    .local v3, "pairs":[Ljava/lang/String;
    array-length v0, v3

    #@18
    .line 162
    .local v0, "N":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@1b
    .line 163
    aget-object v4, v3, v1

    #@1d
    const-string/jumbo v5, "="

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 164
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    #@25
    if-ne v4, v7, :cond_1

    #@27
    .line 165
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    #@29
    aget-object v5, v2, v8

    #@2b
    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 162
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 166
    :cond_1
    array-length v4, v2

    #@32
    if-le v4, v7, :cond_0

    #@34
    .line 167
    array-length v4, v2

    #@35
    const/4 v5, 0x2

    #@36
    if-le v4, v5, :cond_2

    #@38
    .line 168
    sget-object v4, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    #@3a
    const-string/jumbo v5, "ExtraValue has two or more \'=\'s"

    #@3d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 170
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
    .line 174
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
    .line 287
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
    .line 301
    .local p3, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/textservice/SpellCheckerSubtype;>;"
    if-nez p2, :cond_0

    #@2
    return-object p3

    #@3
    .line 302
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    #@5
    invoke-direct {v5, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@8
    .line 304
    .local v5, "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/textservice/SpellCheckerSubtype;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 305
    .local v2, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerSubtype;>;"
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@10
    move-result v0

    #@11
    .line 306
    .local v0, "N":I
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@14
    .line 307
    invoke-virtual {p2, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@17
    move-result-object v3

    #@18
    .line 308
    .local v3, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_1

    #@1e
    .line 309
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 310
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@24
    .line 306
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 315
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
    .line 316
    .restart local v3    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_1

    #@3b
    .line 318
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
    .line 184
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
    .line 261
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
    .line 204
    instance-of v2, p1, Landroid/view/textservice/SpellCheckerSubtype;

    #@3
    if-eqz v2, :cond_4

    #@5
    move-object v0, p1

    #@6
    .line 205
    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    #@8
    .line 206
    .local v0, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    iget v2, v0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@a
    if-nez v2, :cond_0

    #@c
    iget v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@e
    if-eqz v2, :cond_2

    #@10
    .line 207
    :cond_0
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    #@13
    move-result v2

    #@14
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    #@17
    move-result v3

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    const/4 v1, 0x1

    #@1b
    :cond_1
    return v1

    #@1c
    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    #@1f
    move-result v2

    #@20
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    #@23
    move-result v3

    #@24
    if-ne v2, v3, :cond_3

    #@26
    .line 210
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    #@29
    move-result v2

    #@2a
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    #@2d
    move-result v3

    #@2e
    if-ne v2, v3, :cond_3

    #@30
    .line 211
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v2

    #@3c
    .line 209
    if-eqz v2, :cond_3

    #@3e
    .line 212
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v2

    #@4a
    .line 209
    if-eqz v2, :cond_3

    #@4c
    .line 213
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    .line 209
    :cond_3
    return v1

    #@59
    .line 215
    .end local v0    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_4
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
    .line 245
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    #@4
    move-result-object v0

    #@5
    .line 246
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 247
    .local v1, "localeStr":Ljava/lang/String;
    :goto_0
    iget v3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@d
    if-nez v3, :cond_1

    #@f
    .line 248
    return-object v1

    #@10
    .line 246
    .end local v1    # "localeStr":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@12
    .restart local v1    # "localeStr":Ljava/lang/String;
    goto :goto_0

    #@13
    .line 250
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v3

    #@17
    .line 251
    iget v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@19
    .line 250
    invoke-virtual {v3, p2, v4, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@1c
    move-result-object v2

    #@1d
    .line 252
    .local v2, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_2

    #@23
    .line 253
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    const/4 v4, 0x1

    #@28
    new-array v4, v4, [Ljava/lang/Object;

    #@2a
    aput-object v1, v4, v5

    #@2c
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3

    #@31
    .line 255
    :cond_2
    return-object v1
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
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

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 228
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@a
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 230
    :cond_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@11
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 199
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
    .line 266
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 267
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 268
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 269
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 270
    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 265
    return-void
.end method
