.class final synthetic Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_function_Predicate_asPredicate__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;->val$this:Ljava/util/regex/Pattern;

    #@5
    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/regex/Pattern$-java_util_function_Predicate_asPredicate__LambdaImpl0;->val$this:Ljava/util/regex/Pattern;

    #@2
    check-cast p1, Ljava/lang/String;

    #@4
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->-java_util_regex_Pattern_lambda$1(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
