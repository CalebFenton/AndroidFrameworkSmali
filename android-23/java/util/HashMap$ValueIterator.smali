.class final Ljava/util/HashMap$ValueIterator;
.super Ljava/util/HashMap$HashIterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
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
    .line 817
    .local p0, "this":Ljava/util/HashMap$ValueIterator;, "Ljava/util/HashMap<TK;TV;>.ValueIterator;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$ValueIterator;->this$0:Ljava/util/HashMap;

    #@2
    invoke-direct {p0, p1}, Ljava/util/HashMap$HashIterator;-><init>(Ljava/util/HashMap;)V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$ValueIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/HashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HashMap$ValueIterator;, "Ljava/util/HashMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 819
    .local p0, "this":Ljava/util/HashMap$ValueIterator;, "Ljava/util/HashMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$ValueIterator;->nextEntry()Ljava/util/HashMap$HashMapEntry;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    #@6
    return-object v0
.end method
