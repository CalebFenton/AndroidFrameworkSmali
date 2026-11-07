.class Ljava/util/Hashtable$ValueCollection;
.super Ljava/util/AbstractCollection;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Hashtable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 788
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iput-object p1, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Hashtable;Ljava/util/Hashtable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/Hashtable$ValueCollection;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 799
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iget-object v0, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 800
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 796
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iget-object v0, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 790
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iget-object v0, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Hashtable;->-$$Nest$mgetIterator(Ljava/util/Hashtable;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 793
    .local p0, "this":Ljava/util/Hashtable$ValueCollection;, "Ljava/util/Hashtable<TK;TV;>.ValueCollection;"
    iget-object v0, p0, Ljava/util/Hashtable$ValueCollection;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-$$Nest$fgetcount(Ljava/util/Hashtable;)I

    move-result v0

    return v0
.end method
