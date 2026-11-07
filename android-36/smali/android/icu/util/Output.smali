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
.field public whitelist test-api value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 33
    .local p0, "this":Landroid/icu/util/Output;, "Landroid/icu/util/Output<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Landroid/icu/util/Output;, "Landroid/icu/util/Output<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 27
    .local p0, "this":Landroid/icu/util/Output;, "Landroid/icu/util/Output<TT;>;"
    iget-object v0, p0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, "null"

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method
