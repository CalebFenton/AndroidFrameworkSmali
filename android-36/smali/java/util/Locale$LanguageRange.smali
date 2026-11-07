.class public final Ljava/util/Locale$LanguageRange;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageRange"
.end annotation


# static fields
.field public static final whitelist test-api MAX_WEIGHT:D = 1.0

.field public static final whitelist test-api MIN_WEIGHT:D


# instance fields
.field private greylist-max-o hash:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final greylist-max-o range:Ljava/lang/String;

.field private final greylist-max-o weight:D


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "range"    # Ljava/lang/String;

    .line 3704
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    .line 3705
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;D)V
    .registers 10
    .param p1, "range"    # Ljava/lang/String;
    .param p2, "weight"    # D

    .line 3722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3723
    if-eqz p1, :cond_7a

    .line 3726
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_61

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_61

    .line 3730
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3733
    const/4 v0, 0x0

    .line 3734
    .local v0, "isIllFormed":Z
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3735
    .local v2, "subtags":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Locale$LanguageRange;->isSubtagIllFormed(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_40

    .line 3736
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_40

    .line 3739
    :cond_2f
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_30
    array-length v4, v2

    if-ge v1, v4, :cond_41

    .line 3740
    aget-object v4, v2, v1

    invoke-static {v4, v3}, Ljava/util/Locale$LanguageRange;->isSubtagIllFormed(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3741
    const/4 v0, 0x1

    .line 3742
    goto :goto_41

    .line 3739
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 3737
    .end local v1    # "i":I
    :cond_40
    :goto_40
    const/4 v0, 0x1

    .line 3746
    :cond_41
    :goto_41
    if-nez v0, :cond_48

    .line 3750
    iput-object p1, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    .line 3751
    iput-wide p2, p0, Ljava/util/Locale$LanguageRange;->weight:D

    .line 3752
    return-void

    .line 3747
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3727
    .end local v0    # "isIllFormed":Z
    .end local v2    # "subtags":[Ljava/lang/String;
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3724
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o isSubtagIllFormed(Ljava/lang/String;Z)Z
    .registers 11
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "isFirstSubtag"    # Z

    .line 3756
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_10

    goto :goto_4b

    .line 3758
    :cond_10
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 3759
    return v2

    .line 3761
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3762
    .local v0, "charArray":[C
    const/16 v3, 0x7a

    const/16 v4, 0x61

    if-eqz p1, :cond_33

    .line 3763
    array-length v5, v0

    move v6, v2

    :goto_26
    if-ge v6, v5, :cond_4a

    aget-char v7, v0, v6

    .line 3764
    .local v7, "c":C
    if-lt v7, v4, :cond_32

    if-le v7, v3, :cond_2f

    goto :goto_32

    .line 3763
    .end local v7    # "c":C
    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 3765
    .restart local v7    # "c":C
    :cond_32
    :goto_32
    return v1

    .line 3769
    .end local v7    # "c":C
    :cond_33
    array-length v5, v0

    move v6, v2

    :goto_35
    if-ge v6, v5, :cond_4a

    aget-char v7, v0, v6

    .line 3770
    .restart local v7    # "c":C
    const/16 v8, 0x30

    if-lt v7, v8, :cond_49

    const/16 v8, 0x39

    if-le v7, v8, :cond_43

    if-lt v7, v4, :cond_49

    :cond_43
    if-le v7, v3, :cond_46

    goto :goto_49

    .line 3769
    .end local v7    # "c":C
    :cond_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 3771
    .restart local v7    # "c":C
    :cond_49
    :goto_49
    return v1

    .line 3775
    .end local v7    # "c":C
    :cond_4a
    return v2

    .line 3757
    .end local v0    # "charArray":[C
    :cond_4b
    :goto_4b
    return v1
.end method

.method public static whitelist test-api mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 3941
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 3863
    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .line 3888
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Locale$LanguageRange;->mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3975
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 3976
    return v0

    .line 3980
    :cond_4
    instance-of v1, p1, Ljava/util/Locale$LanguageRange;

    if-eqz v1, :cond_1e

    .line 3978
    move-object v1, p1

    check-cast v1, Ljava/util/Locale$LanguageRange;

    .local v1, "other":Ljava/util/Locale$LanguageRange;
    iget-object v2, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    iget-object v3, v1, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    .line 3979
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-wide v2, p0, Ljava/util/Locale$LanguageRange;->weight:D

    iget-wide v4, v1, Ljava/util/Locale$LanguageRange;->weight:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1e

    goto :goto_1f

    .end local v1    # "other":Ljava/util/Locale$LanguageRange;
    :cond_1e
    const/4 v0, 0x0

    .line 3978
    :goto_1f
    return v0
.end method

.method public whitelist test-api getRange()Ljava/lang/String;
    .registers 2

    .line 3784
    iget-object v0, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getWeight()D
    .registers 3

    .line 3793
    iget-wide v0, p0, Ljava/util/Locale$LanguageRange;->weight:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 3949
    iget v0, p0, Ljava/util/Locale$LanguageRange;->hash:I

    .line 3950
    .local v0, "h":I
    if-nez v0, :cond_22

    .line 3951
    const/16 v0, 0x11

    .line 3952
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3953
    .end local v0    # "h":I
    .local v1, "h":I
    iget-wide v2, p0, Ljava/util/Locale$LanguageRange;->weight:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 3954
    .local v2, "bitsWeight":J
    mul-int/lit8 v0, v1, 0x25

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/2addr v0, v4

    .line 3955
    .end local v1    # "h":I
    .restart local v0    # "h":I
    if-eqz v0, :cond_22

    .line 3956
    iput v0, p0, Ljava/util/Locale$LanguageRange;->hash:I

    .line 3959
    .end local v2    # "bitsWeight":J
    :cond_22
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 3992
    iget-wide v0, p0, Ljava/util/Locale$LanguageRange;->weight:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_b

    iget-object v0, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    goto :goto_26

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/Locale$LanguageRange;->range:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/util/Locale$LanguageRange;->weight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0
.end method
