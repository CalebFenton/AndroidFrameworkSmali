.class final synthetic Ljava/util/Collections$CheckedMap$-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$CheckedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$remappingFunction:Ljava/util/function/BiFunction;

.field private synthetic val$this:Ljava/util/Collections$CheckedMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collections$CheckedMap;Ljava/util/function/BiFunction;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0;->val$this:Ljava/util/Collections$CheckedMap;

    #@5
    iput-object p2, p0, Ljava/util/Collections$CheckedMap$-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0;->val$remappingFunction:Ljava/util/function/BiFunction;

    #@7
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0;->val$this:Ljava/util/Collections$CheckedMap;

    #@2
    iget-object v1, p0, Ljava/util/Collections$CheckedMap$-java_lang_Object_merge_java_lang_Object_key_java_lang_Object_value_java_util_function_BiFunction_remappingFunction_LambdaImpl0;->val$remappingFunction:Ljava/util/function/BiFunction;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Collections$CheckedMap;->-java_util_Collections$CheckedMap_lambda$5(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
