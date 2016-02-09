.class final Ljava/util/Hashtable$EntryIterator;
.super Ljava/util/Hashtable$HashIterator;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    #@0
    .prologue
    .line 776
    .local p0, "this":Ljava/util/Hashtable$EntryIterator;, "Ljava/util/Hashtable<TK;TV;>.EntryIterator;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$EntryIterator;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-direct {p0, p1}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;)V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$EntryIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$EntryIterator;, "Ljava/util/Hashtable<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntryIterator;-><init>(Ljava/util/Hashtable;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 778
    .local p0, "this":Ljava/util/Hashtable$EntryIterator;, "Ljava/util/Hashtable<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/Hashtable$EntryIterator;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 778
    .local p0, "this":Ljava/util/Hashtable$EntryIterator;, "Ljava/util/Hashtable<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/Hashtable$EntryIterator;->nextEntry()Ljava/util/Hashtable$HashtableEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
