.class final Ljava/util/stream/Stream$1;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Stream;->iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$f:Ljava/util/function/UnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)V
    .locals 1

    #@0
    .prologue
    .line 1019
    .local p1, "val$seed":Ljava/lang/Object;, "TT;"
    .local p2, "val$f":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    iput-object p1, p0, Ljava/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    #@2
    iput-object p2, p0, Ljava/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1021
    sget-object v0, Ljava/util/stream/Streams;->NONE:Ljava/lang/Object;

    #@9
    iput-object v0, p0, Ljava/util/stream/Stream$1;->t:Ljava/lang/Object;

    #@b
    .line 1019
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1025
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 1030
    iget-object v0, p0, Ljava/util/stream/Stream$1;->t:Ljava/lang/Object;

    #@2
    sget-object v1, Ljava/util/stream/Streams;->NONE:Ljava/lang/Object;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    #@8
    :goto_0
    iput-object v0, p0, Ljava/util/stream/Stream$1;->t:Ljava/lang/Object;

    #@a
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    #@d
    iget-object v1, p0, Ljava/util/stream/Stream$1;->t:Ljava/lang/Object;

    #@f
    invoke-interface {v0, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method
