.class final synthetic Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;
.super Ljava/lang/Object;
.source "CharBuffer.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/CharBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_stream_IntStream_chars__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$self:Ljava/nio/CharBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/CharBuffer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;->val$self:Ljava/nio/CharBuffer;

    #@5
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    iget-object v0, p0, Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;->val$self:Ljava/nio/CharBuffer;

    #@2
    invoke-static {v0}, Ljava/nio/CharBuffer;->-java_nio_CharBuffer_lambda$1(Ljava/nio/CharBuffer;)Ljava/util/Spliterator$OfInt;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
