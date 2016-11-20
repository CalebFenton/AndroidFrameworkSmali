.class public interface abstract Ljava/util/function/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/function/Predicate$-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0;,
        Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl0;,
        Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl1;,
        Ljava/util/function/Predicate$-java_util_function_Predicate_negate__LambdaImpl0;,
        Ljava/util/function/Predicate$-java_util_function_Predicate_or_java_util_function_Predicate_other_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic -java_util_function_Predicate-mthref-0(Ljava/lang/Object;)Z
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static synthetic -java_util_function_Predicate_lambda$5(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "targetRef"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isEqual(Ljava/lang/Object;)Ljava/util/function/Predicate;
    .locals 1
    .param p0, "targetRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 115
    if-nez p0, :cond_0

    #@2
    .line 116
    new-instance v0, Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl0;

    #@4
    invoke-direct {v0}, Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl0;-><init>()V

    #@7
    .line 115
    :goto_0
    return-object v0

    #@8
    .line 117
    :cond_0
    new-instance v0, Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl1;

    #@a
    invoke-direct {v0, p0}, Ljava/util/function/Predicate$-java_util_function_Predicate_isEqual_java_lang_Object_targetRef_LambdaImpl1;-><init>(Ljava/lang/Object;)V

    #@d
    goto :goto_0
.end method


# virtual methods
.method public synthetic -java_util_function_Predicate_lambda$1(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/util/function/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public synthetic -java_util_function_Predicate_lambda$2(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public synthetic -java_util_function_Predicate_lambda$3(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/util/function/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 101
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 69
    new-instance v0, Ljava/util/function/Predicate$-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/Predicate$-java_util_function_Predicate_and_java_util_function_Predicate_other_LambdaImpl0;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    #@8
    return-object v0
.end method

.method public negate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    new-instance v0, Ljava/util/function/Predicate$-java_util_function_Predicate_negate__LambdaImpl0;

    #@2
    invoke-direct {v0, p0}, Ljava/util/function/Predicate$-java_util_function_Predicate_negate__LambdaImpl0;-><init>(Ljava/util/function/Predicate;)V

    #@5
    return-object v0
.end method

.method public or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/function/Predicate",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p1, "other":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 101
    new-instance v0, Ljava/util/function/Predicate$-java_util_function_Predicate_or_java_util_function_Predicate_other_LambdaImpl0;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/function/Predicate$-java_util_function_Predicate_or_java_util_function_Predicate_other_LambdaImpl0;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)V

    #@8
    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
