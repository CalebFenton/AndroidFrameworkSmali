.class final Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakKey"
.end annotation


# instance fields
.field private final referenced:Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;


# direct methods
.method static synthetic -wrap0(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .locals 1

    #@0
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->getReferenced()Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;
    .param p3, "referenced"    # Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@0
    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 476
    iput-object p3, p0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->referenced:Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@5
    .line 474
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;
    .param p3, "referenced"    # Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V

    #@3
    return-void
.end method

.method private getReferenced()Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->referenced:Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@2
    return-object v0
.end method
