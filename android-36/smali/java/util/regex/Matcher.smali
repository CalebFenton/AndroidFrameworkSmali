.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/regex/Matcher$ImmutableMatchResult;
    }
.end annotation


# static fields
.field public static final blacklist DISALLOW_INVALID_GROUP_REFERENCE:J = 0xeba23b7L


# instance fields
.field greylist-max-o anchoringBounds:Z

.field greylist-max-r appendPos:I

.field blacklist from:I

.field blacklist groups:[I

.field private greylist-max-o matchFound:Z

.field blacklist modCount:I

.field private blacklist nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

.field private greylist-max-o originalInput:Ljava/lang/CharSequence;

.field private blacklist parentPattern:Ljava/util/regex/Pattern;

.field blacklist text:Ljava/lang/String;

.field blacklist to:I

.field greylist-max-o transparentBounds:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoMatchResult(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/regex/Matcher;->toMatchResult(Ljava/lang/String;)Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "parent"    # Ljava/util/regex/Pattern;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 169
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 209
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 210
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 211
    return-void
.end method

.method private blacklist appendReplacementInternal(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 886
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_15

    .line 887
    const-wide/32 v0, 0xeba23b7

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 888
    invoke-virtual {p0, p2, p1}, Ljava/util/regex/Matcher;->appendExpandedReplacement(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 890
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 892
    :goto_18
    return-void
.end method

.method private greylist-max-o ensureMatch()V
    .registers 3

    .line 1840
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_5

    .line 1843
    return-void

    .line 1841
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No successful match so far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getMatchedGroupIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1846
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 1847
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0, p1}, Lcom/android/icu/util/regex/MatcherNative;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v0

    .line 1848
    .local v0, "result":I
    if-ltz v0, :cond_c

    .line 1852
    return v0

    .line 1849
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No capturing group in the pattern with the name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 756
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x24

    const/4 v3, -0x1

    if-ne v1, v3, :cond_12

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_12

    .line 757
    return-object p0

    .line 758
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 760
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 761
    .local v4, "c":C
    if-eq v4, v0, :cond_26

    if-ne v4, v2, :cond_29

    .line 762
    :cond_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    :cond_29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 766
    .end local v3    # "i":I
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .registers 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1803
    if-eqz p1, :cond_35

    .line 1807
    if-ltz p2, :cond_2f

    if-ltz p3, :cond_2f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_2f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_2f

    if-gt p2, p3, :cond_2f

    .line 1811
    iput-object p1, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    .line 1812
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    .line 1813
    iput p2, p0, Ljava/util/regex/Matcher;->from:I

    .line 1814
    iput p3, p0, Ljava/util/regex/Matcher;->to:I

    .line 1815
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 1817
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 1818
    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 1819
    iget v0, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 1821
    return-object p0

    .line 1808
    :cond_2f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1804
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o resetForInput()V
    .registers 5

    .line 1825
    monitor-enter p0

    .line 1826
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v1, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    iget v2, p0, Ljava/util/regex/Matcher;->from:I

    iget v3, p0, Ljava/util/regex/Matcher;->to:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/icu/util/regex/MatcherNative;->setInput(Ljava/lang/String;II)V

    .line 1827
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->useAnchoringBounds(Z)V

    .line 1828
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->useTransparentBounds(Z)V

    .line 1829
    monitor-exit p0

    .line 1830
    return-void

    .line 1829
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private blacklist toMatchResult(Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/regex/Matcher$ImmutableMatchResult;

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    goto :goto_d

    :cond_c
    move v1, v2

    .line 240
    :goto_d
    iget-boolean v3, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 241
    :cond_15
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    iget-object v4, p0, Ljava/util/regex/Matcher;->groups:[I

    .line 242
    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v5, p1

    .end local p1    # "text":Ljava/lang/String;
    .local v5, "text":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Ljava/util/regex/Matcher$ImmutableMatchResult;-><init>(III[ILjava/lang/String;)V

    .line 239
    return-object v0
.end method


# virtual methods
.method public blacklist appendEvaluated(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 10
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "s"    # Ljava/lang/String;

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "escape":Z
    const/4 v1, 0x0

    .line 907
    .local v1, "dollar":Z
    const/4 v2, 0x0

    .line 908
    .local v2, "escapeNamedGroup":Z
    const/4 v3, -0x1

    .line 910
    .local v3, "escapeNamedGroupStart":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6b

    .line 911
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 912
    .local v5, "c":C
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_17

    if-nez v0, :cond_17

    .line 913
    const/4 v0, 0x1

    goto :goto_68

    .line 914
    :cond_17
    const/16 v6, 0x24

    if-ne v5, v6, :cond_1f

    if-nez v0, :cond_1f

    .line 915
    const/4 v1, 0x1

    goto :goto_68

    .line 916
    :cond_1f
    const/16 v6, 0x30

    if-lt v5, v6, :cond_38

    const/16 v6, 0x39

    if-gt v5, v6, :cond_38

    if-eqz v1, :cond_38

    if-nez v2, :cond_38

    .line 917
    add-int/lit8 v6, v5, -0x30

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 918
    .local v6, "groupValue":Ljava/lang/String;
    if-eqz v6, :cond_36

    .line 919
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    :cond_36
    const/4 v1, 0x0

    .line 922
    .end local v6    # "groupValue":Ljava/lang/String;
    goto :goto_68

    :cond_38
    const/16 v6, 0x7b

    if-ne v5, v6, :cond_41

    if-eqz v1, :cond_41

    .line 923
    const/4 v2, 0x1

    .line 924
    move v3, v4

    goto :goto_68

    .line 925
    :cond_41
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_5b

    if-eqz v1, :cond_5b

    if-eqz v2, :cond_5b

    .line 926
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 927
    .restart local v6    # "groupValue":Ljava/lang/String;
    if-eqz v6, :cond_58

    .line 928
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :cond_58
    const/4 v1, 0x0

    .line 931
    const/4 v2, 0x0

    .line 932
    .end local v6    # "groupValue":Ljava/lang/String;
    goto :goto_68

    :cond_5b
    if-eq v5, v6, :cond_62

    if-eqz v1, :cond_62

    if-eqz v2, :cond_62

    .line 933
    goto :goto_68

    .line 935
    :cond_62
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 936
    const/4 v1, 0x0

    .line 937
    const/4 v0, 0x0

    .line 938
    const/4 v2, 0x0

    .line 910
    .end local v5    # "c":C
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 942
    .end local v4    # "i":I
    :cond_6b
    if-nez v0, :cond_82

    .line 946
    if-nez v1, :cond_7a

    .line 950
    if-nez v2, :cond_72

    .line 953
    return-void

    .line 951
    :cond_72
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Missing ending brace \'}\' from replacement string"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 947
    :cond_7a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal group reference: group index is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 943
    :cond_82
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "character to be escaped is missing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist appendExpandedReplacement(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 12
    .param p1, "replacement"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 1063
    const/4 v0, 0x0

    .line 1064
    .local v0, "cursor":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13d

    .line 1065
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1066
    .local v1, "nextChar":C
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_2a

    .line 1067
    add-int/lit8 v0, v0, 0x1

    .line 1068
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_22

    .line 1071
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1072
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13b

    .line 1069
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "character to be escaped is missing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1074
    :cond_2a
    const/16 v2, 0x24

    if-ne v1, v2, :cond_136

    .line 1076
    add-int/lit8 v0, v0, 0x1

    .line 1078
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_12e

    .line 1081
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1082
    const/4 v2, -0x1

    .line 1083
    .local v2, "refNum":I
    const/16 v3, 0x7b

    if-ne v1, v3, :cond_dd

    .line 1084
    add-int/lit8 v0, v0, 0x1

    .line 1085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    .local v3, "gsb":Ljava/lang/StringBuilder;
    :goto_46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_68

    .line 1087
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1088
    invoke-static {v1}, Ljava/util/regex/ASCII;->isLower(I)Z

    move-result v4

    if-nez v4, :cond_62

    .line 1089
    invoke-static {v1}, Ljava/util/regex/ASCII;->isUpper(I)Z

    move-result v4

    if-nez v4, :cond_62

    .line 1090
    invoke-static {v1}, Ljava/util/regex/ASCII;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1091
    :cond_62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1097
    :cond_68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_d5

    .line 1100
    const/16 v4, 0x7d

    if-ne v1, v4, :cond_cd

    .line 1103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1104
    .local v4, "gname":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/util/regex/ASCII;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_ae

    .line 1110
    iget-object v5, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v5, v4}, Lcom/android/icu/util/regex/MatcherNative;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v5

    .line 1111
    .local v5, "groupIndex":I
    if-ltz v5, :cond_8f

    .line 1114
    move v2, v5

    .line 1115
    nop

    .end local v3    # "gsb":Ljava/lang/StringBuilder;
    .end local v4    # "gname":Ljava/lang/String;
    .end local v5    # "groupIndex":I
    add-int/lit8 v0, v0, 0x1

    .line 1116
    goto/16 :goto_10b

    .line 1112
    .restart local v3    # "gsb":Ljava/lang/StringBuilder;
    .restart local v4    # "gname":Ljava/lang/String;
    .restart local v5    # "groupIndex":I
    :cond_8f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No group with name {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1105
    .end local v5    # "groupIndex":I
    :cond_ae
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "capturing group name {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "} starts with digit character"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1101
    .end local v4    # "gname":Ljava/lang/String;
    :cond_cd
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "named capturing group is missing trailing \'}\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1098
    :cond_d5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "named capturing group has 0 length name"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1118
    .end local v3    # "gsb":Ljava/lang/StringBuilder;
    :cond_dd
    add-int/lit8 v2, v1, -0x30

    .line 1119
    if-ltz v2, :cond_126

    const/16 v3, 0x9

    if-gt v2, v3, :cond_126

    .line 1122
    add-int/lit8 v0, v0, 0x1

    .line 1124
    const/4 v4, 0x0

    .line 1125
    .local v4, "done":Z
    :goto_e8
    if-nez v4, :cond_10b

    .line 1126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_f1

    .line 1127
    goto :goto_10b

    .line 1129
    :cond_f1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    .line 1130
    .local v5, "nextDigit":I
    if-ltz v5, :cond_10b

    if-le v5, v3, :cond_fc

    .line 1131
    goto :goto_10b

    .line 1133
    :cond_fc
    mul-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v5

    .line 1134
    .local v6, "newRefNum":I
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-ge v7, v6, :cond_107

    .line 1135
    const/4 v4, 0x1

    goto :goto_10a

    .line 1137
    :cond_107
    move v2, v6

    .line 1138
    add-int/lit8 v0, v0, 0x1

    .line 1140
    .end local v5    # "nextDigit":I
    .end local v6    # "newRefNum":I
    :goto_10a
    goto :goto_e8

    .line 1143
    .end local v4    # "done":Z
    :cond_10b
    :goto_10b
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_125

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    if-eq v3, v4, :cond_125

    .line 1144
    iget-object v3, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-virtual {p2, v3, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1145
    .end local v2    # "refNum":I
    :cond_125
    goto :goto_13b

    .line 1120
    .restart local v2    # "refNum":I
    :cond_126
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal group reference"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1079
    .end local v2    # "refNum":I
    :cond_12e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal group reference: group index is missing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1146
    :cond_136
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1147
    add-int/lit8 v0, v0, 0x1

    .line 1149
    .end local v1    # "nextChar":C
    :goto_13b
    goto/16 :goto_1

    .line 1150
    :cond_13d
    return-object p2
.end method

.method public whitelist test-api appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p2}, Ljava/util/regex/Matcher;->appendReplacementInternal(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    iget v2, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 864
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 867
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 868
    iget v1, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 869
    return-object p0
.end method

.method public whitelist test-api appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 1036
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p2}, Ljava/util/regex/Matcher;->appendReplacementInternal(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    iget v2, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1046
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 1050
    iget v1, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 1051
    return-object p0
.end method

.method public whitelist test-api appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 1170
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->to:I

    if-ge v0, v1, :cond_13

    .line 1171
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->to:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1173
    :cond_13
    return-object p1
.end method

.method public whitelist test-api appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1196
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->to:I

    if-ge v0, v1, :cond_13

    .line 1197
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->to:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    :cond_13
    return-object p1
.end method

.method public whitelist test-api end()I
    .registers 2

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api end(I)I
    .registers 5
    .param p1, "group"    # I

    .line 496
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 497
    if-ltz p1, :cond_14

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_14

    .line 499
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0

    .line 498
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api end(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 524
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-direct {p0, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist test-api find()Z
    .registers 3

    .line 680
    monitor-enter p0

    .line 681
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->findNext([I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 682
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    .line 683
    iget v0, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 684
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 682
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public whitelist test-api find(I)Z
    .registers 5
    .param p1, "start"    # I

    .line 707
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->getTextLength()I

    move-result v0

    .line 708
    .local v0, "limit":I
    if-ltz p1, :cond_23

    if-gt p1, v0, :cond_23

    .line 710
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 711
    monitor-enter p0

    .line 712
    :try_start_c
    iget-object v1, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v2, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-virtual {v1, p1, v2}, Lcom/android/icu/util/regex/MatcherNative;->find(I[I)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 713
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_20

    .line 714
    iget v1, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 715
    iget-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v1

    .line 713
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 709
    :cond_23
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Illegal start index"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist getSubSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 1783
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTextLength()I
    .registers 2

    .line 1772
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api group()Ljava/lang/String;
    .registers 2

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api group(I)Ljava/lang/String;
    .registers 5
    .param p1, "group"    # I

    .line 587
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 588
    if-ltz p1, :cond_38

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_38

    .line 590
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    if-ne v0, v1, :cond_1f

    goto :goto_36

    .line 592
    :cond_1f
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->getSubSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 591
    :cond_36
    :goto_36
    const/4 v0, 0x0

    return-object v0

    .line 589
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api group(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 623
    invoke-direct {p0, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v0

    .line 624
    .local v0, "group":I
    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v1, v3

    if-ne v1, v2, :cond_18

    goto :goto_2f

    .line 626
    :cond_18
    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/util/regex/Matcher;->getSubSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 625
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api groupCount()I
    .registers 2

    .line 642
    monitor-enter p0

    .line 643
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0}, Lcom/android/icu/util/regex/MatcherNative;->groupCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 644
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api hasAnchoringBounds()Z
    .registers 2

    .line 1673
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    return v0
.end method

.method public whitelist test-api hasTransparentBounds()Z
    .registers 2

    .line 1619
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    return v0
.end method

.method public whitelist test-api hitEnd()Z
    .registers 2

    .line 1741
    monitor-enter p0

    .line 1742
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0}, Lcom/android/icu/util/regex/MatcherNative;->hitEnd()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1743
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api lookingAt()Z
    .registers 3

    .line 733
    monitor-enter p0

    .line 734
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->lookingAt([I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 735
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    .line 736
    iget v0, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 737
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 735
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public whitelist test-api matches()Z
    .registers 3

    .line 657
    monitor-enter p0

    .line 658
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    iget-object v1, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-virtual {v0, v1}, Lcom/android/icu/util/regex/MatcherNative;->matches([I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 659
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    .line 660
    iget v0, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 661
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 659
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public whitelist test-api pattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 219
    iget-object v0, p0, Ljava/util/regex/Matcher;->parentPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public whitelist test-api region(II)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1572
    iget-object v0, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api regionEnd()I
    .registers 2

    .line 1598
    iget v0, p0, Ljava/util/regex/Matcher;->to:I

    return v0
.end method

.method public whitelist test-api regionStart()I
    .registers 2

    .line 1585
    iget v0, p0, Ljava/util/regex/Matcher;->from:I

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "replacement"    # Ljava/lang/String;

    .line 1237
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 1238
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 1239
    .local v0, "result":Z
    if-eqz v0, :cond_1f

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    .local v1, "sb":Ljava/lang/StringBuilder;
    :cond_e
    invoke-virtual {p0, v1, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1243
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 1244
    if-nez v0, :cond_e

    .line 1245
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1248
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1f
    iget-object v1, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/Function;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/regex/MatchResult;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1310
    .local p1, "replacer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/regex/MatchResult;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 1312
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 1313
    .local v0, "result":Z
    if-eqz v0, :cond_34

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1316
    .local v1, "sb":Ljava/lang/StringBuilder;
    :cond_11
    iget v2, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 1317
    .local v2, "ec":I
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1318
    .local v3, "replacement":Ljava/lang/String;
    iget v4, p0, Ljava/util/regex/Matcher;->modCount:I

    if-ne v2, v4, :cond_2e

    .line 1320
    invoke-virtual {p0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1321
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 1322
    .end local v2    # "ec":I
    .end local v3    # "replacement":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 1323
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1319
    .restart local v2    # "ec":I
    .restart local v3    # "replacement":Ljava/lang/String;
    :cond_2e
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1326
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "ec":I
    .end local v3    # "replacement":Ljava/lang/String;
    :cond_34
    iget-object v1, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "replacement"    # Ljava/lang/String;

    .line 1462
    if-eqz p1, :cond_22

    .line 1464
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 1465
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1466
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1467
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1468
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1469
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1463
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "replacement"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api replaceFirst(Ljava/util/function/Function;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/regex/MatchResult;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1532
    .local p1, "replacer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/regex/MatchResult;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 1534
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1535
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1536
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1537
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 1538
    .local v1, "ec":I
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1539
    .local v2, "replacement":Ljava/lang/String;
    iget v3, p0, Ljava/util/regex/Matcher;->modCount:I

    if-ne v1, v3, :cond_2f

    .line 1541
    invoke-virtual {p0, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1542
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1540
    :cond_2f
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api requireEnd()Z
    .registers 2

    .line 1761
    monitor-enter p0

    .line 1762
    :try_start_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0}, Lcom/android/icu/util/regex/MatcherNative;->requireEnd()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1763
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api reset()Ljava/util/regex/Matcher;
    .registers 4

    .line 366
    iget-object v0, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    iget-object v1, p0, Ljava/util/regex/Matcher;->originalInput:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 367
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 368
    return-object v0
.end method

.method public whitelist test-api reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 386
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api results()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/regex/MatchResult;",
            ">;"
        }
    .end annotation

    .line 1424
    new-instance v0, Ljava/util/regex/Matcher$1MatchResultIterator;

    invoke-direct {v0, p0}, Ljava/util/regex/Matcher$1MatchResultIterator;-><init>(Ljava/util/regex/Matcher;)V

    const/16 v1, 0x110

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api start()I
    .registers 2

    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api start(I)I
    .registers 5
    .param p1, "group"    # I

    .line 427
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 428
    if-ltz p1, :cond_12

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-gt p1, v0, :cond_12

    .line 430
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0

    .line 429
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api start(Ljava/lang/String;)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 455
    iget-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    invoke-direct {p0, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public whitelist test-api toMatchResult()Ljava/util/regex/MatchResult;
    .registers 2

    .line 233
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 234
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/regex/Matcher;->toMatchResult(Ljava/lang/String;)Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1715
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "java.util.regex.Matcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1716
    const-string v2, "[pattern="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1717
    const-string v2, " region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1718
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1719
    const-string v2, " lastmatch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    iget-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 1723
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    :cond_4b
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1726
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .registers 3
    .param p1, "b"    # Z

    .line 1698
    monitor-enter p0

    .line 1699
    :try_start_1
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 1700
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0, p1}, Lcom/android/icu/util/regex/MatcherNative;->useAnchoringBounds(Z)V

    .line 1701
    monitor-exit p0

    .line 1702
    return-object p0

    .line 1701
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public whitelist test-api usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .registers 4
    .param p1, "newPattern"    # Ljava/util/regex/Pattern;

    .line 336
    if-eqz p1, :cond_2e

    .line 339
    monitor-enter p0

    .line 341
    :try_start_3
    iget-object v0, p1, Ljava/util/regex/Pattern;->nativePattern:Lcom/android/icu/util/regex/PatternNative;

    invoke-static {v0}, Lcom/android/icu/util/regex/MatcherNative;->create(Lcom/android/icu/util/regex/PatternNative;)Lcom/android/icu/util/regex/MatcherNative;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    .line 342
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2b

    .line 343
    iput-object p1, p0, Ljava/util/regex/Matcher;->parentPattern:Ljava/util/regex/Pattern;

    .line 345
    iget-object v0, p0, Ljava/util/regex/Matcher;->text:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 346
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 349
    :cond_15
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher;->groups:[I

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 351
    iget v0, p0, Ljava/util/regex/Matcher;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/regex/Matcher;->modCount:I

    .line 352
    return-object p0

    .line 342
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0

    .line 337
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .registers 3
    .param p1, "b"    # Z

    .line 1649
    monitor-enter p0

    .line 1650
    :try_start_1
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    .line 1651
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeMatcher:Lcom/android/icu/util/regex/MatcherNative;

    invoke-virtual {v0, p1}, Lcom/android/icu/util/regex/MatcherNative;->useTransparentBounds(Z)V

    .line 1652
    monitor-exit p0

    .line 1653
    return-object p0

    .line 1652
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method
