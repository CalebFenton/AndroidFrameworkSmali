.class final synthetic Ljava/util/stream/Collectors$-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl1;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_Collector_joining_java_lang_CharSequence_delimiter_java_lang_CharSequence_prefix_java_lang_CharSequence_suffix_LambdaImpl1"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    check-cast p1, Ljava/util/StringJoiner;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/CharSequence;

    #@4
    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors-mthref-8(Ljava/util/StringJoiner;Ljava/lang/CharSequence;)V

    #@7
    return-void
.end method
