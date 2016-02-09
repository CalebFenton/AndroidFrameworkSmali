.class final Ljava/util/Hashtable$ValueIterator;
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
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    #@0
    .prologue
    .line 771
    .local p0, "this":Ljava/util/Hashtable$ValueIterator;, "Ljava/util/Hashtable<TK;TV;>.ValueIterator;"
    .local p1, "this$0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$ValueIterator;->this$0:Ljava/util/Hashtable;

    #@2
    invoke-direct {p0, p1}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;)V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$ValueIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .local p0, "this":Ljava/util/Hashtable$ValueIterator;, "Ljava/util/Hashtable<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$ValueIterator;-><init>(Ljava/util/Hashtable;)V

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
    .line 773
    .local p0, "this":Ljava/util/Hashtable$ValueIterator;, "Ljava/util/Hashtable<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/Hashtable$ValueIterator;->nextEntry()Ljava/util/Hashtable$HashtableEntry;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    #@6
    return-object v0
.end method
