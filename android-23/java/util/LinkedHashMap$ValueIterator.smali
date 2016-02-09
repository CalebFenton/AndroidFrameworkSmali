.class final Ljava/util/LinkedHashMap$ValueIterator;
.super Ljava/util/LinkedHashMap$LinkedHashIterator;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>.",
        "LinkedHashIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 1

    #@0
    .prologue
    .line 369
    .local p0, "this":Ljava/util/LinkedHashMap$ValueIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.ValueIterator;"
    .local p1, "this$0":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$ValueIterator;->this$0:Ljava/util/LinkedHashMap;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$LinkedHashIterator;)V

    #@6
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$ValueIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$ValueIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$ValueIterator;-><init>(Ljava/util/LinkedHashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 370
    .local p0, "this":Ljava/util/LinkedHashMap$ValueIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$ValueIterator;->nextEntry()Ljava/util/LinkedHashMap$LinkedEntry;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->value:Ljava/lang/Object;

    #@6
    return-object v0
.end method
