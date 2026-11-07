.class Ljava/util/prefs/XmlSupport$NodeListAdapter;
.super Ljava/lang/Object;
.source "XmlSupport.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/XmlSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NodeListAdapter"
.end annotation


# instance fields
.field private final blacklist delegate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "delegate":Ljava/util/List;, "Ljava/util/List<+Lorg/w3c/dom/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ljava/util/prefs/XmlSupport$NodeListAdapter;->delegate:Ljava/util/List;

    .line 304
    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 2

    .line 312
    iget-object v0, p0, Ljava/util/prefs/XmlSupport$NodeListAdapter;->delegate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "index"    # I

    .line 307
    if-ltz p1, :cond_14

    iget-object v0, p0, Ljava/util/prefs/XmlSupport$NodeListAdapter;->delegate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    .line 310
    :cond_b
    iget-object v0, p0, Ljava/util/prefs/XmlSupport$NodeListAdapter;->delegate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    .line 308
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method
