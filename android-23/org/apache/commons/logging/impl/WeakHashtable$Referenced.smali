.class final Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
.super Ljava/lang/Object;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Referenced"
.end annotation


# instance fields
.field private final hashCode:I

.field private final reference:Ljava/lang/ref/WeakReference;


# direct methods
.method static synthetic -wrap0(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;
    .locals 1

    #@0
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "referant"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 405
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    #@a
    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    #@10
    .line 404
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    #@0
    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 416
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p1, p2, p0, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)V

    #@9
    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    #@b
    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    #@11
    .line 415
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)V
    .locals 0
    .param p1, "referant"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method private getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 432
    const/4 v2, 0x0

    #@1
    .line 433
    .local v2, "result":Z
    instance-of v4, p1, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@3
    if-eqz v4, :cond_0

    #@5
    move-object v0, p1

    #@6
    .line 434
    check-cast v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    #@8
    .line 435
    .local v0, "otherKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    .line 436
    .local v3, "thisKeyValue":Ljava/lang/Object;
    invoke-direct {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    .line 437
    .local v1, "otherKeyValue":Ljava/lang/Object;
    if-nez v3, :cond_3

    #@12
    .line 438
    if-nez v1, :cond_1

    #@14
    const/4 v2, 0x1

    #@15
    .line 446
    :goto_0
    if-eqz v2, :cond_0

    #@17
    .line 447
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    #@1a
    move-result v4

    #@1b
    invoke-virtual {v0}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    #@1e
    move-result v5

    #@1f
    if-ne v4, v5, :cond_2

    #@21
    const/4 v2, 0x1

    #@22
    .line 459
    .end local v0    # "otherKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v1    # "otherKeyValue":Ljava/lang/Object;
    .end local v2    # "result":Z
    .end local v3    # "thisKeyValue":Ljava/lang/Object;
    :cond_0
    :goto_1
    return v2

    #@23
    .line 438
    .restart local v0    # "otherKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .restart local v1    # "otherKeyValue":Ljava/lang/Object;
    .restart local v2    # "result":Z
    .restart local v3    # "thisKeyValue":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    #@24
    goto :goto_0

    #@25
    .line 447
    :cond_2
    const/4 v2, 0x0

    #@26
    goto :goto_1

    #@27
    .line 456
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    .local v2, "result":Z
    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 424
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    #@2
    return v0
.end method
