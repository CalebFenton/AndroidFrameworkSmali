.class Ljava/io/ExpiringCache$1;
.super Ljava/util/LinkedHashMap;
.source "ExpiringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ExpiringCache;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/ExpiringCache;


# direct methods
.method constructor <init>(Ljava/io/ExpiringCache;)V
    .locals 0
    .param p1, "this$0"    # Ljava/io/ExpiringCache;

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Ljava/io/ExpiringCache$1;->this$0:Ljava/io/ExpiringCache;

    #@2
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    #@0
    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/ExpiringCache$1;->size()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Ljava/io/ExpiringCache$1;->this$0:Ljava/io/ExpiringCache;

    #@6
    invoke-static {v1}, Ljava/io/ExpiringCache;->-get0(Ljava/io/ExpiringCache;)I

    #@9
    move-result v1

    #@a
    if-le v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
