.class public Landroid/text/method/TranslationTransformationMethod;
.super Ljava/lang/Object;
.source "TranslationTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final blacklist PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationTransformationMethod"


# instance fields
.field private blacklist mAllowLengthChanges:Z

.field private blacklist mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

.field private final blacklist mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V
    .registers 3
    .param p1, "response"    # Landroid/view/translation/ViewTranslationResponse;
    .param p2, "method"    # Landroid/text/method/TransformationMethod;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    .line 55
    iput-object p2, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    .line 56
    return-void
.end method

.method private blacklist isWhitespace(Ljava/lang/String;)Z
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .line 109
    sget-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 75
    iget-boolean v0, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    if-nez v0, :cond_c

    .line 76
    const-string v0, "TranslationTransformationMethod"

    const-string v1, "Caller did not enable length changes; not transforming to translated text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object p1

    .line 79
    :cond_c
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    const-string v1, "android:text"

    invoke-virtual {v0, v1}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v0

    .line 82
    .local v0, "value":Landroid/view/translation/TranslationResponseValue;
    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getStatusCode()I

    move-result v1

    if-nez v1, :cond_1f

    .line 83
    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "translatedText":Ljava/lang/CharSequence;
    goto :goto_21

    .line 85
    .end local v1    # "translatedText":Ljava/lang/CharSequence;
    :cond_1f
    const-string v1, ""

    .line 88
    .restart local v1    # "translatedText":Ljava/lang/CharSequence;
    :goto_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/text/method/TranslationTransformationMethod;->isWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_33

    .line 92
    :cond_32
    return-object v1

    .line 89
    :cond_33
    :goto_33
    return-object p1
.end method

.method public blacklist getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    return-object v0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 101
    return-void
.end method

.method public blacklist setLengthChangesAllowed(Z)V
    .registers 2
    .param p1, "allowLengthChanges"    # Z

    .line 105
    iput-boolean p1, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    .line 106
    return-void
.end method
