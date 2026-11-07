.class public final Landroid/media/tv/TvContract$Programs$Genres;
.super Ljava/lang/Object;
.source "TvContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract$Programs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContract$Programs$Genres$Genre;
    }
.end annotation


# static fields
.field public static final whitelist ANIMAL_WILDLIFE:Ljava/lang/String; = "ANIMAL_WILDLIFE"

.field public static final whitelist ARTS:Ljava/lang/String; = "ARTS"

.field private static final greylist-max-o CANONICAL_GENRES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist COMEDY:Ljava/lang/String; = "COMEDY"

.field private static final greylist-max-o COMMA:C = ','

.field private static final greylist-max-o DELIMITER:Ljava/lang/String; = ","

.field private static final greylist-max-o DOUBLE_QUOTE:C = '\"'

.field public static final whitelist DRAMA:Ljava/lang/String; = "DRAMA"

.field public static final whitelist EDUCATION:Ljava/lang/String; = "EDUCATION"

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final whitelist ENTERTAINMENT:Ljava/lang/String; = "ENTERTAINMENT"

.field public static final whitelist FAMILY_KIDS:Ljava/lang/String; = "FAMILY_KIDS"

.field public static final whitelist GAMING:Ljava/lang/String; = "GAMING"

.field public static final whitelist LIFE_STYLE:Ljava/lang/String; = "LIFE_STYLE"

.field public static final whitelist MOVIES:Ljava/lang/String; = "MOVIES"

.field public static final whitelist MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final whitelist NEWS:Ljava/lang/String; = "NEWS"

.field public static final whitelist PREMIER:Ljava/lang/String; = "PREMIER"

.field public static final whitelist SHOPPING:Ljava/lang/String; = "SHOPPING"

.field public static final whitelist SPORTS:Ljava/lang/String; = "SPORTS"

.field public static final whitelist TECH_SCIENCE:Ljava/lang/String; = "TECH_SCIENCE"

.field public static final whitelist TRAVEL:Ljava/lang/String; = "TRAVEL"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2900
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    .line 2902
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "FAMILY_KIDS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2903
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "SPORTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2904
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "SHOPPING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2905
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "MOVIES"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2906
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "COMEDY"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2907
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "TRAVEL"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2908
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "DRAMA"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2909
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "EDUCATION"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2910
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "ANIMAL_WILDLIFE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2911
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "NEWS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2912
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "GAMING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2913
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "ARTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2914
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "ENTERTAINMENT"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2915
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "LIFE_STYLE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2916
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "MUSIC"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2917
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "PREMIER"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2918
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string v1, "TECH_SCIENCE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2925
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decode(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "genres"    # Ljava/lang/String;

    .line 2976
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2978
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2980
    :cond_9
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_23

    .line 2981
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2983
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2984
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2985
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2986
    .local v2, "length":I
    const/4 v3, 0x0

    .line 2987
    .local v3, "escape":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    if-ge v4, v2, :cond_62

    .line 2988
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2989
    .local v5, "c":C
    sparse-switch v5, :sswitch_data_80

    goto :goto_5b

    .line 2997
    :sswitch_3d
    if-nez v3, :cond_5b

    .line 2998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2999
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_50

    .line 3000
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3002
    :cond_50
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3003
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .local v7, "sb":Ljava/lang/StringBuilder;
    move-object v0, v7

    goto :goto_5f

    .line 2991
    .end local v6    # "string":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :sswitch_57
    if-nez v3, :cond_5b

    .line 2992
    const/4 v3, 0x1

    .line 2993
    goto :goto_5f

    .line 3007
    :cond_5b
    :goto_5b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3008
    const/4 v3, 0x0

    .line 2987
    .end local v5    # "c":C
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 3010
    .end local v4    # "i":I
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3011
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_73

    .line 3012
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3014
    :cond_73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    :sswitch_data_80
    .sparse-switch
        0x22 -> :sswitch_57
        0x2c -> :sswitch_3d
    .end sparse-switch
.end method

.method public static varargs whitelist encode([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "genres"    # [Ljava/lang/String;

    .line 2937
    if-nez p0, :cond_4

    .line 2939
    const/4 v0, 0x0

    return-object v0

    .line 2941
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2942
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 2943
    .local v1, "separator":Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_21

    aget-object v4, p0, v3

    .line 2944
    .local v4, "genre":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/media/tv/TvContract$Programs$Genres;->encodeToCsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2945
    const-string v1, ","

    .line 2943
    .end local v4    # "genre":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2947
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o encodeToCsv(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "genre"    # Ljava/lang/String;

    .line 2951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2952
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2953
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_24

    .line 2954
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2955
    .local v3, "c":C
    const/16 v4, 0x22

    sparse-switch v3, :sswitch_data_2a

    goto :goto_1e

    .line 2960
    :sswitch_16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 2957
    :sswitch_1a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2958
    nop

    .line 2963
    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2953
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2965
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_2a
    .sparse-switch
        0x22 -> :sswitch_1a
        0x2c -> :sswitch_16
    .end sparse-switch
.end method

.method public static whitelist isCanonical(Ljava/lang/String;)Z
    .registers 2
    .param p0, "genre"    # Ljava/lang/String;

    .line 3024
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
