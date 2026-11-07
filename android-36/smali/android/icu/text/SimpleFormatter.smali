.class public final Landroid/icu/text/SimpleFormatter;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"


# instance fields
.field private final greylist-max-o compiledPattern:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "compiledPattern"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static greylist-max-o compile(Ljava/lang/CharSequence;)Landroid/icu/text/SimpleFormatter;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/CharSequence;

    .line 62
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p0, v0, v1}, Landroid/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Landroid/icu/text/SimpleFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o compileMinMaxArguments(Ljava/lang/CharSequence;II)Landroid/icu/text/SimpleFormatter;
    .registers 6
    .param p0, "pattern"    # Ljava/lang/CharSequence;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0, p1, p2}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "compiledPattern":Ljava/lang/String;
    new-instance v2, Landroid/icu/text/SimpleFormatter;

    invoke-direct {v2, v1}, Landroid/icu/text/SimpleFormatter;-><init>(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public varargs blacklist format([Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .line 93
    iget-object v0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist formatAndReplace(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    .line 132
    iget-object v0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getArgumentLimit()I
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getTextWithNoArguments()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/SimpleFormatterImpl;->getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 140
    invoke-virtual {p0}, Landroid/icu/text/SimpleFormatter;->getArgumentLimit()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 144
    .end local v1    # "i":I
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/icu/text/SimpleFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
