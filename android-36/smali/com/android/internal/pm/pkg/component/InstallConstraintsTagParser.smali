.class public Lcom/android/internal/pm/pkg/component/InstallConstraintsTagParser;
.super Ljava/lang/Object;
.source "InstallConstraintsTagParser.java"


# static fields
.field private static final blacklist TAG_FINGERPRINT_PREFIX:Ljava/lang/String; = "fingerprint-prefix"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseFingerprintPrefixes(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 77
    .local v0, "prefixes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    :goto_5
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 78
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    .line 79
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_19

    .line 80
    const-string v2, "install-constraints must contain at least one constraint"

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 82
    :cond_19
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 83
    :cond_1e
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 84
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 85
    goto :goto_5

    .line 87
    :cond_2c
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fingerprint-prefix"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 88
    nop

    .line 89
    invoke-static {p0, p2, p3}, Lcom/android/internal/pm/pkg/component/InstallConstraintsTagParser;->readFingerprintPrefixValue(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 90
    .local v3, "parsedPrefix":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 91
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v3    # "parsedPrefix":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    nop

    .line 100
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 101
    if-eq v1, v2, :cond_5

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected end tag; instead got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 93
    .restart local v3    # "parsedPrefix":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    :cond_6b
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 96
    .end local v3    # "parsedPrefix":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/String;>;"
    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist parseInstallConstraints(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    .local p4, "allowlist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 54
    const-string v0, "install-constraints cannot be used by this package"

    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 57
    :cond_11
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/component/InstallConstraintsTagParser;->parseFingerprintPrefixes(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 58
    .local v0, "prefixes":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 59
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lcom/android/internal/pm/pkg/component/InstallConstraintsTagParser;->validateFingerprintPrefixes(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 60
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 62
    :cond_2c
    const-string v1, "Install of this package is restricted on this device; device fingerprint does not start with one of the allowed prefixes"

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 67
    :cond_33
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist readFingerprintPrefixValue(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstallConstraintsFingerprintPrefix:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 116
    const-string v2, "Failed to specify prefix value"

    invoke-interface {p0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-object v2

    .line 118
    :cond_17
    :try_start_17
    invoke-interface {p0, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    return-object v2

    .line 120
    .end local v1    # "value":Ljava/lang/String;
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    throw v1
.end method

.method private static blacklist validateFingerprintPrefixes(Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 125
    .local p0, "prefixes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 126
    .local v0, "fingerprint":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 128
    const/4 v1, 0x1

    return v1

    .line 130
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1a
    goto :goto_6

    .line 131
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method
