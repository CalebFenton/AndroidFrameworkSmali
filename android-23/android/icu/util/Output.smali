.class public Landroid/icu/util/Output;
.super Ljava/lang/Object;
.source "Output.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    .local p0, "this":Landroid/icu/util/Output;, "Landroid/icu/util/Output<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p0, "this":Landroid/icu/util/Output;, "Landroid/icu/util/Output<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@5
    .line 42
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 26
    .local p0, "this":Landroid/icu/util/Output;, "Landroid/icu/util/Output<TT;>;"
    iget-object v0, p0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, "null"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method
