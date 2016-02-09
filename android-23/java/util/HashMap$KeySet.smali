.class final Ljava/util/HashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    #@0
    .prologue
    .line 892
    .local p0, "this":Ljava/util/HashMap$KeySet;, "Ljava/util/HashMap<TK;TV;>.KeySet;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$KeySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/HashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$KeySet;, "Ljava/util/HashMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 911
    .local p0, "this":Ljava/util/HashMap$KeySet;, "Ljava/util/HashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 910
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 903
    .local p0, "this":Ljava/util/HashMap$KeySet;, "Ljava/util/HashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$KeySet;, "Ljava/util/HashMap<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    #@1
    .line 900
    iget-object v1, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@3
    iget v1, v1, Ljava/util/HashMap;->size:I

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 894
    .local p0, "this":Ljava/util/HashMap$KeySet;, "Ljava/util/HashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->newKeyIterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 906
    .local p0, "this":Ljava/util/HashMap$KeySet;, "Ljava/util/HashMap<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@2
    iget v0, v1, Ljava/util/HashMap;->size:I

    #@4
    .line 907
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 908
    iget-object v1, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@b
    iget v1, v1, Ljava/util/HashMap;->size:I

    #@d
    if-eq v1, v0, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 897
    .local p0, "this":Ljava/util/HashMap$KeySet;, "Ljava/util/HashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/HashMap$KeySet;->this$0:Ljava/util/HashMap;

    #@2
    iget v0, v0, Ljava/util/HashMap;->size:I

    #@4
    return v0
.end method
