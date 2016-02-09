.class Ljava/lang/TwoEnumerationsInOne;
.super Ljava/lang/Object;
.source "ClassLoader.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private final first:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final second:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;Ljava/util/Enumeration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 736
    .local p1, "first":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .local p2, "second":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 737
    iput-object p1, p0, Ljava/lang/TwoEnumerationsInOne;->first:Ljava/util/Enumeration;

    #@5
    .line 738
    iput-object p2, p0, Ljava/lang/TwoEnumerationsInOne;->second:Ljava/util/Enumeration;

    #@7
    .line 736
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 743
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->first:Ljava/util/Enumeration;

    #@2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->second:Ljava/util/Enumeration;

    #@a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 747
    invoke-virtual {p0}, Ljava/lang/TwoEnumerationsInOne;->nextElement()Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 748
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->first:Ljava/util/Enumeration;

    #@2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 749
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->first:Ljava/util/Enumeration;

    #@a
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/net/URL;

    #@10
    return-object v0

    #@11
    .line 751
    :cond_0
    iget-object v0, p0, Ljava/lang/TwoEnumerationsInOne;->second:Ljava/util/Enumeration;

    #@13
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/net/URL;

    #@19
    return-object v0
.end method
