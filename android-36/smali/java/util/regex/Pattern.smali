.class public final Ljava/util/regex/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist ALL_FLAGS:I = 0x7f

.field public static final whitelist test-api CANON_EQ:I = 0x80

.field public static final whitelist test-api CASE_INSENSITIVE:I = 0x2

.field public static final whitelist test-api COMMENTS:I = 0x4

.field public static final whitelist test-api DOTALL:I = 0x20

.field private static final greylist-max-o FASTSPLIT_METACHARACTERS:Ljava/lang/String; = "\\?*+[](){}^$.|"

.field public static final whitelist test-api LITERAL:I = 0x10

.field public static final whitelist test-api MULTILINE:I = 0x8

.field public static final blacklist SPLIT_AS_STREAM_RETURNS_SINGLE_EMPTY_STRING:J = 0x11376e21L

.field public static final whitelist test-api UNICODE_CASE:I = 0x40

.field public static final whitelist test-api UNICODE_CHARACTER_CLASS:I = 0x100

.field public static final whitelist test-api UNIX_LINES:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x4667d56b6e49020dL


# instance fields
.field private final greylist-max-o flags:I

.field transient blacklist nativePattern:Lcom/android/icu/util/regex/PatternNative;

.field private final greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$NUQq-hQpjFGmDTjWbkLuWUG4zEE(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/regex/Pattern;->lambda$asPredicate$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$kfp4c-7L1auD_WycRhsoLemecG4(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/regex/Pattern;->lambda$asMatchPredicate$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "f"    # I

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    and-int/lit16 v0, p2, 0x80

    if-nez v0, :cond_3c

    .line 1382
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_34

    .line 1386
    and-int/lit8 v0, p2, -0x80

    if-nez v0, :cond_17

    .line 1390
    iput-object p1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 1391
    iput p2, p0, Ljava/util/regex/Pattern;->flags:I

    .line 1419
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    .line 1421
    return-void

    .line 1387
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown flag 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1388
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1383
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UNICODE_CHARACTER_CLASS flag not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CANON_EQ flag isn\'t supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 3
    .param p0, "regex"    # Ljava/lang/String;

    .line 921
    new-instance v0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static whitelist test-api compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .registers 3
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 947
    new-instance v0, Ljava/util/regex/Pattern;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private greylist-max-o compile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 3521
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 3525
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 3526
    .local v0, "icuPattern":Ljava/lang/String;
    iget v1, p0, Ljava/util/regex/Pattern;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_12

    .line 3527
    iget-object v1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3532
    :cond_12
    iget v1, p0, Ljava/util/regex/Pattern;->flags:I

    and-int/lit8 v1, v1, 0x2f

    .line 3533
    .local v1, "icuFlags":I
    invoke-static {v0, v1}, Lcom/android/icu/util/regex/PatternNative;->create(Ljava/lang/String;I)Lcom/android/icu/util/regex/PatternNative;

    move-result-object v2

    iput-object v2, p0, Ljava/util/regex/Pattern;->nativePattern:Lcom/android/icu/util/regex/PatternNative;

    .line 3534
    return-void

    .line 3522
    .end local v0    # "icuPattern":Ljava/lang/String;
    .end local v1    # "icuFlags":I
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p0, "re"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 1189
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1190
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1191
    return-object v1

    .line 1193
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1194
    .local v3, "ch":C
    const-string v4, "\\?*+[](){}^$.|"

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v0, v6, :cond_21

    .line 1195
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1197
    return-object v1

    .line 1198
    :cond_1a
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_33

    .line 1200
    return-object v1

    .line 1203
    :cond_21
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8d

    const/16 v7, 0x5c

    if-ne v3, v7, :cond_8d

    .line 1206
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1207
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_33

    .line 1208
    return-object v1

    .line 1218
    :cond_33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1219
    new-array v1, v6, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v2

    return-object v1

    .line 1223
    :cond_40
    const/4 v1, 0x0

    .line 1224
    .local v1, "separatorCount":I
    const/4 v2, 0x0

    .line 1226
    .local v2, "begin":I
    :goto_42
    add-int/lit8 v4, v1, 0x1

    if-eq v4, p2, :cond_52

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v6, v4

    .local v6, "end":I
    if-eq v4, v5, :cond_52

    .line 1227
    add-int/lit8 v1, v1, 0x1

    .line 1228
    add-int/lit8 v2, v6, 0x1

    goto :goto_42

    .line 1230
    .end local v6    # "end":I
    :cond_52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1231
    .local v4, "lastPartEnd":I
    if-nez p2, :cond_6f

    if-ne v2, v4, :cond_6f

    .line 1233
    if-ne v1, v4, :cond_5f

    .line 1235
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v5

    .line 1239
    :cond_5f
    add-int/2addr v2, v5

    .line 1240
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_5f

    .line 1242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v1, v5

    .line 1243
    move v4, v2

    .line 1247
    :cond_6f
    add-int/lit8 v5, v1, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 1248
    .local v5, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1249
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_75
    if-eq v6, v1, :cond_86

    .line 1250
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1251
    .local v7, "end":I
    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 1252
    add-int/lit8 v2, v7, 0x1

    .line 1249
    add-int/lit8 v6, v6, 0x1

    goto :goto_75

    .line 1255
    .end local v6    # "i":I
    .end local v7    # "end":I
    :cond_86
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1256
    return-object v5

    .line 1211
    .end local v1    # "separatorCount":I
    .end local v2    # "begin":I
    .end local v4    # "lastPartEnd":I
    .end local v5    # "result":[Ljava/lang/String;
    :cond_8d
    return-object v1
.end method

.method private synthetic blacklist lambda$asMatchPredicate$1(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 5674
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$asPredicate$0(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 5654
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 1031
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1032
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1033
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static whitelist test-api quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

    .line 1313
    const-string v0, "\\E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1314
    .local v1, "slashEIndex":I
    const-string v2, "\\Q"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_21

    .line 1315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1317
    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1318
    .local v4, "lenHint":I
    const v5, 0x7ffffff7

    sub-int v6, v5, v4

    if-ge v4, v6, :cond_2f

    .line 1319
    shl-int/lit8 v5, v4, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 1321
    .end local v4    # "lenHint":I
    .local v5, "lenHint":I
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1322
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    const/4 v2, 0x0

    .line 1325
    .local v2, "current":I
    :cond_39
    invoke-virtual {v4, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1326
    const-string v7, "\\E\\\\E\\Q"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    add-int/lit8 v2, v1, 0x2

    .line 1328
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    move v1, v6

    if-ne v6, v3, :cond_39

    .line 1330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1331
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1330
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1344
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1366
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    .line 1367
    return-void
.end method


# virtual methods
.method public whitelist test-api asMatchPredicate()Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5674
    new-instance v0, Ljava/util/regex/Pattern$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/util/regex/Pattern$$ExternalSyntheticLambda1;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public whitelist test-api asPredicate()Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5654
    new-instance v0, Ljava/util/regex/Pattern$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/regex/Pattern$$ExternalSyntheticLambda0;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public whitelist test-api flags()I
    .registers 2

    .line 1001
    iget v0, p0, Ljava/util/regex/Pattern;->flags:I

    return v0
.end method

.method public whitelist test-api matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 3
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 989
    new-instance v0, Ljava/util/regex/Matcher;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    .line 990
    .local v0, "m":Ljava/util/regex/Matcher;
    return-object v0
.end method

.method public whitelist test-api pattern()Ljava/lang/String;
    .registers 2

    .line 956
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .registers 3
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 1295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .registers 12
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I

    .line 1120
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, "fast":[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1122
    return-object v0

    .line 1125
    :cond_d
    const/4 v1, 0x0

    .line 1126
    .local v1, "index":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p2, :cond_14

    move v4, v3

    goto :goto_15

    :cond_14
    move v4, v2

    .line 1127
    .local v4, "matchLimited":Z
    :goto_15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .local v5, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1131
    .local v6, "m":Ljava/util/regex/Matcher;
    :goto_1e
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1132
    if-eqz v4, :cond_4c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v8, p2, -0x1

    if-ge v7, v8, :cond_2f

    goto :goto_4c

    .line 1147
    :cond_2f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v8, p2, -0x1

    if-ne v7, v8, :cond_7e

    .line 1148
    nop

    .line 1149
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1148
    invoke-interface {p1, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1149
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1150
    .local v7, "match":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 1152
    .end local v7    # "match":Ljava/lang/String;
    goto :goto_1e

    .line 1133
    :cond_4c
    :goto_4c
    if-nez v1, :cond_6b

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    if-ne v1, v7, :cond_6b

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    if-ne v7, v8, :cond_6b

    .line 1138
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v7

    .line 1139
    .local v7, "targetSdkVersion":I
    const/16 v8, 0x1c

    if-le v7, v8, :cond_6b

    .line 1140
    goto :goto_1e

    .line 1144
    .end local v7    # "targetSdkVersion":I
    :cond_6b
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-interface {p1, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1145
    .local v7, "match":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 1147
    .end local v7    # "match":Ljava/lang/String;
    :cond_7e
    goto :goto_1e

    .line 1156
    :cond_7f
    if-nez v1, :cond_8a

    .line 1157
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    return-object v3

    .line 1160
    :cond_8a
    if-eqz v4, :cond_92

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, p2, :cond_a1

    .line 1161
    :cond_92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_a1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1165
    .local v3, "resultSize":I
    if-nez p2, :cond_ba

    .line 1166
    :goto_a7
    if-lez v3, :cond_ba

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 1167
    add-int/lit8 v3, v3, -0x1

    goto :goto_a7

    .line 1168
    :cond_ba
    new-array v7, v3, [Ljava/lang/String;

    .line 1169
    .local v7, "result":[Ljava/lang/String;
    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public whitelist test-api splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5783
    new-instance v0, Ljava/util/regex/Pattern$1MatcherIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern$1MatcherIterator;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    const/16 v1, 0x110

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 968
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
