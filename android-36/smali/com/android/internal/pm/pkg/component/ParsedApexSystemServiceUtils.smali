.class public Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceUtils;
.super Ljava/lang/Object;
.source "ParsedApexSystemServiceUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;-><init>()V

    .line 41
    .local v0, "systemService":Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;
    sget-object v1, Landroid/R$styleable;->AndroidManifestApexSystemService:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 47
    const-string v2, "<apex-system-service> does not have name attribute"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_54

    .line 69
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-object v2

    .line 50
    :cond_20
    const/4 v4, 0x2

    :try_start_21
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "jarPath":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "minSdkVersion":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "maxSdkVersion":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 58
    .local v2, "initOrder":I
    invoke-virtual {v0, v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    move-result-object v7

    .line 59
    invoke-virtual {v7, v5}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setMinSdkVersion(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    move-result-object v7

    .line 60
    invoke-virtual {v7, v6}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setMaxSdkVersion(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    move-result-object v7

    .line 61
    invoke-virtual {v7, v2}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setInitOrder(I)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    .line 63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4c

    .line 64
    invoke-virtual {v0, v4}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setJarPath(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    .line 67
    :cond_4c
    invoke-interface {p2, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_54

    .line 69
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-object v7

    .line 69
    .end local v2    # "initOrder":I
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "jarPath":Ljava/lang/String;
    .end local v5    # "minSdkVersion":Ljava/lang/String;
    .end local v6    # "maxSdkVersion":Ljava/lang/String;
    :catchall_54
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    throw v2
.end method
