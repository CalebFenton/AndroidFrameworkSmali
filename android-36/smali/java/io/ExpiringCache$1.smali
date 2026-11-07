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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/io/ExpiringCache$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/io/ExpiringCache;


# direct methods
.method constructor blacklist <init>(Ljava/io/ExpiringCache;)V
    .registers 2
    .param p1, "this$0"    # Ljava/io/ExpiringCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Ljava/io/ExpiringCache$1;->this$0:Ljava/io/ExpiringCache;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/io/ExpiringCache$Entry;",
            ">;)Z"
        }
    .end annotation

    .line 74
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/ExpiringCache$Entry;>;"
    invoke-virtual {p0}, Ljava/io/ExpiringCache$1;->size()I

    move-result v0

    iget-object v1, p0, Ljava/io/ExpiringCache$1;->this$0:Ljava/io/ExpiringCache;

    invoke-static {v1}, Ljava/io/ExpiringCache;->-$$Nest$fgetMAX_ENTRIES(Ljava/io/ExpiringCache;)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
