.class abstract Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CSLMSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final greylist-max-o comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field greylist-max-o current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field blacklist est:J

.field final greylist-max-o fence:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field greylist-max-o row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V
    .registers 7
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;TK;J)V"
        }
    .end annotation

    .line 3135
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3136
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3137
    iput-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    iput-wide p5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->est:J

    .line 3138
    return-void
.end method


# virtual methods
.method public final whitelist test-api estimateSize()J
    .registers 3

    .line 3140
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator<TK;TV;>;"
    iget-wide v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->est:J

    return-wide v0
.end method
