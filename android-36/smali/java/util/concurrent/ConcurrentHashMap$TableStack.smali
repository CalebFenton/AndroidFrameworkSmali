.class final Ljava/util/concurrent/ConcurrentHashMap$TableStack;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TableStack"
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
.field greylist-max-o index:I

.field greylist-max-o length:I

.field greylist-max-o next:Ljava/util/concurrent/ConcurrentHashMap$TableStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TableStack<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 3314
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TableStack;, "Ljava/util/concurrent/ConcurrentHashMap$TableStack<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
