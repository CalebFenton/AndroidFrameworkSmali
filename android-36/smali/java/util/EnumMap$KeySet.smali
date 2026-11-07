.class Ljava/util/EnumMap$KeySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 390
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/EnumMap$KeySet;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 406
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 407
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 398
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 392
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/EnumMap$KeyIterator;

    iget-object v1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$KeyIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 401
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetsize(Ljava/util/EnumMap;)I

    move-result v0

    .line 402
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v1, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-$$Nest$fgetsize(Ljava/util/EnumMap;)I

    move-result v1

    if-eq v1, v0, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 395
    .local p0, "this":Ljava/util/EnumMap$KeySet;, "Ljava/util/EnumMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/EnumMap$KeySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetsize(Ljava/util/EnumMap;)I

    move-result v0

    return v0
.end method
