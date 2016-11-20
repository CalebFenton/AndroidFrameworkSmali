.class public final Ljava/util/regex/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;
    }
.end annotation


# static fields
.field public static final CANON_EQ:I = 0x80

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final COMMENTS:I = 0x4

.field public static final DOTALL:I = 0x20

.field private static final FASTSPLIT_METACHARACTERS:Ljava/lang/String; = "\\?*+[](){}^$.|"

.field public static final LITERAL:I = 0x10

.field public static final MULTILINE:I = 0x8

.field public static final UNICODE_CASE:I = 0x40

.field public static final UNICODE_CHARACTER_CLASS:I = 0x100

.field public static final UNIX_LINES:I = 0x1

.field private static final registry:Llibcore/util/NativeAllocationRegistry;

.field private static final serialVersionUID:J = 0x4667d56b6e49020dL


# instance fields
.field transient address:J

.field private final flags:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 932
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    #@2
    .line 933
    const-class v1, Ljava/util/regex/Pattern;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {}, Ljava/util/regex/Pattern;->getNativeFinalizer()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {}, Ljava/util/regex/Pattern;->nativeSize()I

    #@f
    move-result v4

    #@10
    int-to-long v4, v4

    #@11
    .line 932
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    #@14
    sput-object v0, Ljava/util/regex/Pattern;->registry:Llibcore/util/NativeAllocationRegistry;

    #@16
    .line 766
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "f"    # I

    #@0
    .prologue
    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1315
    and-int/lit16 v1, p2, 0x80

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1316
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@9
    const-string/jumbo v2, "CANON_EQ flag not supported"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 1318
    :cond_0
    const/16 v0, 0x7f

    #@12
    .line 1319
    .local v0, "supportedFlags":I
    not-int v1, v0

    #@13
    and-int/2addr v1, p2

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 1320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Unsupported flags: "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    not-int v3, v0

    #@25
    and-int/2addr v3, p2

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1

    #@32
    .line 1322
    :cond_1
    iput-object p1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@34
    .line 1323
    iput p2, p0, Ljava/util/regex/Pattern;->flags:I

    #@36
    .line 1324
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    #@39
    .line 1314
    return-void
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p0, "regex"    # Ljava/lang/String;

    #@0
    .prologue
    .line 946
    new-instance v0, Ljava/util/regex/Pattern;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    #@6
    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 971
    new-instance v0, Ljava/util/regex/Pattern;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    #@5
    return-object v0
.end method

