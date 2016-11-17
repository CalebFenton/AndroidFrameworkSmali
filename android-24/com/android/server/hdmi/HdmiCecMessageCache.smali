.class final Lcom/android/server/hdmi/HdmiCecMessageCache;
.super Ljava/lang/Object;
.source "HdmiCecMessageCache.java"


# static fields
.field private static final CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 31
    new-instance v0, Landroid/util/FastImmutableArraySet;

    #@2
    const/4 v1, 0x4

    #@3
    new-array v1, v1, [Ljava/lang/Integer;

    #@5
    .line 32
    const/16 v2, 0x47

    #@7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v2

    #@b
    const/4 v3, 0x0

    #@c
    aput-object v2, v1, v3

    #@e
    .line 33
    const/16 v2, 0x84

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x1

    #@15
    aput-object v2, v1, v3

    #@17
    .line 34
    const/16 v2, 0x87

    #@19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x2

    #@1e
    aput-object v2, v1, v3

    #@20
    .line 35
    const/16 v2, 0x9e

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    const/4 v3, 0x3

    #@27
    aput-object v2, v1, v3

    #@29
    .line 31
    invoke-direct {v0, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    #@2c
    .line 30
    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;

    #@2e
    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    #@a
    .line 41
    return-void
.end method

.method private isCacheable(I)Z
    .locals 2
    .param p1, "opcode"    # I

    #@0
    .prologue
    .line 100
    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method


# virtual methods
.method public cacheMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@3
    move-result v1

    #@4
    .line 86
    .local v1, "opcode":I
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageCache;->isCacheable(I)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 87
    return-void

    #@b
    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@e
    move-result v2

    #@f
    .line 91
    .local v2, "source":I
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/util/SparseArray;

    #@17
    .line 92
    .local v0, "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    if-nez v0, :cond_1

    #@19
    .line 93
    new-instance v0, Landroid/util/SparseArray;

    #@1b
    .end local v0    # "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1e
    .line 94
    .restart local v0    # "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    #@20
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@23
    .line 96
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@26
    .line 84
    return-void
.end method

.method public flushAll()V
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@5
    .line 74
    return-void
.end method

.method public flushMessagesFrom(I)V
    .locals 1
    .param p1, "address"    # I

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@5
    .line 67
    return-void
.end method

.method public getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3
    .param p1, "address"    # I
    .param p2, "opcode"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 54
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/util/SparseArray;

    #@9
    .line 55
    .local v0, "messages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    if-nez v0, :cond_0

    #@b
    .line 56
    return-object v2

    #@c
    .line 59
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    #@12
    return-object v1
.end method
