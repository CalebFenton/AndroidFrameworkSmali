.class final Ljava/util/concurrent/ConcurrentSkipListMap$Node;
.super Ljava/lang/Object;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
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
.field final greylist-max-o key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field greylist-max-o next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field blacklist val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentSkipListMap$Node;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 364
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "next":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 366
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    .line 367
    iput-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 368
    return-void
.end method