.method private compile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 1328
    iget-object v2, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 1329
    new-instance v2, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v3, "pattern == null"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 1332
    :cond_0
    iget-object v1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@f
    .line 1333
    .local v1, "icuPattern":Ljava/lang/String;
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    #@11
    and-int/lit8 v2, v2, 0x10

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 1334
    iget-object v2, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@17
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1339
    :cond_1
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    #@1d
    and-int/lit8 v0, v2, 0x2f

    #@1f
    .line 1340
    .local v0, "icuFlags":I
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compileImpl(Ljava/lang/String;I)J

    #@22
    move-result-wide v2

    #@23
    iput-wide v2, p0, Ljava/util/regex/Pattern;->address:J

    #@25
    .line 1341
    sget-object v2, Ljava/util/regex/Pattern;->registry:Llibcore/util/NativeAllocationRegistry;

    #@27
    iget-wide v4, p0, Ljava/util/regex/Pattern;->address:J

    #@29
    invoke-virtual {v2, p0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@2c
    .line 1327
    return-void
.end method

.method private static native compileImpl(Ljava/lang/String;I)J
.end method

.method public static fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 13
    .param p0, "re"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v9, -0x1

    #@3
    const/4 v10, 0x0

    #@4
    .line 1169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v5

    #@8
    .line 1170
    .local v5, "len":I
    if-nez v5, :cond_0

    #@a
    .line 1171
    return-object v12

    #@b
    .line 1173
    :cond_0
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    .line 1174
    .local v1, "ch":C
    if-ne v5, v11, :cond_2

    #@11
    const-string/jumbo v8, "\\?*+[](){}^$.|"

    #@14
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v8

    #@18
    if-ne v8, v9, :cond_2

    #@1a
    .line 1191
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_4

    #@20
    .line 1192
    new-array v8, v11, [Ljava/lang/String;

    #@22
    const-string/jumbo v9, ""

    #@25
    aput-object v9, v8, v10

    #@27
    return-object v8

    #@28
    .line 1176
    :cond_2
    const/4 v8, 0x2

    #@29
    if-ne v5, v8, :cond_3

    #@2b
    const/16 v8, 0x5c

    #@2d
    if-ne v1, v8, :cond_3

    #@2f
    .line 1179
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v1

    #@33
    .line 1180
    const-string/jumbo v8, "\\?*+[](){}^$.|"

    #@36
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    #@39
    move-result v8

    #@3a
    if-ne v8, v9, :cond_1

    #@3c
    .line 1181
    return-object v12

    #@3d
    .line 1184
    :cond_3
    return-object v12

    #@3e
    .line 1196
    :cond_4
    const/4 v7, 0x0

    #@3f
    .line 1197
    .local v7, "separatorCount":I
    const/4 v0, 0x0

    #@40
    .line 1199
    .local v0, "begin":I
    :goto_0
    add-int/lit8 v8, v7, 0x1

    #@42
    if-eq v8, p2, :cond_5

    #@44
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@47
    move-result v2

    #@48
    .local v2, "end":I
    if-eq v2, v9, :cond_5

    #@4a
    .line 1200
    add-int/lit8 v7, v7, 0x1

    #@4c
    .line 1201
    add-int/lit8 v0, v2, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1203
    .end local v2    # "end":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@52
    move-result v4

    #@53
    .line 1204
    .local v4, "lastPartEnd":I
    if-nez p2, :cond_7

    #@55
    if-ne v0, v4, :cond_7

    #@57
    .line 1206
    if-ne v7, v4, :cond_6

    #@59
    .line 1208
    sget-object v8, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@5b
    return-object v8

    #@5c
    .line 1212
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@5e
    .line 1213
    add-int/lit8 v8, v0, -0x1

    #@60
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@63
    move-result v8

    #@64
    if-eq v8, v1, :cond_6

    #@66
    .line 1215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@69
    move-result v8

    #@6a
    sub-int/2addr v8, v0

    #@6b
    sub-int/2addr v7, v8

    #@6c
    .line 1216
    move v4, v0

    #@6d
    .line 1220
    :cond_7
    add-int/lit8 v8, v7, 0x1

    #@6f
    new-array v6, v8, [Ljava/lang/String;

    #@71
    .line 1221
    .local v6, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    #@72
    .line 1222
    const/4 v3, 0x0

    #@73
    .local v3, "i":I
    :goto_1
    if-eq v3, v7, :cond_8

    #@75
    .line 1223
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    #@78
    move-result v2

    #@79
    .line 1224
    .restart local v2    # "end":I
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    aput-object v8, v6, v3

    #@7f
    .line 1225
    add-int/lit8 v0, v2, 0x1

    #@81
    .line 1222
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_1

    #@84
    .line 1228
    .end local v2    # "end":I
    :cond_8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    aput-object v8, v6, v7

    #@8a
    .line 1229
    return-object v6
.end method

.method private static native getNativeFinalizer()J
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1046
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v1

    #@4
    .line 1047
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v0

    #@8
    .line 1048
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@b
    move-result v2

    #@c
    return v2
.end method

.method private static native nativeSize()I
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1279
    const-string/jumbo v3, "\\E"

    #@4
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 1280
    .local v2, "slashEIndex":I
    if-ne v2, v4, :cond_0

    #@a
    .line 1281
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "\\Q"

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, "\\E"

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    return-object v3

    #@26
    .line 1283
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2b
    move-result v3

    #@2c
    mul-int/lit8 v3, v3, 0x2

    #@2e
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@31
    .line 1284
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\\Q"

    #@34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 1285
    const/4 v2, 0x0

    #@38
    .line 1286
    const/4 v0, 0x0

    #@39
    .line 1287
    .local v0, "current":I
    :goto_0
    const-string/jumbo v3, "\\E"

    #@3c
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@3f
    move-result v2

    #@40
    if-eq v2, v4, :cond_1

    #@42
    .line 1288
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 1289
    add-int/lit8 v0, v2, 0x2

    #@4b
    .line 1290
    const-string/jumbo v3, "\\E\\\\E\\Q"

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    goto :goto_0

    #@52
    .line 1292
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@55
    move-result v3

    #@56
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    .line 1293
    const-string/jumbo v3, "\\E"

    #@60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 1294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1305
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1306
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    #@6
    .line 1302
    return-void
.end method


# virtual methods
.method synthetic -java_util_regex_Pattern_lambda$1(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1355
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public asPredicate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1355
    new-instance v0, Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;

    #@2
    invoke-direct {v0, p0}, Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;-><init>(Ljava/util/regex/Pattern;)V

    #@5
    return-object v0
.end method

.method public flags()I
    .locals 1

    #@0
    .prologue
    .line 1016
    iget v0, p0, Ljava/util/regex/Pattern;->flags:I

    #@2
    return v0
.end method

.method public matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1006
    new-instance v0, Ljava/util/regex/Matcher;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    #@5
    .line 1007
    .local v0, "m":Ljava/util/regex/Matcher;
    return-object v0
.end method

.method public pattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 981
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1261
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 11
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1112
    iget-object v8, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@6
    move-result-object v9

    #@7
    invoke-static {v8, v9, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 1113
    .local v0, "fast":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@d
    .line 1114
    return-object v0

    #@e
    .line 1117
    :cond_0
    const/4 v1, 0x0

    #@f
    .line 1118
    .local v1, "index":I
    if-lez p2, :cond_3

    #@11
    const/4 v4, 0x1

    #@12
    .line 1119
    .local v4, "matchLimited":Z
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    #@14
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 1120
    .local v5, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1a
    move-result-object v2

    #@1b
    .line 1123
    .local v2, "m":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_5

    #@21
    .line 1124
    if-eqz v4, :cond_2

    #@23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v8

    #@27
    add-int/lit8 v9, p2, -0x1

    #@29
    if-ge v8, v9, :cond_4

    #@2b
    .line 1125
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@2e
    move-result v8

    #@2f
    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@32
    move-result-object v8

    #@33
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 1126
    .local v3, "match":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    .line 1127
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    #@3d
    move-result v1

    #@3e
    goto :goto_1

    #@3f
    .line 1118
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "match":Ljava/lang/String;
    .end local v4    # "matchLimited":Z
    .end local v5    # "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v4, 0x0

    #@40
    .restart local v4    # "matchLimited":Z
    goto :goto_0

    #@41
    .line 1128
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v5    # "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@44
    move-result v8

    #@45
    add-int/lit8 v9, p2, -0x1

    #@47
    if-ne v8, v9, :cond_1

    #@49
    .line 1130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4c
    move-result v8

    #@4d
    .line 1129
    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@50
    move-result-object v8

    #@51
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 1131
    .restart local v3    # "match":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 1132
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    #@5b
    move-result v1

    #@5c
    goto :goto_1

    #@5d
    .line 1137
    .end local v3    # "match":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_6

    #@5f
    .line 1138
    const/4 v8, 0x1

    #@60
    new-array v8, v8, [Ljava/lang/String;

    #@62
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    aput-object v9, v8, v10

    #@68
    return-object v8

    #@69
    .line 1141
    :cond_6
    if-eqz v4, :cond_7

    #@6b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v8

    #@6f
    if-ge v8, p2, :cond_8

    #@71
    .line 1142
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@74
    move-result v8

    #@75
    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@78
    move-result-object v8

    #@79
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@80
    .line 1145
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@83
    move-result v7

    #@84
    .line 1146
    .local v7, "resultSize":I
    if-nez p2, :cond_9

    #@86
    .line 1147
    :goto_2
    if-lez v7, :cond_9

    #@88
    add-int/lit8 v8, v7, -0x1

    #@8a
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8d
    move-result-object v8

    #@8e
    check-cast v8, Ljava/lang/String;

    #@90
    const-string/jumbo v9, ""

    #@93
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v8

    #@97
    if-eqz v8, :cond_9

    #@99
    .line 1148
    add-int/lit8 v7, v7, -0x1

    #@9b
    goto :goto_2

    #@9c
    .line 1149
    :cond_9
    new-array v6, v7, [Ljava/lang/String;

    #@9e
    .line 1150
    .local v6, "result":[Ljava/lang/String;
    invoke-virtual {v5, v10, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@a1
    move-result-object v8

    #@a2
    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a5
    move-result-object v8

    #@a6
    check-cast v8, [Ljava/lang/String;

    #@a8
    return-object v8
.end method

.method public splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1453
    new-instance v0, Ljava/util/regex/Pattern$1MatcherIterator;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern$1MatcherIterator;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    #@5
    const/16 v1, 0x110

    #@7
    .line 1452
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    #@a
    move-result-object v0

    #@b
    .line 1453
    const/4 v1, 0x0

    #@c
    .line 1452
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 993
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
