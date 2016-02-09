.class final Ljava/util/HashMap$Values;
.super Ljava/util/AbstractCollection;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    #@0
    .prologue
    .line 915
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$Values;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/HashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 929
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 928
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 926
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    const/4 v0, 0x0

    #@1
    .line 923
    iget-object v1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

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
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 917
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->newValueIterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 920
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    #@2
    iget v0, v0, Ljava/util/HashMap;->size:I

    #@4
    return v0
.end method
