.class final synthetic Ljava/lang/CharSequence$-java_util_stream_IntStream_chars__LambdaImpl0;
.super Ljava/lang/Object;
.source "CharSequence.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_IntStream_chars__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/lang/CharSequence$-java_util_stream_IntStream_chars__LambdaImpl0;->val$this:Ljava/lang/CharSequence;

    #@5
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    iget-object v0, p0, Ljava/lang/CharSequence$-java_util_stream_IntStream_chars__LambdaImpl0;->val$this:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0}, Ljava/lang/CharSequence;->-java_lang_CharSequence_lambda$1()Ljava/util/Spliterator$OfInt;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
